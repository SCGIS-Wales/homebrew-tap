class Dcert < Formula
  desc "CLI to decode and validate TLS certificates from PEM files"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "2.0.8"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v2.0.8/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "ed0e31dbeddd12eb0f03fc1ad353d2fe40ecafc95f5a7f2293ebf5e76b682af2"

      def install
        bin.install "dcert"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v2.0.8/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "2e2e8a783a41f479ace3815735b8779139f7480e25c3ab3aaa2d26d153adbdbe"

      def install
        bin.install "dcert"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v2.0.8/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "978b29174dc90244bdceb2635d26f4e05f89363b612ac513408afe6c4b323cfd"

      def install
        bin.install "dcert"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dcert --version")
  end
end
