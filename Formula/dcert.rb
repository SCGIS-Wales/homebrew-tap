class Dcert < Formula
  desc "CLI to decode and validate TLS certificates from PEM files"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "2.0.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v2.0.4/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "26678e79c0c59cac30eff92b759eb26612fbe5a17a098a2372cd86e6ca403df8"

      def install
        bin.install "dcert"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v2.0.4/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "4741cc4a5b1494bde34390c366e9d70c937dc4d6de23703e109ddc623438a887"

      def install
        bin.install "dcert"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v2.0.4/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8b090c73e9b300d10626e2ff1d9f77f785920b00d763a93e68b89f155b979878"

      def install
        bin.install "dcert"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dcert --version")
  end
end
