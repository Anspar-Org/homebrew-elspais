class Elspais < Formula
  include Language::Python::Virtualenv

  desc "Requirements validation and traceability tools - L-Space connects all libraries"
  homepage "https://github.com/anspar/elspais"
  url "https://files.pythonhosted.org/packages/f8/86/6050d6d187804841bde2941edcb1fab361ed26fae90f9f862649700a1c0d/elspais-0.63.3.tar.gz"
  sha256 "449ee174caa4c47a801cfe23d61693fa79565551fd1bd6f504220a372e9cdbd6"
  license "AGPL-3.0-only"
  head "https://github.com/anspar/elspais.git", branch: "main"

  depends_on "python@3.12"

  def install
    venv = virtualenv_create(libexec, "python3.12")
    system libexec/"bin/pip", "install", "--no-cache-dir", "elspais[all]==#{version}"
    bin.install_symlink Dir[libexec/"bin/elspais"]
  end

  def caveats
    <<~EOS
      elspais has been installed with all optional features:
        - MCP server (AI-driven requirements management)
        - Trace view (HTML traceability reports)
        - Trace review (Flask-based review server)
        - Shell completion (bash, zsh, fish)

      MCP Server Setup
      ================

      For Claude Desktop, add to your config:
        macOS: ~/Library/Application Support/Claude/claude_desktop_config.json
        Linux: ~/.config/Claude/claude_desktop_config.json

        {
          "mcpServers": {
            "elspais": {
              "command": "#{opt_bin}/elspais",
              "args": ["mcp", "serve"],
              "cwd": "/path/to/your/project"
            }
          }
        }

      For Claude Code, add to your project's .mcp.json:

        {
          "mcpServers": {
            "elspais": {
              "command": "#{opt_bin}/elspais",
              "args": ["mcp", "serve"]
            }
          }
        }

      Set "cwd" to the directory containing your .elspais.toml config.

      Shell Completion
      ================
      For zsh, add to your ~/.zshrc:
        eval "$(register-python-argcomplete elspais)"

      For bash, add to your ~/.bashrc:
        eval "$(register-python-argcomplete elspais)"

      Quick Start
      ===========
      Run `elspais docs quickstart` for a getting-started guide.
    EOS
  end

  test do
    system bin/"elspais", "--version"

    # Verify MCP module is available
    system libexec/"bin/python", "-c", "import elspais; print('OK')"

    # Test basic validation on empty spec dir
    assert_match "elspais", shell_output("#{bin}/elspais --version")
  end
end
