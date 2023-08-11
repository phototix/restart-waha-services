# This command sends a SIGKILL signal to the Docker container named whatsapp-waha. This will immediately stop the container.
docker kill whatsapp-waha

# This command removes the Docker container named whatsapp-waha. This is usually done to free up resources or to prepare for a new container to be run.
docker rm whatsapp-waha

# This command runs a new Docker container with a number of specified options.
docker run -d -v `pwd`/.sessions:/app/.sessions --restart always -it -e "WHATSAPP_DEFAULT_ENGINE=WEBJS" -e WHATSAPP_API_KEY=8cd0de4e14cd240a97209625af4bdeb0 -p 3000:3000/tcp --name whatsapp-waha devlikeapro/whatsapp-http-api-plus

# The options are:
# -d: This option runs the container in detached mode, meaning it runs in the background and does not receive input from the terminal.
# -v `pwd`/.sessions:/app/.sessions: This option mounts the directory .sessions from the current host directory (`pwd`) to the /app/.sessions directory in the container. This is used for data persistence across container restarts.
# --restart always: This option ensures that the Docker daemon always restarts the container if it stops for any reason.
# -it: This option starts the container in interactive mode with a tty (terminal).
# -e "WHATSAPP_DEFAULT_ENGINE=WEBJS" -e WHATSAPP_API_KEY=8cd0de4e14cd240a97209625af4bdeb0: These options set environment variables in the container. In this case, it sets the default engine for Whatsapp to WEBJS and the API key to the specified value.
# -p 3000:3000/tcp: This option maps port 3000 of the container to port 3000 of the host for TCP traffic.
# --name whatsapp-waha: This option names the container whatsapp-waha.
# devlikeapro/whatsapp-http-api-plus: This is the image that the container is based on. It's a custom image that presumably has the Whatsapp HTTP API plus some additional features.
