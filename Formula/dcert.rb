class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.29"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.29/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "daafa132059864d15e6f5c465dc48072520c47005a498ebc71c1932c89648e17"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.29/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "725700948e6d2b52ce8dfa048f9bd4595b088b5e3362a9eca776f3672e173646"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.29/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0e1d3cfce8227bc307e8e45f34f7decf68b0c1c8d452a40ec238590e21b00992"

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
