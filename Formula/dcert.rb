class Dcert < Formula
  desc "CLI to decode and validate TLS certificates from PEM files"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v1.0.0/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "f4740e4855f01ed28ad2a7c4751d3d4d9304f09c35d8007d1414ed6f14889f06"

      def install
        bin.install "dcert"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v1.0.0/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "505135e9c33ffd9df7dd4780d1346d96d6a541a2b32350131aaf5514696a15cf"

      def install
        bin.install "dcert"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v1.0.0/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "30261b7190a502c403a73e1d0b69bc66f5ede418381cce3108aeff0899b2eb3f"

      def install
        bin.install "dcert"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dcert --version")
  end
end
