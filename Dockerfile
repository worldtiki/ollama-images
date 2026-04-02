ARG OLLAMA_VERSION="0.17.7"
FROM alpine/ollama:${OLLAMA_VERSION}

ARG MODEL="qwen2.5:0.5b"
ENV OLLAMA_MODELS=/models

RUN ollama serve & \
    pid=$!; \
    ready=0; \
    for i in $(seq 1 30); do \
      if ollama list > /dev/null 2>&1; then \
        ready=1; \
        break; \
      fi; \
      sleep 1; \
    done; \
    if [ "$ready" -ne 1 ]; then \
      echo "ollama serve did not become ready after 30 attempts" >&2; \
      exit 1; \
    fi && \
    ollama pull ${MODEL} && \
    kill "$pid" >/dev/null 2>&1 || true; \
    wait "$pid" 2>/dev/null || true