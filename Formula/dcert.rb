class Dcert < Formula
  desc "CLI to decode and validate TLS certificates from PEM files"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.0/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "d82e9ff3365781634574a6889111302cdcb4b966663e9040e9dab72729ab55b1"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.0/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "4197705333109fc78a329b598a6cce32b1438739a1d2822411db7b05503d913f"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.0/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "945abfd6a849965303b894b70cf39d810c881e79a4193138128a39ad0cb6d603"

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
