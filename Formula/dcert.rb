class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.7"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.7/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "53d1fa4086c3125e1894b9ec652e93da168b60c174e1f3fb3fb1b744be6fbd34"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.7/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "a9d6ee5bc5a9ad0f04839c7632848d4f3ab0bd8ea4ac3eeb53d2c6d30356ef9a"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.7/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "111da02a8dfdb69abca836a84f4eb75232335465ab7c047552b9fa4d0647346e"

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
