# ollama-images

Pre-built Ollama Docker images with models already downloaded, ready to run.

## Available Images

| Image                                              | Model              | Use Case                   |
|----------------------------------------------------|--------------------|----------------------------|
| `ghcr.io/worldtiki/ollama-images:qwen2.5-0.5b`     | `qwen2.5:0.5b`     | General chat               |
| `ghcr.io/worldtiki/ollama-images:qwen2.5-1.5b`     | `qwen2.5:1.5b`     | General chat               |
| `ghcr.io/worldtiki/ollama-images:llama3.2-1b`      | `llama3.2:1b`      | General chat, 128K context |
| `ghcr.io/worldtiki/ollama-images:llama3.2-3b`      | `llama3.2:3b`      | General chat               |
| `ghcr.io/worldtiki/ollama-images:gemma3-1b`        | `gemma3:1b`        | General chat               |
| `ghcr.io/worldtiki/ollama-images:deepseek-r1-1.5b` | `deepseek-r1:1.5b` | Reasoning                  |

## Usage

```bash
docker run -p 11434:11434 ghcr.io/worldtiki/ollama-images:qwen2.5-0.5b
```

The model is already included in the image — no download required at startup.

## Build locally

```bash
docker build -t ollama-qwen .
```

To use a different model or Ollama version:

```bash
docker build --build-arg MODEL="llama3.2:1b" --build-arg OLLAMA_VERSION="0.17.7" -t ollama-llama .
```