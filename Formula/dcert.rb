class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "4.0.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v4.0.5/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "d36367cef6072a1730cb09e5fb061cb88df65fe902a1e58898c5b4f3b3d11e39"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v4.0.5/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "a8ebb3c8e360312ab0caf8ebd19e29fc0cd2ee79c1d4c7e1dc03a379f10cbab0"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v4.0.5/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7639e6068af79580f22a36e5c2cc0f531a3f50b45e61cf21fc617bca1d5caf9e"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dcert --version")
  end
end
