class Dcert < Formula
  desc "CLI to decode and validate TLS certificates from PEM files"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "2.0.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v2.0.5/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "c32e8631be8e2c26ed742aea82de4a194dbe877849e128b28107dd3360eca155"

      def install
        bin.install "dcert"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v2.0.5/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "ee2f6ad5efeaa299948212c77985c44fa33282eca0f6b7bffff5e94d94324cc4"

      def install
        bin.install "dcert"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v2.0.5/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "98df44996241fa7566ae4689035e0c652e21457b79674e173bf5b4e7f3df7a24"

      def install
        bin.install "dcert"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dcert --version")
  end
end
