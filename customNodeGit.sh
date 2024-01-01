# Downloading Custom Nodes (Needs to be in Workspace!)
echo DOWNLOADING CUSTOM NODES
rm -rf /workspace/ComfyUI/custom_nodes/*
git clone https://github.com/ltdrdata/ComfyUI-Manager.git /workspace/ComfyUI/custom_nodes/ComfyUI-Manager
git clone https://github.com/ltdrdata/ComfyUI-Impact-Pack.git /workspace/ComfyUI/custom_nodes/ComfyUI-Impact-Pack
git clone https://github.com/jags111/efficiency-nodes-comfyui.git /workspace/ComfyUI/custom_nodes/efficiency-nodes-comfyui
git clone https://github.com/ssitu/ComfyUI_NestedNodeBuilder.git /workspace/ComfyUI/custom_nodes/ComfyUI_NestedNodeBuilder
#
#
#  ADD MORE git clones here
#
#
echo PLEASE RESTART