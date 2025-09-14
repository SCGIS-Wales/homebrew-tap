class Dcert < Formula
  desc "CLI to decode and validate TLS certificates from PEM files"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v1.0.0/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "REPLACE_WITH_ACTUAL_MACOS_X86_SHA256"

      def install
        bin.install "dcert"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v1.0.0/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "REPLACE_WITH_ACTUAL_MACOS_ARM_SHA256"

      def install
        bin.install "dcert"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v1.0.0/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "REPLACE_WITH_ACTUAL_LINUX_X86_SHA256"

      def install
        bin.install "dcert"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dcert --version")
  end
end
