class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.92"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.92/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "9b556150bc97658d1f4782258705307f7a693c54861e4b22a29728193f7481f6"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.92/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "0fd82a123d642a6e3b1b608ee6e400fa81e4d7da87129a3d90a45c6f14154e9f"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.92/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "04cd41fce1b0612e3892d7c83d753f351718d3e6b4459b91ac9cb65926bd588a"

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
