class Dcert < Formula
  desc "Decode, validate and convert X.509 certificates and diagnose TLS endpoints"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "4.0.11"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v4.0.11/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "8642d25e35772a2cd4cb982d8391223154120c466dd4c11cab4fa7256b6b6989"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v4.0.11/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "93d289fe518c7bc02cbb3445f7ec21c4df64da76151e9a8a7749a7c6d216b118"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v4.0.11/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "45c100541545b439ed835bda6c0cb5386b064c057fa37f992817725a47359a89"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dcert --version")
  end
end
