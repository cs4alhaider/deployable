# Docker Compose and Podman Compose Setup

This repository contains a `docker-compose.yml` file that sets up two services: `ollama` and `open-webui`.

## Services

### ollama
Ollama is a platform for deploying and running large language models (LLMs). This service runs the `ollama/ollama` container, which handles tasks related to natural language processing using advanced LLMs. It uses a named volume for persistent storage and exposes port 11434 for communication.
- GitHub: [Ollama](https://github.com/ollama/ollama)

### open-webui
Open WebUI is a user-friendly web interface for interacting with large language models (LLMs). The `open-webui` service runs the `open-webui` container from the image `ghcr.io/open-webui/open-webui:ollama`. This service provides a web-based user interface for interacting with the application. It depends on the `ollama` service, shares the `ollama` volume for storage, and has an additional volume for its own backend data. It exposes port 3000 to the host.
- GitHub: [Open WebUI](https://github.com/open-webui/open-webui)

## Volumes

### ollama
A named volume shared by both services for persistent storage.

### open-webui
A named volume dedicated to the `open-webui` service for its backend data storage.

## Running with Docker Compose

### Prerequisites
- Docker installed on your machine
- Docker Compose installed on your machine

### Steps
1. Run the services:
    ```sh
    docker-compose -f custom-llm.yml up -d
    ```

1. Access the services:
    - `ollama` service: Accessible at `http://localhost:11434`
    - `open-webui` service: Accessible at `http://localhost:3000`

## Running with Podman Compose

### Prerequisites
- Podman installed on your machine
- Podman Compose installed on your machine

### Steps
1. Clone the repository:
    ```sh
    git clone <repository-url>
    cd <repository-directory>
    ```

2. Run the services:
    ```sh
    podman-compose up -d
    ```

3. Access the services:
    - `ollama` service: Accessible at `http://localhost:11434`
    - `open-webui` service: Accessible at `http://localhost:3000`

## Author

- **Abdullah Alhaider**
- Email: [cs.alhaider@gmail.com](mailto:cs.alhaider@gmail.com)
