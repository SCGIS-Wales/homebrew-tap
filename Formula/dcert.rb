class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.74"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.74/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "09a61aed3333ad87ab7dac31f4bc3fb70be38bbc4633d70812be0d0f1e394db9"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.74/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "4d96fc1815ef11bb9d545c119313c4c16a55953beecc5425326a7a7e635b6fb6"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.74/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "354a9beee0bf9c3f9e0611cfdacf25f7faa6d5e6988e1f1e25ec01361d77148f"

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
