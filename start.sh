pip install gradio
python -m omni_speech.serve.controller --host 0.0.0.0 --port 10000 &
python -m omni_speech.serve.gradio_web_server --controller http://localhost:10000 --port 8001 --model-list-mode reload --vocoder vocoder/g_00500000 --vocoder-cfg vocoder/config.json &
python -m omni_speech.serve.model_worker --host 0.0.0.0 --controller http://localhost:10000 --port 40000 --worker http://localhost:40000 --model-path Llama-3.1-8B-Omni --model-name Llama-3.1-8B-Omni --s2s
