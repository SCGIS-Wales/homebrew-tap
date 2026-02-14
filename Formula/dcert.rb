class Dcert < Formula
  desc "CLI to decode and validate TLS certificates from PEM files"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "2.0.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v2.0.0/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "973da1f30f147e488dc19fe7ffd91dc13b620ce50789ca533dc0418083c9e0a4"

      def install
        bin.install "dcert"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v2.0.0/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "533d0e3f3007d3d199c2b7acd1c6224d66a69820bee29b21c02ec83b5f661756"

      def install
        bin.install "dcert"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v2.0.0/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9e945d39b71a00a4972c127bdabf10f4e83f7541f3447725bfe8b9c4e3289868"

      def install
        bin.install "dcert"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dcert --version")
  end
end
