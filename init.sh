source .env

git clone https://github.com/angelgarciamty/stable-diffusion-webui-forge.git
cd stable-diffusion-webui-forge
bash webui.sh -f
wget "https://huggingface.co/lllyasviel/flux1_dev/resolve/main/flux1-dev-fp8.safetensors" -P /workspace/stable-diffusion-webui-forge/models/Stable-diffusion/
python3 launch.py --share

#Loras
#----------------------
#amateur photography
#wget https://civitai.com/api/download/models/756149?token=$hftoken -O /workspace/stable-diffusion-webui-forge/models/lora/amateur_photography.safetensors
