# MeiliSearch Deployment with Docker Compose

This repository contains the necessary configuration to deploy [MeiliSearch](https://www.meilisearch.com/) using Docker Compose. MeiliSearch is an easy-to-use, open-source, and fast search engine.

## Prerequisites

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Deployment

Follow the steps below to deploy MeiliSearch:

1. **Clone this repository**:

    ```sh
    git clone <repository-url>
    cd <repository-directory>
    ```

2. **Run the Docker Compose command**:

    ```sh
    docker-compose -f *.yml up -d
    ```

    This command will start MeiliSearch in detached mode.

## Configuration

The `docker-compose.yml` file includes the following configuration:

```yaml
version: '3.7'

services:
  meilisearch:
    image: getmeili/meilisearch:latest
    container_name: meilisearch
    ports:
      - "7700:7700"
    environment:
      MEILI_MASTER_KEY: 'your_master_key_here'
      MEILI_ENV: 'development'
      MEILI_NO_ANALYTICS: 'true'
    volumes:
      - ./data.ms:/meili_data

volumes:
  meili_data:
```

### Environment Variables

- `MEILI_MASTER_KEY`: The master key for accessing MeiliSearch. Replace `'your_master_key_here'` with your actual key.
- `MEILI_ENV`: Sets the environment. Use `'development'` for local development or `'production'` for production.
- `MEILI_NO_ANALYTICS`: Disables analytics.

### Volumes

- `./data.ms:/meili_data`: Persists MeiliSearch data in the `./data.ms` directory on the host machine.

## Accessing MeiliSearch

Once the deployment is complete, MeiliSearch will be accessible at `http://localhost:7700`.

## Stopping the Deployment

To stop the deployment, run:

```sh
docker-compose down
```

## References

- [MeiliSearch Documentation](https://docs.meilisearch.com/)

## License

This project is licensed under the MIT License.
