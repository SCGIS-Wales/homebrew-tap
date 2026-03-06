class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.23"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.23/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "11e5e68970865e9d2475e85ffc44ca7403302d24accd16bc3b9bef17acbc1651"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.23/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "ab8f4aa87faabc25de5037f116eb78c5cb4635f73d2771f4821245869433e0cd"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.23/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b8e124f53ccbda3c11cbba21d99aa0aa0ad07b723aa68a70455355335bd4fe4b"

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
