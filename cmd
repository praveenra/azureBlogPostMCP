Local Test Docker
---------------------------------
docker build -t mcpblogpostapi-1 .

docker run -p 3001:3001 `
-e MCP_PORT=3001 `
-e API_BASE_URL=https://blogpost-api-prod-v1-decph3b4gpcve4f3.southindia-01.azurewebsites.net/api `
mcpblogpostapi-1

////Push Image To Azure Container Registery

az login

az acr login --name mcpblogpostapi

docker image list
->mcpblogpostapi:latest

docker tag mcpblogpostapi-1 mcpblogpostapi.azurecr.io/mcpblogpostapi-1

docker push mcpblogpostapi.azurecr.io/mcpblogpostapi-1