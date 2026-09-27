class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.49"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.49/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "cc357acac88637f7ac1bfd91d80ee44bff495c7b2b87e05ce5934e9d1520ddff"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.49/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "d6d6dcc4349441db40777c3c2ab36fc98fb470bbfb3c9a763d8bf8ac0092bb68"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.49/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7d7f7b5d9ca8ee950f4481012b02b2d30b54ad8ee0bfbf85aacaad4f3608c6ec"

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
