FROM node:20-alpine

# EDNA MCP server — installed from the public npm package (edna-engine).
# Glama and other registries build this image to verify that the server
# starts and answers MCP introspection requests.
# Evaluation/testing mode needs no license key (EPCAL-1.0).
ENV NODE_ENV=production

RUN npm install --global edna-engine@1.4.1-main.1 \
    && npm cache clean --force

CMD ["edna-mcp"]
