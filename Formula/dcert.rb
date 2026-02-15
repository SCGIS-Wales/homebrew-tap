class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.6/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "90e34e16057842936888e7471b6aceb09c8aecd6f8a84f0a3ccf0b43baf5063d"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.6/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "ebb25a87776d7173ca95ae457b44b13573ae4a3c51d852731cff675e041aadb1"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.6/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6939b3a25636afb785fde4054db2d34d710c8219ee81c579eaea2b0fafac85ab"

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
