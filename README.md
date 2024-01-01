# Some ComfyUI RunPod Scripts
## Who, What, Why...
- Allows for the automated download of some files upon runpod start
- The IP and Port constantly changes for deployment so don't bother trying them
- Downloads all models, upscalers, loras from [CivitAI](https://civitai.com/)
- Custom Nodes are from github
- Will be adding Control NET
- Most models are SDXL (might move to only SDXL files)
- Assumes you have set up SSH keys in RunPod
## Operation:
1. Update copyintovm.sh with your runpod ip port and your ssh info
2. Update autodownload to include any extra files you want
3. Run copyintovm.sh (may have to chmod first)
4. SSH into VM
5. Run customNodeGit.sh (on RunPod VM)
6. Restart RunPod machine to update Comfy
7. Run autodownload.sh (on RunPod VM)