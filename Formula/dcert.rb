class Dcert < Formula
  desc "Decode, validate and convert X.509 certificates and diagnose TLS endpoints"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "4.0.14"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v4.0.14/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "6b62e3e89cfccfdc8801e4f812cf6629f8c3743d5e2e9996679bd05ee7f2609d"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v4.0.14/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "d1d89561e43a06c21e67e32d83002fef680d9e7b8bbe650d2b3ae008aec53f10"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v4.0.14/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ecf174c3f66542db6ee2c0862e4022136f95f8db1561990f35e606a1bb27b822"

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
