# EDNA MCP server — container image (stdio transport).
# The engine is distributed as the signed npm package `edna-engine`;
# this image installs it and starts the MCP server so registries (e.g.
# Glama) can verify that the server starts and answers MCP introspection.
#
# Build:  docker build -t edna-mcp .
# Run:    docker run -i --rm edna-mcp
FROM node:22-alpine

WORKDIR /app
ENV NODE_ENV=production

COPY package.json ./
RUN npm install --omit=dev --no-audit --no-fund && npm cache clean --force

COPY index.js ./
COPY LICENSE ./

# stdio transport: no ports, no env vars required for evaluation mode
CMD ["node", "index.js"]
