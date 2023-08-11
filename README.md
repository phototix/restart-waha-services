# restart-waha-services
Do restart WAHA services.

### Use .sh file to trigger WAHA services restart

1) Stop WAHA container
docker kill whatsapp-waha

2) Remove WAHA container
docker rm whatsapp-waha

3) Start WAHA again.
docker run -d -v `pwd`/.sessions:/app/.sessions --restart always -it -e "WHATSAPP_DEFAULT_ENGINE=WEBJS" -e WHATSAPP_API_KEY=8cd0de4e14cd240a97209625af4bdeb0 -p 3000:3000/tcp --name whatsapp-waha devlikeapro/whatsapp-http-api-plus
