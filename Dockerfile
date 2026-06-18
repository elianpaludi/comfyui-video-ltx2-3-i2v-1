  FROM runpod/worker-comfyui:5.8.4-base

  RUN comfy model download --url 'https://huggingface.co/Lightricks/LTX-2.3-fp8/resolve/main/ltx-2.3-22b-dev-fp8.safetensors' --relative-path models/checkpoints --filename 'ltx-2.3-22b-dev-fp8.safetensors'
  RUN comfy model download --url 'https://huggingface.co/Comfy-Org/ltx-2.3/resolve/main/split_files/loras/ltx_2.3_22b_distilled_1.1_lora_dynamic_fro09_avg_rank_111_bf16.safetensors' --relative-path models/loras --filename 'ltx_2.3_22b_distilled_1.1_lora_dynamic_fro09_avg_rank_111_bf16.safetensors'
  RUN comfy model download --url 'https://huggingface.co/Comfy-Org/ltx-2/resolve/main/split_files/loras/gemma-3-12b-it-abliterated_lora_rank64_bf16.safetensors' --relative-path models/loras --filename 'gemma-3-12b-it-abliterated_lora_rank64_bf16.safetensors'
  RUN comfy model download --url 'https://huggingface.co/Comfy-Org/ltx-2/resolve/main/split_files/text_encoders/gemma_3_12B_it_fp4_mixed.safetensors' --relative-path models/text_encoders --filename 'gemma_3_12B_it_fp4_mixed.safetensors'
  RUN comfy model download --url 'https://huggingface.co/Lightricks/LTX-2.3/resolve/main/ltx-2.3-spatial-upscaler-x2-1.1.safetensors' --relative-path models/latent_upscale_models --filename 'ltx-2.3-spatial-upscaler-x2-1.1.safetensors'
