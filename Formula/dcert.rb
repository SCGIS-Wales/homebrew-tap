class Dcert < Formula
  desc "CLI to decode and validate TLS certificates from PEM files"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "2.0.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v2.0.1/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "5900932a0ba06fc16b7094f5bd01e016e0f46a82234f0d2fff35c03f821d8b0d"

      def install
        bin.install "dcert"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v2.0.1/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "3680c053b6c5f8504a3cd2c80d69ad3a2ef1c08216e5efc51cefcceffb5e9427"

      def install
        bin.install "dcert"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v2.0.1/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "202b8acbff7a3b55382439bf89769f794675bfabb5f8a34271833bc943b6f22b"

      def install
        bin.install "dcert"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dcert --version")
  end
end
