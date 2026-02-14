class Dcert < Formula
  desc "CLI to decode and validate TLS certificates from PEM files"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "2.0.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v2.0.2/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "18359e9fcdcdf1033cd62b45d5479a424b3a3c08f2fc3e9a1a6a73c6e3395ee5"

      def install
        bin.install "dcert"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v2.0.2/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "786b6fb17291ba1317ad33555855ef0f8e7a4b0b59eab104353bd97c9cb05955"

      def install
        bin.install "dcert"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v2.0.2/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2e3d45b180697c217866ed9d844063dc858aa86d5627115c17c0c577120fab17"

      def install
        bin.install "dcert"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dcert --version")
  end
end
