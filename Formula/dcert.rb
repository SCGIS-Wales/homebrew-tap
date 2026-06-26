class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.40"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.40/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "4a6c867cf9f7fbf41fdc2c8d3dac7bee0dba967f4b56e2551f0609d467a6fcba"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.40/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "e2a480498c32c0e569148442859af9fcbde68a2bc3148b62bc651d1d993b0cc6"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.40/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9dd4324493b2652a7d53926a5a99ac37f72d5ae8c0a4d8c811c19e83755e71ba"

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
