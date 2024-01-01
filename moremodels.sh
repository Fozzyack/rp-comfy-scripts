# Extra optional models can run as a script but feel free to just copy and paste

wget -O $models/DynaVision_XL.safetensors "https://civitai.com/api/download/models/198962?type=Model&format=SafeTensor&size=pruned&fp=fp16"

wget -O $models/MeinaMix.safetensors "https://civitai.com/api/download/models/119057?type=Model&format=SafeTensor&size=pruned&fp=fp16"

wget -O $models/Y_Unstable_Diffusers_XL.safetensors "https://civitai.com/api/download/models/276923?type=Model&format=SafeTensor&size=full&fp=fp16"



## Create symbolic links
ln -s $models/* /workspace/ComfyUI/models/checkpoints/