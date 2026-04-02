# ollama-images

Pre-built Ollama Docker images with models already downloaded, ready to run.

## Image

```
ghcr.io/worldtiki/ollama-images:latest
```

**Bundled model:** `qwen2.5:0.5b`

## Usage

```bash
docker run -p 11434:11434 ghcr.io/worldtiki/ollama-images:latest
```

The model is already included in the image — no download required at startup.

## Build locally

```bash
docker build -t ollama-qwen .
```

To use a different model or Ollama version:

```bash
docker build --build-arg MODEL="qwen2.5:1.5b" --build-arg OLLAMA_VERSION="0.17.7" -t ollama-qwen .
```