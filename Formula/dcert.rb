class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.15"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.15/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "c2064d7c86ebb3165b88d110c4e0f9bd530073bf268e45d2c6bc981469c666d8"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.15/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "1f95c6154720414bb4f722b41974cbd6e142f28adf3e5c8f05dda584483d8cc4"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.15/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "352b9ba6e1b184339ffa8948ef9565aeee417102a06e56e2f0b032b8ee86f63e"

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
