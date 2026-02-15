class Dcert < Formula
  desc "CLI to decode and validate TLS certificates from PEM files"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.1/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "9baf829d7ccf11057033a15101f6d5191a58d3295a657266c7d9e0b10cfbaddf"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.1/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "e36405262e81c0ab99d42225b230d2cc96f8885009b6f0395cf309615cfbdc7d"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.1/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6e41bc847bf80ca23b581f1f1c1b902ccd7783d5c5a5b3ce869ef4d19b3d30f7"

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
