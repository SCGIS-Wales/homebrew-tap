class Dcert < Formula
  desc "CLI to decode and validate TLS certificates from PEM files"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "2.0.7"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v2.0.7/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "86d38ce15076a51b16e817932e70e5d6834f7923197f8053dfe47f4308925b1d"

      def install
        bin.install "dcert"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v2.0.7/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "d74774a9d9b0b7b063314d65ba476b6ccf22ece28bea1b913c90e2a547e4f7e1"

      def install
        bin.install "dcert"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v2.0.7/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a1c82061f335283a3a7f96ffb53d4a53db609612c6d4784a59f8fa1efbc777c5"

      def install
        bin.install "dcert"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dcert --version")
  end
end
