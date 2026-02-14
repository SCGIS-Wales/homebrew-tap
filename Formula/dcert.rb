class Dcert < Formula
  desc "CLI to decode and validate TLS certificates from PEM files"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "2.0.10"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v2.0.10/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "388e797e2fa8847ee3ead90d43c244163afe9743581f3b19148c9c5db6929cab"

      def install
        bin.install "dcert"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v2.0.10/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "1a3752913d8f1394304cfc6aa87bb5174d27906d251e9acd8c404a606e1fd9aa"

      def install
        bin.install "dcert"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v2.0.10/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1a08c2a5acd49f707b27fb0e0aa7e48f264637458305b3918203c3770daa6c55"

      def install
        bin.install "dcert"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dcert --version")
  end
end
