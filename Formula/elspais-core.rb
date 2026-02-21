class ElspaisCore < Formula
  include Language::Python::Virtualenv

  desc "Requirements validation and traceability tools (core only)"
  homepage "https://github.com/anspar/elspais"
  url "https://files.pythonhosted.org/packages/4f/a7/e3357a8eeb0c81f49d888e74cb7fb36294814b4970b3f4850411289d2aaa/elspais-0.82.0.tar.gz"
  sha256 "6bf647ff8d157dd1babc52f569237d74eda8c8de6c3886938c59bcb1240af0c7"
  license "AGPL-3.0-only"

  bottle do
    root_url "https://github.com/Anspar-Org/homebrew-anspar/releases/download/elspais-0.81.0"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "6a4e87e11636aa0d38d130e96902dd4d6a7547d240d6f7865096d06652e59763"
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
