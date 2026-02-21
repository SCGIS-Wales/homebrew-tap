class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.16"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.16/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "b2001a8b646f88e62e9de8cfce641980979c5785120e7170132d7e231401e1bf"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.16/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "2f4e84ce7a0cf9595765bff612b0062635fca5ede114d689a092aa9c44c58586"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.16/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ca8d3dcee260745f1995e2f4b15e98b93c489ff2f715faf65ac4adb4934ba58e"

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
