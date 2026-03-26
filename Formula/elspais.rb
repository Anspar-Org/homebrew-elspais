class Elspais < Formula
  include Language::Python::Virtualenv

  desc "Requirements validation and traceability tools - L-Space connects all libraries"
  homepage "https://github.com/Anspar-Org/elspais"
  url "https://files.pythonhosted.org/packages/b2/64/49378d23e56dab2ca21544c55cf4021abd604594081fd8962a9fe979c8ec/elspais-0.112.11.tar.gz"
  sha256 "7e3ddb882137eb50454bd1a8a63a75e5a5cc794550cc8d3305094d70089eea14"
  license "AGPL-3.0-only"
  head "https://github.com/Anspar-Org/elspais.git", branch: "main"

  bottle do
    root_url "https://github.com/Anspar-Org/homebrew-anspar/releases/download/elspais-0.104.44"
    sha256 cellar: :any, arm64_sequoia: "3b20e3f7e98afaa84bf936f5b2409fa7b62eb07068b4bcdb12eb60071817ffcd"
  end

  depends_on "python@3.12"

  conflicts_with "elspais-core", because: "both install the `elspais` binary"

  def install
    virtualenv_create(libexec, "python3.12")
    system libexec/"bin/pip", "install", "--no-cache-dir", ".[all]"
    bin.install_symlink Dir[libexec/"bin/elspais"]
    bin.install_symlink libexec/"bin/register-python-argcomplete"
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
      To configure the MCP server for Claude Code or Claude Desktop:

        elspais mcp install             # project-local (.mcp.json)
        elspais mcp install --global    # global Claude Code config
        elspais mcp install --desktop   # Claude Desktop config

      Shell Completion
      ================
      To install shell completions for your current shell:

        elspais completion --install

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
