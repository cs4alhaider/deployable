# Deployable Docker/Podman compose Projects

This repository contains various deployable services, each with its own `docker-compose` file named same as the service and a README to guide you through the deployment process. Additionally, I leverage my [deploy-hub CLI](https://github.com/cs4alhaider/deploy-hub) for creating and running these services. 

Below is an overview of the available services:

## Available Services
| Service         | Description                                                                                       | GitHub Link                                                                                   |
|-----------------|---------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------|
| Home Assistant  | An open-source home automation platform.                                                          | [GitHub](https://github.com/home-assistant/core)                                              |
| Typesense       | A fast, typo-tolerant search engine for building delightful search experiences.                   | [GitHub](https://github.com/typesense/typesense)                                              |
| n8n             | A free and open node-based Workflow Automation Tool.                                              | [GitHub](https://github.com/n8n-io/n8n)                                                       |
| Custom LLM      | Custom Large Language Model deployment using ollama and open-web-ui.                              | [GitHub (ollama)](https://github.com/ollama/ollama) [GitHub (open-webui)](https://github.com/open-webui/open-webui) |
| MeiliSearch     | An easy-to-use, blazingly fast, and hyper-relevant search engine.                                 | [GitHub](https://github.com/meilisearch/MeiliSearch)                                          |
| Cloudflared     | A lightweight tunneling daemon for Cloudflare services.                                           | [GitHub](https://github.com/cloudflare/cloudflared)                                           |
| IT Tools        | A set of tools for IT professionals.                                                              | [GitHub](https://github.com/cs4alhaider/it-tools)                                             |
| Keycloak        | Open Source Identity and Access Management for modern Applications and Services.                  | [GitHub](https://github.com/keycloak/keycloak)                                                |
| Strapi          | An open-source headless CMS.                                                                      | [GitHub](https://github.com/strapi/strapi)                                                    |

## Prerequisites

- [Docker](https://www.docker.com/get-started) or [Podman](https://podman.io/getting-started)
- [deploy-hub CLI](https://github.com/cs4alhaider/deploy-hub) or you can use `docker-compose` or `podman-compose` directly

## How to Use

1. **Clone the Repository**

    ```bash
    git clone https://github.com/cs4alhaider/deployable.git
    cd deployable
    ```

2. **Navigate to the Desired Service**

    Each service is located in its own directory. Navigate to the desired service directory:

    ```bash
    cd homeassistant  # replace with the desired service directory
    ```

3. **Read the Service README**

    Some service directory contains a `README.md` file with specific instructions on how to deploy and configure the service.

4. **Make sure to create .env file and set the environment variables**

    Some services require environment variables to be set in a .env file. Make sure to create a .env file and set the environment variables.

    ```bash
    touch .env 
    ```

5. **Deploy the Service**

    Use the [deploy-hub](https://github.com/cs4alhaider/deploy-hub) CLI tool to run the service or use below command directly:

    ```bash
    docker compose -f *.yml up -d
    ```

## Contributing

I welcome contributions! Feel free to fork the repository, make your changes, and submit a pull request.

## License

This repository is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.

## Contact

For any questions or support, please open an issue.

---

Happy deploying!

