# Homebrew Tap for elspais

[elspais](https://github.com/anspar/elspais) is a requirements validation and traceability tool. L-Space connects all libraries.

## Install

```bash
brew tap anspar-org/elspais
brew install elspais
```

This installs elspais with **all optional features** including:

- **MCP server** for AI-driven requirements management (Claude Desktop & Claude Code)
- **Trace view** for HTML traceability reports
- **Trace review** Flask-based review server
- **Shell completion** for bash, zsh, and fish

### Core-only install

If you only need the core validation tool (no MCP, no HTML reports):

```bash
brew install anspar-org/elspais/elspais-core
```

## Upgrade

```bash
brew upgrade elspais
```

## MCP Server Setup

### Claude Desktop

Add to your Claude Desktop config:

**macOS**: `~/Library/Application Support/Claude/claude_desktop_config.json`

```json
{
  "mcpServers": {
    "elspais": {
      "command": "/opt/homebrew/bin/elspais",
      "args": ["mcp", "serve"],
      "cwd": "/path/to/your/project"
    }
  }
}
```

### Claude Code

Add to your project's `.mcp.json`:

```json
{
  "mcpServers": {
    "elspais": {
      "command": "/opt/homebrew/bin/elspais",
      "args": ["mcp", "serve"]
    }
  }
}
```

Set `cwd` to the directory containing your `.elspais.toml` config file.

## Quick Start

```bash
elspais docs quickstart
```

## Documentation

- [elspais on PyPI](https://pypi.org/project/elspais/)
- [GitHub Repository](https://github.com/anspar/elspais)
