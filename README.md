# ollama-images

Pre-built Ollama Docker images with models already downloaded, ready to run.

## Available Images

### ollama (Ubuntu-based)

| Image                                                     | Model              | Use Case                   |
|-----------------------------------------------------------|--------------------|----------------------------|
| `ghcr.io/worldtiki/ollama-images:ollama-qwen3.5-0.8b`     | `qwen3.5:0.8b`     | General chat               |
| `ghcr.io/worldtiki/ollama-images:ollama-qwen3-8b`         | `qwen3:8b`         | General chat               |
| `ghcr.io/worldtiki/ollama-images:ollama-qwen3-4b`         | `qwen3:4b`         | General chat               |
| `ghcr.io/worldtiki/ollama-images:ollama-qwen2.5-0.5b`     | `qwen2.5:0.5b`     | General chat               |
| `ghcr.io/worldtiki/ollama-images:ollama-deepseek-r1-1.5b` | `deepseek-r1:1.5b` | Reasoning                  |

### alpine

| Image                                                     | Model              | Use Case                   |
|-----------------------------------------------------------|--------------------|----------------------------|
| `ghcr.io/worldtiki/ollama-images:alpine-qwen3.5-0.8b`     | `qwen3.5:0.8b`     | General chat               |
| `ghcr.io/worldtiki/ollama-images:alpine-qwen3-8b`         | `qwen3:8b`         | General chat               |
| `ghcr.io/worldtiki/ollama-images:alpine-qwen3-4b`         | `qwen3:4b`         | General chat               |
| `ghcr.io/worldtiki/ollama-images:alpine-qwen2.5-0.5b`     | `qwen2.5:0.5b`     | General chat               |
| `ghcr.io/worldtiki/ollama-images:alpine-deepseek-r1-1.5b` | `deepseek-r1:1.5b` | Reasoning                  |

## Usage

```bash
docker run -p 11434:11434 ghcr.io/worldtiki/ollama-images:ollama-qwen3.5-0.8b
```

The model is already included in the image - no download required at startup.

## Build locally

```bash
docker build -t ollama-qwen .
```

To use a different model or Ollama version:

```bash
docker build --build-arg MODEL="qwen3:8b" --build-arg OLLAMA_VERSION="0.20.2" -t ollama-qwen3 .
```