class ElspaisCore < Formula
  include Language::Python::Virtualenv

  desc "Requirements validation and traceability tools (core only)"
  homepage "https://github.com/anspar/elspais"
  url "https://files.pythonhosted.org/packages/3c/57/6114c43059881e9c74fc0f24fd114a51c2ad89450341ff4c6a967cca8d98/elspais-0.103.0.tar.gz"
  sha256 "5884e80dfe8688dfb9189c5d3d7a1cc062e7bcad37d24cc5fcf312ec4659e3d9"
  license "AGPL-3.0-only"

  bottle do
    root_url "https://github.com/Anspar-Org/homebrew-anspar/releases/download/elspais-0.103.0"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "fbc458cd5928a8f6f8fe0095fe10d5dd0d2cf18c29270640aaf9b4b21d363493"
  end

  depends_on "python@3.12"

  conflicts_with "elspais", because: "both install the `elspais` binary"

  resource "tomlkit" do
    url "https://files.pythonhosted.org/packages/c3/af/14b24e41977adb296d6bd1fb59402cf7d60ce364f90c890bd2ec65c43b5a/tomlkit-0.14.0.tar.gz"
    sha256 "cf00efca415dbd57575befb1f6634c4f42d2d87dbba376128adb42c121b87064"
  end

  def install
    virtualenv_install_with_resources
  end

  def caveats
    <<~EOS
      This is the core-only install (minimal dependencies).
      For MCP server, HTML reports, and other features, use instead:
        brew install anspar-org/elspais/elspais
    EOS
  end

  test do
    system bin/"elspais", "--version"
  end
end
