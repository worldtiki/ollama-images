# ollama-images

Pre-built Ollama Docker images with models already downloaded, ready to run.

## Available Images

### ollama (Ubuntu-based)

| Image                                                     | Model              | Use Case                   |
|-----------------------------------------------------------|--------------------|----------------------------|
| `ghcr.io/worldtiki/ollama-images:ollama-qwen2.5-0.5b`     | `qwen2.5:0.5b`     | General chat               |
| `ghcr.io/worldtiki/ollama-images:ollama-llama3.2-1b`      | `llama3.2:1b`      | General chat, 128K context |
| `ghcr.io/worldtiki/ollama-images:ollama-llama3.2-3b`      | `llama3.2:3b`      | General chat               |
| `ghcr.io/worldtiki/ollama-images:ollama-deepseek-r1-1.5b` | `deepseek-r1:1.5b` | Reasoning                  |
| `ghcr.io/worldtiki/ollama-images:ollama-gemma4-e4b`       | `gemma4:e4b`       | General chat               |

### alpine

| Image                                                     | Model              | Use Case                   |
|-----------------------------------------------------------|--------------------|----------------------------|
| `ghcr.io/worldtiki/ollama-images:alpine-qwen2.5-0.5b`     | `qwen2.5:0.5b`     | General chat               |
| `ghcr.io/worldtiki/ollama-images:alpine-llama3.2-1b`      | `llama3.2:1b`      | General chat, 128K context |
| `ghcr.io/worldtiki/ollama-images:alpine-llama3.2-3b`      | `llama3.2:3b`      | General chat               |
| `ghcr.io/worldtiki/ollama-images:alpine-deepseek-r1-1.5b` | `deepseek-r1:1.5b` | Reasoning                  |
| `ghcr.io/worldtiki/ollama-images:alpine-gemma4-e4b`       | `gemma4:e4b`       | General chat               |

## Usage

```bash
docker run -p 11434:11434 ghcr.io/worldtiki/ollama-images:ollama-qwen2.5-0.5b
```

The model is already included in the image — no download required at startup.

## Build locally

```bash
docker build -t ollama-qwen .
```

To use a different model or Ollama version:

```bash
docker build --build-arg MODEL="llama3.2:1b" --build-arg OLLAMA_VERSION="0.20.2" -t ollama-llama .
```