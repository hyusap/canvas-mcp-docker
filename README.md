# Canvas MCP Server (Dockerized)

Runs [canvas-mcp-server](https://www.npmjs.com/package/canvas-mcp-server) behind an auth proxy.

## Setup

```bash
cp .env.example .env
# Edit .env with your Canvas API token and bearer secret
```

## Run

```bash
docker compose up --build
```

## Usage

All requests require the bearer token:

```bash
curl -H "Authorization: Bearer YOUR_TOKEN" http://localhost:8080/sse
```
