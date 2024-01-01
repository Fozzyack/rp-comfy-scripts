# Some ComfyUI RunPod Scripts
## Who, What, Why...
- Allows for the automated download of some files (models - lora - custom_nodes) upon RunPod start to start image generation faster
- Downloads all models, upscalers, loras from [CivitAI](https://civitai.com/)
- Custom Nodes are from github
- Will be adding Control NET
- Most models are SDXL (might move to only SDXL files)
- Assumes you have set up SSH keys in RunPod
## Operation:
1. Create a .env with IP='POD IP'  SSH_ID='YOUR SSH KEY' PORT='POD PORT'
2. Update copyintovm.sh with your runpod ip port and your ssh info
3. Update autodownload to include any extra files you want
4. Run copyintovm.sh (may have to chmod first)
5. SSH into VM
6. Run customNodeGit.sh (on RunPod VM)
7. Restart RunPod machine to update Comfy
8. Run autodownload.sh (on RunPod VM)