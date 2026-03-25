class ElspaisCore < Formula
  include Language::Python::Virtualenv

  desc "Requirements validation and traceability tools (core only)"
  homepage "https://github.com/anspar/elspais"
  url "https://files.pythonhosted.org/packages/b2/64/49378d23e56dab2ca21544c55cf4021abd604594081fd8962a9fe979c8ec/elspais-0.112.11.tar.gz"
  sha256 "7e3ddb882137eb50454bd1a8a63a75e5a5cc794550cc8d3305094d70089eea14"
  license "AGPL-3.0-only"

  bottle do
    root_url "https://github.com/Anspar-Org/homebrew-anspar/releases/download/elspais-0.104.44"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "857add387e5606ec865a3ed05088dc71fb1322d132d82234f26f00cbb68facb7"
  end

  depends_on "python@3.12"

  conflicts_with "elspais", because: "both install the `elspais` binary"

  resource "tomlkit" do
    url "https://files.pythonhosted.org/packages/b5/11/87d6d29fb5d237229d67973a6c9e06e048f01cf4994dee194ab0ea841814/tomlkit-0.14.0-py3-none-any.whl"
    sha256 "592064ed85b40fa213469f81ac584f67a4f2992509a7c3ea2d632208623a3680"
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
