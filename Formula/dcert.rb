class Dcert < Formula
  desc "CLI to decode and validate TLS certificates from PEM files"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v1.0.0/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "MACOS_X86_SHA256_PLACEHOLDER"
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v1.0.0/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "MACOS_ARM_SHA256_PLACEHOLDER"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v1.0.0/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "LINUX_X86_SHA256_PLACEHOLDER"
    end
  end

  def install
    bin.install "dcert"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dcert --version")
  end
end
