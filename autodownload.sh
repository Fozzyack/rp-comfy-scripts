
# Creating Files
echo CREATING FILES
mkdir /custom_comfy_upscalers
mkdir /custom_comfy_loras

# Downloading Loras
echo DOWNLOADING LORAS
wget -O /custom_comfy_loras/add_detail_XL.safetensors "https://civitai.com/api/download/models/135867?type=Model&format=SafeTensor"
wget -O /custom_comfy_loras/redmond_logos.safetensors "https://civitai.com/api/download/models/177492?type=Model&format=SafeTensor"
wget -O /custom_comfy_loras/Fantasy_Warrior_XL.safetensors "https://civitai.com/api/download/models/138640?type=Model&format=SafeTensor"
ln -s /custom_comfy_loras/* /workspace/ComfyUI/models/loras/
# Downloading Upscalers
echo DOWNLOADING UPSCALERS
wget -O /custom_comfy_upscalers/ESRGAN_ANIME_UPSCALER.pth "https://github.com/xinntao/Real-ESRGAN/releases/download/v0.2.2.4/RealESRGAN_x4plus_anime_6B.pth"
ln -s /custom_comfy_upscalers/* /workspace/ComfyUI/models/upscale_models/
# Downloading Models
echo DOWNLOADING MODELS
wget -O /comfy-models/Anime_SDXL.safetensors "https://civitai.com/api/download/models/269502?type=Model&format=SafeTensor&size=full&fp=fp16"
wget -O /comfy-models/Dreamshaper_XL.safetensors "https://civitai.com/api/download/models/251662"
wget -O /comfy-models/Jugger_XL.safetensors "https://civitai.com/api/download/models/240840?type=Model&format=SafeTensor&size=full&fp=fp16"
wget -O /comfy-models/DynaVision_XL.safetensors "https://civitai.com/api/download/models/198962?type=Model&format=SafeTensor&size=pruned&fp=fp16"
wget -O /comfy-models/MeinaMix.safetensors "https://civitai.com/api/download/models/119057?type=Model&format=SafeTensor&size=pruned&fp=fp16"
wget -O /comfy-models/Y_Unstable_Diffusers_XL.safetensors "https://civitai.com/api/download/models/276923?type=Model&format=SafeTensor&size=full&fp=fp16"
ln -s /comfy-models/* /workspace/ComfyUI/models/checkpoints/