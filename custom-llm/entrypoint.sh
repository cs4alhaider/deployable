#!/bin/sh

# The command I provided in below  does the following:
# 1- ollama serve &: This starts the Ollama server in the background. The & at the end allows the server to run while the rest of the commands execute.
# 2- sleep 10: This pauses the execution for 10 seconds. This delay is added to give the Ollama server some time to start up fully before we try to use it.
# 3- ollama pull llama2: This command downloads and installs the Llama2 model into Ollama. If you want a different model, you would replace "llama2" with the name of that model.
# 4- tail -f /dev/null: This is a common trick used in Docker to keep the container running. Docker containers stop when their main process exits, so this command prevents that by running indefinitely.

# The entire command is wrapped in sh -c "..." which tells Docker to run these commands using the shell.
# This approach ensures that when you start your Docker container:

# The Ollama server starts
# The Llama2 model is automatically downloaded and installed
# The container keeps running

# This setup can be particularly useful if you want to ensure that a specific model is always available in your Ollama instance, without having to manually install it after starting the container.
# However, there are a few things to consider:

# The model download might take some time, especially for larger models.
# If the model is already installed, ollama pull will check for updates and download them if available.
# This will happen every time the container starts, which might not be necessary if the model is already installed and up-to-date.
    
ollama serve & sleep 20

# Check if any model is already pulled
if ollama list | grep -q "llama3:8b"; then
    echo "Models are already present. Skipping pull."
else
    echo "No models found. Pulling Llama3..."
    ollama pull llama3:8b # ~ 4.5 GB
fi

tail -f /dev/null
