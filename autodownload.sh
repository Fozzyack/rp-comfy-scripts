loras='/custom_comfy_loras'
upscalers='/custom_comfy_upscalers'
controlnet='/custom_comfy_controlnet'
models='/comfy-models'

# Creating Files
echo CREATING FILES
mkdir $upscalers
mkdir $loras
mkdir $controlnet

# Downloading Loras
echo DOWNLOADING LORAS
wget -O $loras/add_detail_XL.safetensors "https://civitai.com/api/download/models/135867?type=Model&format=SafeTensor"
wget -O $loras/redmond_logos.safetensors "https://civitai.com/api/download/models/177492?type=Model&format=SafeTensor"
wget -O $loras/Fantasy_Warrior_XL.safetensors "https://civitai.com/api/download/models/138640?type=Model&format=SafeTensor"
#
#
#  ADD MORE wgets here
#
#
ln -s $loras/* /workspace/ComfyUI/models/loras/

# Downloading Upscalers
echo DOWNLOADING UPSCALERS
wget -O $upscalers/ESRGAN_ANIME_UPSCALER.pth "https://github.com/xinntao/Real-ESRGAN/releases/download/v0.2.2.4/RealESRGAN_x4plus_anime_6B.pth"
#
#
#  ADD MORE wgets here
#
#
ln -s $upscalers/* /workspace/ComfyUI/models/upscale_models/

# Downloading Custom Nodes (Needs to be in Workspace!)
echo INSTALL CUSTOM NODES
rm -rf /workspace/ComfyUI/custom_nodes/*
git clone https://github.com/ltdrdata/ComfyUI-Manager.git /workspace/ComfyUI/custom_nodes/ComfyUI-Manager
git clone https://github.com/ltdrdata/ComfyUI-Impact-Pack.git /workspace/ComfyUI/custom_nodes/ComfyUI-Impact-Pack
git clone https://github.com/jags111/efficiency-nodes-comfyui.git /workspace/ComfyUI/custom_nodes/efficiency-nodes-comfyui
git clone https://github.com/ssitu/ComfyUI_NestedNodeBuilder.git /workspace/ComfyUI/custom_nodes/ComfyUI_NestedNodeBuilder
git clone https://github.com/Fannovel16/comfyui_controlnet_aux.git /workspace/ComfyUI/custom_nodes/comfyui_controlnet_aux
git clone https://github.com/bmad4ever/ComfyUI-Bmad-DirtyUndoRedo.git /workspace/ComfyUI/custom_nodes/ComfyUI-Bmad-DirtyUndoRedo

#
#
#  ADD MORE git clones here
#
#
#
cd "/workspace/ComfyUI/custom_nodes/comfyui_controlnet_aux"
pip install -r requirements.txt

cd "/workspace"


#Downloading Controlnets (SDXL)
wget -O $controlnet/control-canny-256.safetensors "https://huggingface.co/stabilityai/control-lora/resolve/main/control-LoRAs-rank256/control-lora-canny-rank256.safetensors?download=true"
wget -O $controlnet/control-depth-256.safetensors "https://huggingface.co/stabilityai/control-lora/resolve/main/control-LoRAs-rank256/control-lora-depth-rank256.safetensors?download=true"
wget -O $controlnet/control-recolor-256.safetensors "https://huggingface.co/stabilityai/control-lora/resolve/main/control-LoRAs-rank256/control-lora-recolor-rank256.safetensors?download=true"
wget -O $controlnet/control-sketch-256.safetensors "https://huggingface.co/stabilityai/control-lora/resolve/main/control-LoRAs-rank256/control-lora-sketch-rank256.safetensors?download=true"
#
#
#  ADD MORE wgets here
#
#
ln -s $controlnet/* /workspace/ComfyUI/models/controlnet/
# Downloading Models
echo DOWNLOADING MODELS
wget -O $models/Anime_SDXL.safetensors "https://civitai.com/api/download/models/269502?type=Model&format=SafeTensor&size=full&fp=fp16"
wget -O $models/Dreamshaper_XL.safetensors "https://civitai.com/api/download/models/251662"
wget -O $models/Jugger_XL.safetensors "https://civitai.com/api/download/models/240840?type=Model&format=SafeTensor&size=full&fp=fp16"
#
#  ADD MORE wgets here
#
#
ln -s $models/* /workspace/ComfyUI/models/checkpoints/

echo ///////////////////////////////////////////////
echo //////////// PLEASE RESTART ///////////////////
echo ///////////////////////////////////////////////