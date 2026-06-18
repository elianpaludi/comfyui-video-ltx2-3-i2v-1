  # clean base image containing only comfyui, comfy-cli and comfyui-manager
  FROM runpod/worker-comfyui:5.8.4-base

  # Los modelos NO se hornean: vienen del network volume montado en /runpod-volume
  # (ComfyUI los detecta automáticamente en /runpod-volume/models/...)

  # imagen de prueba para el primer test (en producción se envía en cada request)
  RUN wget --progress=dot:giga -O '/comfyui/input/egyptian_queen.png'
  "https://cool-anteater-319.convex.cloud/api/storage/1bd22838-84e8-4fff-a5c7-f2cebfb7a46d"
