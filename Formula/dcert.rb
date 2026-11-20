class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "4.0.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v4.0.4/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "6c1f48b62c7daf7916760d7dfb3e1d19ddba19873cd2102ddf576c1d582db6b9"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v4.0.4/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "276bee5d5dbb784071513220fe8bafabaf76897ec99c0b11bcf7eb7446df6123"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v4.0.4/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dfb23466552b2eaff9ce96574dc8631fd7505c434666a66b1e2f3b87a0ce8223"

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
