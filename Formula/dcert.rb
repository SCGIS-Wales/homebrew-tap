class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.91"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.91/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "3702c7ccb9c40f6656b679f267ce3b1cb52758719f45624f94db24f11b81da2c"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.91/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "e51c9115535fe7159b9603d501671d84e89c7fb9d02fb06cc14f6acc0815dd70"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.91/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3a61998d9fe24d5c6d35925e8b67c62c3b874ba187444d6d58f284f5d6ee72a8"

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
