FROM ghcr.io/sparfenyuk/mcp-proxy:latest

# Install Node.js and npm
RUN apk add --no-cache nodejs npm

# Pre-install canvas-mcp-server globally so it's available at runtime without download
RUN npm install -g canvas-mcp-server

ENV PATH="/usr/local/bin:$PATH"

ENTRYPOINT ["catatonit", "--", "mcp-proxy", "--host=0.0.0.0", "--port=8080", "--pass-environment", "--"]
CMD ["canvas-mcp-server"]