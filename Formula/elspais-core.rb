class ElspaisCore < Formula
  include Language::Python::Virtualenv

  desc "Requirements validation and traceability tools (core only)"
  homepage "https://github.com/anspar/elspais"
  url "https://files.pythonhosted.org/packages/73/b6/70d5490b43690c705e684de9a73334094a80d2d55e352125a3e0a211e930/elspais-0.104.44.tar.gz"
  sha256 "d7c514d3d20c81fa6bbe0a380ced7328ccb4c80686094b93e3dbd438a419085b"
  license "AGPL-3.0-only"

  bottle do
    root_url "https://github.com/Anspar-Org/homebrew-anspar/releases/download/elspais-0.104.44"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "857add387e5606ec865a3ed05088dc71fb1322d132d82234f26f00cbb68facb7"
  end

  depends_on "python@3.12"

  conflicts_with "elspais", because: "both install the `elspais` binary"

  def install
    virtualenv_create(libexec, "python3.12")
    # Install from PyPI (uses wheel, avoids sdist build chain issues)
    system libexec/"bin/pip", "install", "elspais==#{version}"
    bin.install_symlink Dir[libexec/"bin/elspais"]
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
