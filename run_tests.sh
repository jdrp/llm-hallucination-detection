#!/bin/bash

# Create and activate a virtual environment (if it doesn't exist)
if [ ! -d ".venv" ]; then
    python3 -m venv .venv
fi
source .venv/bin/activate

# Install dependencies
pip install -r requirements.txt


# Add the directory containing the 'detection' module to the Python path
export PYTHONPATH="$PYTHONPATH:$(pwd)"

echo "PYTHONPATH: $PYTHONPATH"


# :::::::::::::::::: BCV and BCV-CoT :::::::::::::::::

# MEDQUAD, MEDICAL, COT
# python3 -m detection.bcv_sca --data data/medquad_regen_test.json --model llama3 --times 5 --prompt prompts/detection/bcvcot_medical.prompt --outfile results/medquad_medical_cot_llama3.json --logfile logs/medquad_medical_cot_llama3.log
# python3 -m detection.bcv_sca --data data/medquad_regen_test.json --model llama3.1 --times 5 --prompt prompts/detection/bcvcot_medical.prompt --outfile results/medquad_medical_cot_llama3.1.json --logfile logs/medquad_medical_cot_llama3.1.log
# python3 -m detection.bcv_sca --data data/medquad_regen_test.json --model llama3.2 --times 5 --prompt prompts/detection/bcvcot_medical.prompt --outfile results/medquad_medical_cot_llama3.2.json --logfile logs/medquad_medical_cot_llama3.2.log
# python3 -m detection.bcv_sca --data data/medquad_regen_test.json --model nous-hermes2 --times 5 --prompt prompts/detection/bcvcot_medical.prompt --outfile results/medquad_medical_cot_nous-hermes2.json --logfile logs/medquad_medical_cot_nous-hermes2.log
# python3 -m detection.bcv_sca --data data/medquad_regen_test.json --model mistral --times 5 --prompt prompts/detection/bcvcot_medical.prompt --outfile results/medquad_medical_cot_mistral.json --logfile logs/medquad_medical_cot_mistral.log
# python3 -m detection.bcv_sca --data data/medquad_regen_test.json --model nemotron-mini --times 5 --prompt prompts/detection/bcvcot_medical.prompt --outfile results/medquad_medical_cot_nemotron-mini.json --logfile logs/medquad_medical_cot_nemotron-mini.log

# MEDQUAD, AGNOSTIC, COT
# python3 -m detection.bcv_sca --data data/medquad_regen_test.json --model llama3 --times 5 --prompt prompts/detection/bcvcot_agnostic.prompt --outfile results/medquad_agnostic_cot_llama3.json --logfile logs/medquad_agnostic_cot_llama3.log
# python3 -m detection.bcv_sca --data data/medquad_regen_test.json --model nous-hermes2 --times 5 --prompt prompts/detection/bcvcot_agnostic.prompt --outfile results/medquad_agnostic_cot_nous-hermes2.json --logfile logs/medquad_agnostic_cot_nous-hermes2.log
# python3 -m detection.bcv_sca --data data/medquad_regen_test.json --model mistral --times 5 --prompt prompts/detection/bcvcot_agnostic.prompt --outfile results/medquad_agnostic_cot_mistral.json --logfile logs/medquad_agnostic_cot_mistral.log
# python3 -m detection.bcv_sca --data data/medquad_regen_test.json --model llama3.1 --times 5 --prompt prompts/detection/bcvcot_agnostic.prompt --outfile results/medquad_agnostic_cot_llama3.1.json --logfile logs/medquad_agnostic_cot_llama3.1.log
# python3 -m detection.bcv_sca --data data/medquad_regen_test.json --model llama3.2 --times 5 --prompt prompts/detection/bcvcot_agnostic.prompt --outfile results/medquad_agnostic_cot_llama3.2.json --logfile logs/medquad_agnostic_cot_llama3.2.log
python3 -m detection.bcv_sca --data data/medquad_regen_test.json --model nemotron-mini --times 5 --prompt prompts/detection/bcvcot_agnostic.prompt --outfile results/medquad_agnostic_cot_nemotron-mini.json --logfile logs/medquad_agnostic_cot_nemotron-mini.log

# MEDQUAD, MEDICAL, NOCOT
# python3 -m detection.bcv_sca --data data/medquad_regen_test.json --model llama3 --times 5 --prompt prompts/detection/bcv_medical.prompt --outfile results/medquad_medical_llama3.json --logfile logs/medquad_medical_llama3.log
python3 -m detection.bcv_sca --data data/medquad_regen_test.json --model llama3.1 --times 5 --prompt prompts/detection/bcv_medical.prompt --outfile results/medquad_medical_llama3.1.json --logfile logs/medquad_medical_llama3.1.log
python3 -m detection.bcv_sca --data data/medquad_regen_test.json --model llama3.2 --times 5 --prompt prompts/detection/bcv_medical.prompt --outfile results/medquad_medical_llama3.2.json --logfile logs/medquad_medical_llama3.2.log
# python3 -m detection.bcv_sca --data data/medquad_regen_test.json --model nous-hermes2 --times 5 --prompt prompts/detection/bcv_medical.prompt --outfile results/medquad_medical_nous-hermes2.json --logfile logs/medquad_medical_nous-hermes2.log
# python3 -m detection.bcv_sca --data data/medquad_regen_test.json --model mistral --times 5 --prompt prompts/detection/bcv_medical.prompt --outfile results/medquad_medical_mistral.json --logfile logs/medquad_medical_mistral.log
python3 -m detection.bcv_sca --data data/medquad_regen_test.json --model nemotron-mini --times 5 --prompt prompts/detection/bcv_medical.prompt --outfile results/medquad_medical_nemotron-mini.json --logfile logs/medquad_medical_nemotron-mini.log

# MEDQUAD, AGNOSTIC, NOCOT
# python3 -m detection.bcv_sca --data data/medquad_regen_test.json --model llama3 --times 5 --prompt prompts/detection/bcv_agnostic.prompt --outfile results/medquad_agnostic_llama3.json --logfile logs/medquad_agnostic_llama3.log
python3 -m detection.bcv_sca --data data/medquad_regen_test.json --model llama3.1 --times 5 --prompt prompts/detection/bcv_agnostic.prompt --outfile results/medquad_agnostic_llama3.1.json --logfile logs/medquad_agnostic_llama3.1.log
python3 -m detection.bcv_sca --data data/medquad_regen_test.json --model llama3.2 --times 5 --prompt prompts/detection/bcv_agnostic.prompt --outfile results/medquad_agnostic_llama3.2.json --logfile logs/medquad_agnostic_llama3.2.log
# python3 -m detection.bcv_sca --data data/medquad_regen_test.json --model nous-hermes2 --times 5 --prompt prompts/detection/bcv_agnostic.prompt --outfile results/medquad_agnostic_nous-hermes2.json --logfile logs/medquad_agnostic_nous-hermes2.log
# python3 -m detection.bcv_sca --data data/medquad_regen_test.json --model mistral --times 5 --prompt prompts/detection/bcv_agnostic.prompt --outfile results/medquad_agnostic_mistral.json --logfile logs/medquad_agnostic_mistral.log
python3 -m detection.bcv_sca --data data/medquad_regen_test.json --model nemotron-mini --times 5 --prompt prompts/detection/bcv_agnostic.prompt --outfile results/medquad_agnostic_nemotron-mini.json --logfile logs/medquad_agnostic_nemotron-mini.log

# HALUEVAL, AGNOSTIC, NOCOT
# python3 -m detection.bcv_sca --data data/halueval_test.json --limit 100 --random --model llama3 --times 5 --prompt prompts/detection/bcv_agnostic.prompt --outfile results/halueval_agnostic_nocot_llama3.json --logfile logs/halueval_agnostic_nocot_llama3.log
python3 -m detection.bcv_sca --data data/halueval_test.json --limit 100 --random --model llama3.1 --times 5 --prompt prompts/detection/bcv_agnostic.prompt --outfile results/halueval_agnostic_nocot_llama3.1.json --logfile logs/halueval_agnostic_nocot_llama3.1.log
python3 -m detection.bcv_sca --data data/halueval_test.json --limit 100 --random --model llama3.2 --times 5 --prompt prompts/detection/bcv_agnostic.prompt --outfile results/halueval_agnostic_nocot_llama3.2.json --logfile logs/halueval_agnostic_nocot_llama3.2.log
# python3 -m detection.bcv_sca --data data/halueval_test.json --limit 100 --random --model nous-hermes2 --times 5 --prompt prompts/detection/bcv_agnostic.prompt --outfile results/halueval_agnostic_nocot_nous-hermes2.json --logfile logs/halueval_agnostic_nocot_nous-hermes2.log
# python3 -m detection.bcv_sca --data data/halueval_test.json --limit 100 --random --model mistral --times 5 --prompt prompts/detection/bcv_agnostic.prompt --outfile results/halueval_agnostic_nocot_mistral.json --logfile logs/halueval_agnostic_nocot_mistral.log
python3 -m detection.bcv_sca --data data/halueval_test.json --limit 100 --random --model nemotron-mini --times 5 --prompt prompts/detection/bcv_agnostic.prompt --outfile results/halueval_agnostic_nocot_nemotron-mini.json --logfile logs/halueval_agnostic_nocot_nemotron-mini.log

# HALUEVAL, AGNOSTIC, COT
# python3 -m detection.bcv_sca --data data/halueval_test.json --limit 100 --random --model llama3 --times 5 --prompt prompts/detection/bcvcot_agnostic.prompt --outfile results/halueval_agnostic_cot_llama3.json --logfile logs/halueval_agnostic_cot_llama3.log
python3 -m detection.bcv_sca --data data/halueval_test.json --limit 100 --random --model llama3.1 --times 5 --prompt prompts/detection/bcvcot_agnostic.prompt --outfile results/halueval_agnostic_cot_llama3.1.json --logfile logs/halueval_agnostic_cot_llama3.1.log
python3 -m detection.bcv_sca --data data/halueval_test.json --limit 100 --random --model llama3.2 --times 5 --prompt prompts/detection/bcvcot_agnostic.prompt --outfile results/halueval_agnostic_cot_llama3.2.json --logfile logs/halueval_agnostic_cot_llama3.2.log
# python3 -m detection.bcv_sca --data data/halueval_test.json --limit 100 --random --model nous-hermes2 --times 5 --prompt prompts/detection/bcvcot_agnostic.prompt --outfile results/halueval_agnostic_cot_nous-hermes2.json --logfile logs/halueval_agnostic_cot_nous-hermes2.log
# python3 -m detection.bcv_sca --data data/halueval_test.json --limit 100 --random --model mistral --times 5 --prompt prompts/detection/bcvcot_agnostic.prompt --outfile results/halueval_agnostic_cot_mistral.json --logfile logs/halueval_agnostic_cot_mistral.log
python3 -m detection.bcv_sca --data data/halueval_test.json --limit 100 --random --model nemotron-mini --times 5 --prompt prompts/detection/bcvcot_agnostic.prompt --outfile results/halueval_agnostic_cot_nemotron-mini.json --logfile logs/halueval_agnostic_cot_nemotron-mini.log

# EHR, AGNOSTIC, NOCOT
# python3 -m detection.bcv_sca --data data/medical_report_test.json --model llama3 --times 5 --prompt prompts/detection/bcv_agnostic.prompt --outfile results/ehr_agnostic_nocot_llama3.json --logfile logs/ehr_agnostic_nocot_llama3.log
python3 -m detection.bcv_sca --data data/medical_report_test.json --model llama3.1 --times 5 --prompt prompts/detection/bcv_agnostic.prompt --outfile results/ehr_agnostic_nocot_llama3.1.json --logfile logs/ehr_agnostic_nocot_llama3.1.log
python3 -m detection.bcv_sca --data data/medical_report_test.json --model llama3.2 --times 5 --prompt prompts/detection/bcv_agnostic.prompt --outfile results/ehr_agnostic_nocot_llama3.2.json --logfile logs/ehr_agnostic_nocot_llama3.2.log
# python3 -m detection.bcv_sca --data data/medical_report_test.json --model nous-hermes2 --times 5 --prompt prompts/detection/bcv_agnostic.prompt --outfile results/ehr_agnostic_nocot_nous-hermes2.json --logfile logs/ehr_agnostic_nocot_nous-hermes2.log
# python3 -m detection.bcv_sca --data data/medical_report_test.json --model mistral --times 5 --prompt prompts/detection/bcv_agnostic.prompt --outfile results/ehr_agnostic_nocot_mistral.json --logfile logs/ehr_agnostic_nocot_mistral.log
python3 -m detection.bcv_sca --data data/medical_report_test.json --model nemotron-mini --times 5 --prompt prompts/detection/bcv_agnostic.prompt --outfile results/ehr_agnostic_nocot_nemotron-mini.json --logfile logs/ehr_agnostic_nocot_nemotron-mini.log

# EHR, AGNOSTIC, COT
# python3 -m detection.bcv_sca --data data/medical_report_test.json --model llama3 --times 5 --prompt prompts/detection/bcvcot_agnostic.prompt --outfile results/ehr_agnostic_cot_llama3.json --logfile logs/ehr_agnostic_cot_llama3.log
# python3 -m detection.bcv_sca --data data/medical_report_test.json --model nous-hermes2 --times 5 --prompt prompts/detection/bcvcot_agnostic.prompt --outfile results/ehr_agnostic_cot_nous-hermes2.json --logfile logs/ehr_agnostic_cot_nous-hermes2.log
python3 -m detection.bcv_sca --data data/medical_report_test.json --model llama3.1 --times 5 --prompt prompts/detection/bcvcot_agnostic.prompt --outfile results/ehr_agnostic_cot_llama3.1.json --logfile logs/ehr_agnostic_cot_llama3.1.log
python3 -m detection.bcv_sca --data data/medical_report_test.json --model llama3.2 --times 5 --prompt prompts/detection/bcvcot_agnostic.prompt --outfile results/ehr_agnostic_cot_llama3.2.json --logfile logs/ehr_agnostic_cot_llama3.2.log
# python3 -m detection.bcv_sca --data data/medical_report_test.json --model mistral --times 5 --prompt prompts/detection/bcvcot_agnostic.prompt --outfile results/ehr_agnostic_cot_mistral.json --logfile logs/ehr_agnostic_cot_mistral.log
python3 -m detection.bcv_sca --data data/medical_report_test.json --model nemotron-mini --times 5 --prompt prompts/detection/bcvcot_agnostic.prompt --outfile results/ehr_agnostic_cot_nemotron-mini.json --logfile logs/ehr_agnostic_cot_nemotron-mini.log

# EHR, MEDICAL, NOCOT
# python3 -m detection.bcv_sca --data data/medical_report_test.json --model llama3 --times 5 --prompt prompts/detection/bcv_medical.prompt --outfile results/ehr_medical_nocot_llama3.json --logfile logs/ehr_medical_nocot_llama3.log
python3 -m detection.bcv_sca --data data/medical_report_test.json --model llama3.1 --times 5 --prompt prompts/detection/bcv_medical.prompt --outfile results/ehr_medical_nocot_llama3.1.json --logfile logs/ehr_medical_nocot_llama3.1.log
python3 -m detection.bcv_sca --data data/medical_report_test.json --model llama3.2 --times 5 --prompt prompts/detection/bcv_medical.prompt --outfile results/ehr_medical_nocot_llama3.2.json --logfile logs/ehr_medical_nocot_llama3.2.log
# python3 -m detection.bcv_sca --data data/medical_report_test.json --model nous-hermes2 --times 5 --prompt prompts/detection/bcv_medical.prompt --outfile results/ehr_medical_nocot_nous-hermes2.json --logfile logs/ehr_medical_nocot_nous-hermes2.log
# python3 -m detection.bcv_sca --data data/medical_report_test.json --model mistral --times 5 --prompt prompts/detection/bcv_medical.prompt --outfile results/ehr_medical_nocot_mistral.json --logfile logs/ehr_medical_nocot_mistral.log
python3 -m detection.bcv_sca --data data/medical_report_test.json --model nemotron-mini --times 5 --prompt prompts/detection/bcv_medical.prompt --outfile results/ehr_medical_nocot_nemotron-mini.json --logfile logs/ehr_medical_nocot_nemotron-mini.log

# EHR, MEDICAL, COT
# python3 -m detection.bcv_sca --data data/medical_report_test.json --limit 100 --random --model llama3 --times 5 --prompt prompts/detection/bcvcot_medical.prompt --outfile results/ehr_medical_cot_llama3.json --logfile logs/ehr_medical_cot_llama3.log
# python3 -m detection.bcv_sca --data data/medical_report_test.json --limit 100 --random --model nous-hermes2 --times 5 --prompt prompts/detection/bcvcot_medical.prompt --outfile results/ehr_medical_cot_nous-hermes2.json --logfile logs/ehr_medical_cot_nous-hermes2.log
python3 -m detection.bcv_sca --data data/medical_report_test.json --limit 100 --random --model llama3.1 --times 5 --prompt prompts/detection/bcvcot_medical.prompt --outfile results/ehr_medical_cot_llama3.1.json --logfile logs/ehr_medical_cot_llama3.1.log
python3 -m detection.bcv_sca --data data/medical_report_test.json --limit 100 --random --model llama3.2 --times 5 --prompt prompts/detection/bcvcot_medical.prompt --outfile results/ehr_medical_cot_llama3.2.json --logfile logs/ehr_medical_cot_llama3.2.log
# python3 -m detection.bcv_sca --data data/medical_report_test.json --limit 100 --random --model mistral --times 5 --prompt prompts/detection/bcvcot_medical.prompt --outfile results/ehr_medical_cot_mistral.json --logfile logs/ehr_medical_cot_mistral.log
python3 -m detection.bcv_sca --data data/medical_report_test.json --limit 100 --random --model nemotron-mini --times 5 --prompt prompts/detection/bcvcot_medical.prompt --outfile results/ehr_medical_cot_nemotron-mini.json --logfile logs/ehr_medical_cot_nemotron-mini.log

# :::::::::::::::::: ISSC and ISSC-CoT ::::::::::::::::

# TRUTHFULQA, AGNOSTIC, NOCOT
# python3 -m detection.issc --data data/truthfulqa_test_samples.json --limit 100 --model llama3 --prompt prompts/detection/issc_agnostic.prompt --outfile results/truthful_qa_nocot_llama3.json --logfile logs/truthfulqa_nocot_llama3.log
python3 -m detection.issc --data data/truthfulqa_test_samples.json --limit 100 --model llama3.1 --prompt prompts/detection/issc_agnostic.prompt --outfile results/truthful_qa_nocot_llama3.1.json --logfile logs/truthfulqa_nocot_llama3.1.log
python3 -m detection.issc --data data/truthfulqa_test_samples.json --limit 100 --model llama3.2 --prompt prompts/detection/issc_agnostic.prompt --outfile results/truthful_qa_nocot_llama3.2.json --logfile logs/truthfulqa_nocot_llama3.2.log
# python3 -m detection.issc --data data/truthfulqa_test_samples.json --limit 100 --model nous-hermes2 --prompt prompts/detection/issc_agnostic.prompt --outfile results/truthful_qa_nocot_nous-hermes2.json --logfile logs/truthfulqa_nocot_nous-hermes2.log
# python3 -m detection.issc --data data/truthfulqa_test_samples.json --limit 100 --model mistral --prompt prompts/detection/issc_agnostic.prompt --outfile results/truthful_qa_nocot_mistral.json --logfile logs/truthfulqa_nocot_mistral.log
python3 -m detection.issc --data data/truthfulqa_test_samples.json --limit 100 --model nemotron-mini --prompt prompts/detection/issc_agnostic.prompt --outfile results/truthful_qa_nocot_nemotron-mini.json --logfile logs/truthfulqa_nocot_nemotron-mini.log

# TRUTHFULQA, AGNOSTIC, COT
# python3 -m detection.issc --data data/truthfulqa_test_samples.json --limit 100 --model llama3 --prompt prompts/detection/issccot_agnostic.prompt --outfile results/truthful_qa_cot_llama3.json --logfile logs/truthfulqa_cot_llama3.log
# python3 -m detection.issc --data data/truthfulqa_test_samples.json --limit 100 --model nous-hermes2 --prompt prompts/detection/issccot_agnostic.prompt --outfile results/truthful_qa_cot_nous-hermes2.json --logfile logs/truthfulqa_cot_nous-hermes2.log
# python3 -m detection.issc --data data/truthfulqa_test_samples.json --limit 100 --model mistral --prompt prompts/detection/issccot_agnostic.prompt --outfile results/truthful_qa_cot_mistral.json --logfile logs/truthfulqa_cot_mistral.log
python3 -m detection.issc --data data/truthfulqa_test_samples.json --limit 100 --model llama3.1 --prompt prompts/detection/issccot_agnostic.prompt --outfile results/truthful_qa_cot_llama3.1.json --logfile logs/truthfulqa_cot_llama3.1.log
python3 -m detection.issc --data data/truthfulqa_test_samples.json --limit 100 --model llama3.2 --prompt prompts/detection/issccot_agnostic.prompt --outfile results/truthful_qa_cot_llama3.2.json --logfile logs/truthfulqa_cot_llama3.2.log
python3 -m detection.issc --data data/truthfulqa_test_samples.json --limit 100 --model nemotron-mini --prompt prompts/detection/issccot_agnostic.prompt --outfile results/truthful_qa_cot_nemotron-mini.json --logfile logs/truthfulqa_cot_nemotron-mini.log

# :::::::::::::::::: SCA :::::::::::::::::

# EHR, AGNOSTIC
# python3 -m detection.bcv_sca --data data/medical_report_test.json --limit 100 --random --model llama3 --times 5 --prompt prompts/detection/sca_agnostic.prompt --outfile results/ehr_agnostic_sca_llama3.json --logfile logs/ehr_agnostic_sca_llama3.log
# python3 -m detection.bcv_sca --data data/medical_report_test.json --limit 100 --random --model nous-hermes2 --times 5 --prompt prompts/detection/sca_agnostic.prompt --outfile results/ehr_agnostic_sca_nous-hermes2.json --logfile logs/ehr_agnostic_sca_nous-hermes2.log
# python3 -m detection.bcv_sca --data data/medical_report_test.json --limit 100 --random --model mistral --times 5 --prompt prompts/detection/sca_agnostic.prompt --outfile results/ehr_agnostic_sca_mistral.json --logfile logs/ehr_agnostic_sca_mistral.log
python3 -m detection.bcv_sca --data data/medical_report_test.json --limit 100 --random --model llama3.1 --times 5 --prompt prompts/detection/sca_agnostic.prompt --outfile results/ehr_agnostic_sca_llama3.1.json --logfile logs/ehr_agnostic_sca_llama3.1.log
python3 -m detection.bcv_sca --data data/medical_report_test.json --limit 100 --random --model llama3.2 --times 5 --prompt prompts/detection/sca_agnostic.prompt --outfile results/ehr_agnostic_sca_llama3.2.json --logfile logs/ehr_agnostic_sca_llama3.2.log
python3 -m detection.bcv_sca --data data/medical_report_test.json --limit 100 --random --model nemotron-mini --times 5 --prompt prompts/detection/sca_agnostic.prompt --outfile results/ehr_agnostic_sca_nemotron-mini.json --logfile logs/ehr_agnostic_sca_nemotron-mini.log

# EHR, MEDICAL
# python3 -m detection.bcv_sca --data data/medical_report_test.json --limit 100 --random --model llama3 --times 5 --prompt prompts/detection/sca_medical.prompt --outfile results/ehr_medical_sca_llama3.json --logfile logs/ehr_medical_sca_llama3.log
# python3 -m detection.bcv_sca --data data/medical_report_test.json --limit 100 --random --model nous-hermes2 --times 5 --prompt prompts/detection/sca_medical.prompt --outfile results/ehr_medical_sca_nous-hermes2.json --logfile logs/ehr_medical_sca_nous-hermes2.log
# python3 -m detection.bcv_sca --data data/medical_report_test.json --limit 100 --random --model mistral --times 5 --prompt prompts/detection/sca_medical.prompt --outfile results/ehr_medical_sca_mistral.json --logfile logs/ehr_medical_sca_mistral.log
python3 -m detection.bcv_sca --data data/medical_report_test.json --limit 100 --random --model llama3.1 --times 5 --prompt prompts/detection/sca_medical.prompt --outfile results/ehr_medical_sca_llama3.1.json --logfile logs/ehr_medical_sca_llama3.1.log
python3 -m detection.bcv_sca --data data/medical_report_test.json --limit 100 --random --model llama3.2 --times 5 --prompt prompts/detection/sca_medical.prompt --outfile results/ehr_medical_sca_llama3.2.json --logfile logs/ehr_medical_sca_llama3.2.log
python3 -m detection.bcv_sca --data data/medical_report_test.json --limit 100 --random --model nemotron-mini --times 5 --prompt prompts/detection/sca_medical.prompt --outfile results/ehr_medical_sca_nemotron-mini.json --logfile logs/ehr_medical_sca_nemotron-mini.log

# MEDQUAD, AGNOSTIC
# python3 -m detection.bcv_sca --data data/medquad_regen_test.json --model llama3 --times 5 --prompt prompts/detection/sca_agnostic.prompt --outfile results/medquad_agnostic_sca_llama3.json --logfile logs/medquad_agnostic_sca_llama3.log
# python3 -m detection.bcv_sca --data data/medquad_regen_test.json --model nous-hermes2 --times 5 --prompt prompts/detection/sca_agnostic.prompt --outfile results/medquad_agnostic_sca_nous-hermes2.json --logfile logs/medquad_agnostic_sca_nous-hermes2.log
python3 -m detection.bcv_sca --data data/medquad_regen_test.json --model llama3.1 --times 5 --prompt prompts/detection/sca_agnostic.prompt --outfile results/medquad_agnostic_sca_llama3.1.json --logfile logs/medquad_agnostic_sca_llama3.1.log
python3 -m detection.bcv_sca --data data/medquad_regen_test.json --model llama3.2 --times 5 --prompt prompts/detection/sca_agnostic.prompt --outfile results/medquad_agnostic_sca_llama3.2.json --logfile logs/medquad_agnostic_sca_llama3.2.log
# python3 -m detection.bcv_sca --data data/medquad_regen_test.json --model mistral --times 5 --prompt prompts/detection/sca_agnostic.prompt --outfile results/medquad_agnostic_sca_mistral.json --logfile logs/medquad_agnostic_sca_mistral.log
python3 -m detection.bcv_sca --data data/medquad_regen_test.json --model nemotron-mini --times 5 --prompt prompts/detection/sca_agnostic.prompt --outfile results/medquad_agnostic_sca_nemo

# MEDQUAD, MEDICAL
# python3 -m detection.bcv_sca --data data/medquad_regen_test.json --model llama3 --times 5 --prompt prompts/detection/sca_medical.prompt --outfile results/medquad_agnostic_sca_llama3.json --logfile logs/medquad_medical_sca_llama3.log
# python3 -m detection.bcv_sca --data data/medquad_regen_test.json --model nous-hermes2 --times 5 --prompt prompts/detection/sca_medical.prompt --outfile results/medquad_agnostic_sca_nous-hermes2.json --logfile logs/medquad_medical_sca_nous-hermes2.log
python3 -m detection.bcv_sca --data data/medquad_regen_test.json --model llama3.1 --times 5 --prompt prompts/detection/sca_medical.prompt --outfile results/medquad_agnostic_sca_llama3.1.json --logfile logs/medquad_medical_sca_llama3.1.log
python3 -m detection.bcv_sca --data data/medquad_regen_test.json --model llama3.2 --times 5 --prompt prompts/detection/sca_medical.prompt --outfile results/medquad_agnostic_sca_llama3.2.json --logfile logs/medquad_medical_sca_llama3.2.log
# python3 -m detection.bcv_sca --data data/medquad_regen_test.json --model mistral --times 5 --prompt prompts/detection/sca_medical.prompt --outfile results/medquad_agnostic_sca_mistral.json --logfile logs/medquad_medical_sca_mistral.log
python3 -m detection.bcv_sca --data data/medquad_regen_test.json --model nemotron-mini --times 5 --prompt prompts/detection/sca_medical.prompt --outfile results/medquad_agnostic_sca_nemo
