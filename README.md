# Pop!_OS Packaging for Stable Diffusion

## System Installation and Requirements

The VRAM requirements to run this model are very high. You will need a CUDA 11-capable NVIDIA GPU with 10GB+ VRAM to avoid out of memory errors. If you have such a system, then you can install the required packages on Pop!_OS with the following command. Note that if you have not previously set up docker, it will be required to add your user account to the `docker` group after installing these packages, and then restart.

```
sudo apt install cog-stable-diffusion nvidia-docker2
```

## Download Stable Diffusion Model

The model is hosted at https://huggingface.co/, and it will be necessary to create an account, get an access token, and get permission to download the model.

- Create an account at https://huggingface.co/
- Create an access token at https://huggingface.co/settings/tokens.
- Get permission to download and use the [Stable Diffusion model](https://huggingface.co/CompVis/stable-diffusion-v1-4)
- Download the model with `stable-diffusion download {{ACCESS_TOKEN}}`

## Running Stable Diffusion

Arguments to `stable-diffusion` are passed on to the cog command with a predefined cog configuration for stable diffusion. For available arguments and values, [see the predict.py script](./src/predict.py). Invoking stable diffusion with a prompt input can be done like so:

```
stable-diffusion predict -i prompt="Text to execute in model"
```