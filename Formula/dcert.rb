class Dcert < Formula
  desc "Decode, validate and convert X.509 certificates and diagnose TLS endpoints"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "4.0.13"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v4.0.13/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "63e23b9bc371e9dd1b7d1b626f365207eb880aec851611c7e435d241eec1f9d9"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v4.0.13/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "b05f707e021a77af92aa758ae33b878b2c881136eb0583d0e657ab9a10e7b2bc"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v4.0.13/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "48807823851154561e70431c2101fc5bf8d68f1d8b5f719966390e61ffc84b0a"

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
