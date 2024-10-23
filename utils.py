import math
import time
import ollama
import requests
import concurrent.futures
from tqdm import tqdm


messages = []


def get_available_models(api_url: str = "http://localhost:11434/api/tags") -> list[str]:
    """Returns list of available (downloaded) models"""
    try:
        response = requests.get(api_url)
        response.raise_for_status()
        data = response.json()

        return [model_data.get("name") for model_data in data.get("models", [])]

    except requests.exceptions.RequestException:
        log("ERROR fetching model data")
        return []


def is_model_loaded(model: str) -> bool:
    model_name = model if ':' in model else f"{model}:latest"
    return  model in get_available_models()


def load_model(model: str) -> bool:
    """Checks if a model is loaded and pulls it otherwise"""
    model_name = model if ':' in model else f"{model}:latest"

    if is_model_loaded(model_name):
        return True

    else:
        try:
            pull_response = ollama.pull(model_name, stream=True)

            # Initialize tqdm with a custom format
            progress_bar = tqdm(total=100, ncols=120, bar_format='{l_bar}{bar}| [{elapsed}<{remaining}, {rate_fmt}]')

            previous_percent = -1
            for progress in pull_response:
                # Check if 'completed' and 'total' are available in the response
                completed = progress.get('completed', None)
                total = progress.get('total', None)

                # If both values are available, update the progress bar and description
                if completed is not None and total is not None:
                    # Calculate the progress percentage
                    progress_percent = math.floor(completed / total * 100)
                    # Update progress bar
                    progress_bar.n = progress_percent
                    progress_bar.refresh()
                    progress_bar.set_description(f"Pulling {model_name} [{completed}/{total}]")

                # If 'completed' and 'total' are missing, keep the initial description
                else:
                    progress_bar.set_description(f"Pulling {model_name} (Initializing...)")

            progress_bar.close()

            log(f"Waiting for {model_name} to be fully loaded...")
            while True:
                # Fetch the updated model list
                if is_model_loaded(model):
                    log(f"{model_name} is now loaded.")
                    return True

                # Wait before polling again
                time.sleep(3)

        except Exception as e:
            log(f"ERROR while pulling {model_name}: {e}")
            return False


def delete_history() -> None:
    """Starts a new chat"""
    global messages
    messages = []


def prompt_model(model: str, prompt: str, timeout: int = 900) -> str:
    """Prompts the model, continuing the previous conversation. Requires running 'ollama serve' first"""
    messages.append(
        {
            'role': 'user',
            'content': prompt,
        },
    )

    def chat_with_model():
        return ollama.chat(model=model, messages=messages)['message']['content']

    with concurrent.futures.ThreadPoolExecutor() as executor:
        future = executor.submit(chat_with_model)
        try:
            response = future.result(timeout=timeout)
        except concurrent.futures.TimeoutError:
            raise TimeoutError(f"The chat model took longer than {timeout} seconds to respond")

    messages.append(
        {
            'role': 'assistant',
            'content': response,
        }
    )

    return response


logfile: str | None = None


def set_logfile(new_logfile: str):
    global logfile
    logfile = new_logfile


def log(text: str, end: str = '\n'):
    if logfile:
        with open(logfile, 'a+', encoding='utf-8') as f:
            f.write(text)
            f.write(end)
    else:
        try:
            print(text)
        except Exception:
            pass