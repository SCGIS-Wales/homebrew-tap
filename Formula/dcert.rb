class Dcert < Formula
  desc "CLI to decode and validate TLS certificates from PEM files"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "2.0.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v2.0.6/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "6c20d507dcbc87b8fe0e022e6ea71efb0256d06ccb14fd65e485a96c4eb71c9f"

      def install
        bin.install "dcert"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v2.0.6/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "e66526b40fa58fa0061bcbfa5cfc43f963927884d969d0c60aed9075dca8105e"

      def install
        bin.install "dcert"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v2.0.6/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5b1fa1abc2e52361ae8f3ba3a0672be33fbf252b916b3b8256da1be212cc4a48"

      def install
        bin.install "dcert"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dcert --version")
  end
end
