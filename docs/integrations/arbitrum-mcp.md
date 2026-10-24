# Arbitrum MCP Integration

The Arbitrum MCP server is run from the Docker image `dewanshparashar/arbitrum-mcp`.

## Requirements

- Docker

## Install

```bash
./scripts/install-arbitrum-mcp.sh
```

This pulls the Docker image.

## Configuration

The server definition is in [`.mcp/arbitrum-mcp.json`](../../.mcp/arbitrum-mcp.json). It starts the server with:

```bash
docker run -i --rm dewanshparashar/arbitrum-mcp
```

Add that entry to your MCP client's `mcpServers` configuration.
