class Dcert < Formula
  desc "CLI to decode and validate TLS certificates from PEM files"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "2.0.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v2.0.3/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "374cc4b3efeee3a56e05a2f85f94a0ae82c49ca72c22fd6c9cdeac9f59a68cb1"

      def install
        bin.install "dcert"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v2.0.3/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "d12a0ea6c3ff61ac996392d53ac42e93bed45d10f1782865b1f981e693568405"

      def install
        bin.install "dcert"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v2.0.3/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "627d67f19fa0fe8ec19e3d44bc3624b0f71ea9a6e98d286eb3b6bd35a182cc1e"

      def install
        bin.install "dcert"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dcert --version")
  end
end
