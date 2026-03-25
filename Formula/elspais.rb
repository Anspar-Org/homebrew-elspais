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

  depends_on "rust" => :build
  depends_on "python@3.12"

  conflicts_with "elspais-core", because: "both install the `elspais` binary"

  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/78/b6/6307fbef88d9b5ee7421e68d78a9f162e0da4900bc5f5793f6d3d0e34fb8/annotated_types-0.7.0-py3-none-any.whl"
    sha256 "1f02e8b43a8fbbc3f3e0d4f0f4bfc8131bcb4eebe8849b8e5c773f3a1c582a53"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/da/42/e921fccf5015463e32a3cf6ee7f980a6ed0f395ceeaa45060b61d86486c2/anyio-4.13.0-py3-none-any.whl"
    sha256 "08b310f9e24a9594186fd75b4f73f4a4152069e3853f1ed8bfbf58369f4ad708"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/64/b4/17d4b0b2a2dc85a6df63d1157e028ed19f90d4cd97c36717afef2bc2f395/attrs-26.1.0-py3-none-any.whl"
    sha256 "c647aa4a12dfbad9333ca4e71fe62ddc36f4e63b2d260a37a8b83d2f043ac309"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/9a/3c/c17fb3ca2d9c3acff52e30b309f538586f9f5b9c9cf454f3845fc9af4881/certifi-2026.2.25-py3-none-any.whl"
    sha256 "027692e4402ad994f1c42e52a4997a9763c646b73e4096e4d5d6db8af1d6f0fa"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/98/78/01c019cdb5d6498122777c1a43056ebb3ebfeef2076d9d026bfe15583b2b/click-8.3.1-py3-none-any.whl"
    sha256 "981153a64e25f12d547d3426c367a4857371575ee7ad18df2a6183ab0545b2a6"
  end

  resource "docstring-parser" do
    url "https://files.pythonhosted.org/packages/55/e2/2537ebcff11c1ee1ff17d8d0b6f4db75873e3b0fb32c2d4a2ee31ecb310a/docstring_parser-0.17.0-py3-none-any.whl"
    sha256 "cf2569abd23dce8099b300f9b4fa8191e9582dda731fd533daf54c4551658708"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/04/4b/29cac41a4d98d144bf5f6d33995617b185d14b22401f75ca86f384e87ff1/h11-0.16.0-py3-none-any.whl"
    sha256 "63cf8bbe7522de3bf65932fda1d9c2772064ffb3dae62d55932da54b31cb6c86"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/7e/f5/f66802a942d491edb555dd61e3a9961140fd64c90bce1eafd741609d334d/httpcore-1.0.9-py3-none-any.whl"
    sha256 "2d400746a40668fc9dec9810239072b40b4484b640a8c38fd654a024c7a1bf55"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/2a/39/e50c7c3a983047577ee07d2a9e53faf5a69493943ec3f6a384bdc792deb2/httpx-0.28.1-py3-none-any.whl"
    sha256 "d909fcccc110f8c7faf814ca82a9a4d816bc5a6dbfea25d6591d6985b8ba59ad"
  end

  resource "httpx-sse" do
    url "https://files.pythonhosted.org/packages/d2/fd/6668e5aec43ab844de6fc74927e155a3b37bf40d7c3790e49fc0406b6578/httpx_sse-0.4.3-py3-none-any.whl"
    sha256 "0ac1c9fe3c0afad2e0ebb25a934a59f4c7823b60792691f779fad2c5568830fc"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/0e/61/66938bbb5fc52dbdf84594873d5b51fb1f7c7794e9c0f5bd885f30bc507b/idna-3.11-py3-none-any.whl"
    sha256 "771a87f49d9defaf64091e6e6fe9c18d4833f140bd19464795bc32d966ca37ea"
  end

  resource "jinja2" do
    url "https://files.pythonhosted.org/packages/62/a1/3d680cbfd5f4b8f15abc1d571870c5fc3e594bb582bc3b64ea099db13e56/jinja2-3.1.6-py3-none-any.whl"
    sha256 "85ece4451f492d0c13c5dd7c13a64681a86afae63a5f347908daf103ce6d2f67"
  end

  resource "jsonschema" do
    url "https://files.pythonhosted.org/packages/69/90/f63fb5873511e014207a475e2bb4e8b2e570d655b00ac19a9a0ca0a385ee/jsonschema-4.26.0-py3-none-any.whl"
    sha256 "d489f15263b8d200f8387e64b4c3a75f06629559fb73deb8fdfb525f2dab50ce"
  end

  resource "jsonschema-specifications" do
    url "https://files.pythonhosted.org/packages/41/45/1a4ed80516f02155c51f51e8cedb3c1902296743db0bbc66608a0db2814f/jsonschema_specifications-2025.9.1-py3-none-any.whl"
    sha256 "98802fee3a11ee76ecaca44429fda8a41bff98b00a0f2838151b113f210cc6fe"
  end

  resource "lark" do
    url "https://files.pythonhosted.org/packages/82/3d/14ce75ef66813643812f3093ab17e46d3a206942ce7376d31ec2d36229e7/lark-1.3.1-py3-none-any.whl"
    sha256 "c629b661023a014c37da873b4ff58a817398d12635d3bbb2c5a03be7fe5d1e12"
  end

  resource "markupsafe" do
    url "https://files.pythonhosted.org/packages/7e/99/7690b6d4034fffd95959cbe0c02de8deb3098cc577c67bb6a24fe5d7caa7/markupsafe-3.0.3.tar.gz"
    sha256 "722695808f4b6457b320fdc131280796bdceb04ab50fe1795cd540799ebe1698"
  end

  resource "mcp" do
    url "https://files.pythonhosted.org/packages/fd/d9/eaa1f80170d2b7c5ba23f3b59f766f3a0bb41155fbc32a69adfa1adaaef9/mcp-1.26.0-py3-none-any.whl"
    sha256 "904a21c33c25aa98ddbeb47273033c435e595bbacfdb177f4bd87f6dceebe1ca"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/5a/87/b70ad306ebb6f9b585f114d0ac2137d792b48be34d732d60e597c2f8465a/pydantic-2.12.5-py3-none-any.whl"
    sha256 "e561593fccf61e8a20fc46dfc2dfe075b8be7d0188df33f221ad1f0139180f9d"
  end

  resource "pydantic-core" do
    url "https://files.pythonhosted.org/packages/71/70/23b021c950c2addd24ec408e9ab05d59b035b39d97cdc1130e1bce647bb6/pydantic_core-2.41.5.tar.gz"
    sha256 "08daa51ea16ad373ffd5e7606252cc32f07bc72b28284b6bc9c6df804816476e"
  end

  resource "pydantic-settings" do
    url "https://files.pythonhosted.org/packages/00/4b/ccc026168948fec4f7555b9164c724cf4125eac006e176541483d2c959be/pydantic_settings-2.13.1-py3-none-any.whl"
    sha256 "d56fd801823dbeae7f0975e1f8c8e25c258eb75d278ea7abb5d9cebb01b56237"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/c7/21/705964c7812476f378728bdf590ca4b771ec72385c533964653c68e86bdc/pygments-2.19.2-py3-none-any.whl"
    sha256 "86540386c03d588bb81d44bc3928634ff26449851e99741617ecb9037ee5ec0b"
  end

  resource "pyjwt" do
    url "https://files.pythonhosted.org/packages/e5/7a/8dd906bd22e79e47397a61742927f6747fe93242ef86645ee9092e610244/pyjwt-2.12.1-py3-none-any.whl"
    sha256 "28ca37c070cad8ba8cd9790cd940535d40274d22f80ab87f3ac6a713e6e8454c"
  end

  resource "python-dotenv" do
    url "https://files.pythonhosted.org/packages/0b/d7/1959b9648791274998a9c3526f6d0ec8fd2233e4d4acce81bbae76b44b2a/python_dotenv-1.2.2-py3-none-any.whl"
    sha256 "1d8214789a24de455a8b8bd8ae6fe3c6b69a5e3d64aa8a8e5d68e694bbcb285a"
  end

  resource "python-multipart" do
    url "https://files.pythonhosted.org/packages/1b/d0/397f9626e711ff749a95d96b7af99b9c566a9bb5129b8e4c10fc4d100304/python_multipart-0.0.22-py3-none-any.whl"
    sha256 "2b2cd894c83d21bf49d702499531c7bafd057d730c201782048f7945d82de155"
  end

  resource "referencing" do
    url "https://files.pythonhosted.org/packages/2c/58/ca301544e1fa93ed4f80d724bf5b194f6e4b945841c5bfd555878eea9fcb/referencing-0.37.0-py3-none-any.whl"
    sha256 "381329a9f99628c9069361716891d34ad94af76e461dcb0335825aecc7692231"
  end

  resource "rpds-py" do
    url "https://files.pythonhosted.org/packages/20/af/3f2f423103f1113b36230496629986e0ef7e199d2aa8392452b484b38ced/rpds_py-0.30.0.tar.gz"
    sha256 "dd8ff7cf90014af0c0f787eea34794ebf6415242ee1d6fa91eaba725cc441e84"
  end

  resource "sse-starlette" do
    url "https://files.pythonhosted.org/packages/78/e2/b8cff57a67dddf9a464d7e943218e031617fb3ddc133aeeb0602ff5f6c85/sse_starlette-3.3.3-py3-none-any.whl"
    sha256 "c5abb5082a1cc1c6294d89c5290c46b5f67808cfdb612b7ec27e8ba061c22e8d"
  end

  resource "starlette" do
    url "https://files.pythonhosted.org/packages/0b/c9/584bc9651441b4ba60cc4d557d8a547b5aff901af35bda3a4ee30c819b82/starlette-1.0.0-py3-none-any.whl"
    sha256 "d3ec55e0bb321692d275455ddfd3df75fff145d009685eb40dc91fc66b03d38b"
  end

  resource "tomlkit" do
    url "https://files.pythonhosted.org/packages/b5/11/87d6d29fb5d237229d67973a6c9e06e048f01cf4994dee194ab0ea841814/tomlkit-0.14.0-py3-none-any.whl"
    sha256 "592064ed85b40fa213469f81ac584f67a4f2992509a7c3ea2d632208623a3680"
  end

  resource "typeguard" do
    url "https://files.pythonhosted.org/packages/91/88/b55b3117287a8540b76dbdd87733808d4d01c8067a3b339408c250bb3600/typeguard-4.5.1-py3-none-any.whl"
    sha256 "44d2bf329d49a244110a090b55f5f91aa82d9a9834ebfd30bcc73651e4a8cc40"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/18/67/36e9267722cc04a6b9f15c7f3441c2363321a3ea07da7ae0c0707beb2a9c/typing_extensions-4.15.0-py3-none-any.whl"
    sha256 "f0fa19c6845758ab08074a0cfa8b7aecb71c999ca73d62883bc25cc018c4e548"
  end

  resource "typing-inspection" do
    url "https://files.pythonhosted.org/packages/dc/9b/47798a6c91d8bdb567fe2698fe81e0c6b7cb7ef4d13da4114b41d239f65d/typing_inspection-0.4.2-py3-none-any.whl"
    sha256 "4ed1cacbdc298c220f1bd249ed5287caa16f34d44ef4e9c3d0cbad5b521545e7"
  end

  resource "tyro" do
    url "https://files.pythonhosted.org/packages/05/be/a0b4c9fa64999a2e337cbefcdedd2e101e8dd88a84e4fa497bd0e4531dc1/tyro-1.0.10-py3-none-any.whl"
    sha256 "8de87a3a40c8a91f10831f8f0638cd0eed00f0e4de9cd3d561e967f407477210"
  end

  resource "uvicorn" do
    url "https://files.pythonhosted.org/packages/0a/89/f8827ccff89c1586027a105e5630ff6139a64da2515e24dafe860bd9ae4d/uvicorn-0.42.0-py3-none-any.whl"
    sha256 "96c30f5c7abe6f74ae8900a70e92b85ad6613b745d4879eb9b16ccad15645359"
  end

  def install
    virtualenv_install_with_resources
    # Symlink argcomplete's helper for shell completion setup
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
