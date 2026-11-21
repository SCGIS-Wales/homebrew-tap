class Dcert < Formula
  desc "Decode, validate and convert X.509 certificates and diagnose TLS endpoints"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "4.0.12"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v4.0.12/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "d4f19260db4925987196a96fe8a2d42163802ca0f6054cb7d9e54c3497c8f289"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v4.0.12/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "3c025b4c8bc1abd31f8fe68bf954b530bc216696641c429f203ffc3819d12174"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v4.0.12/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0c2cc94f47e3aeaa50fb3afb1a4c669f92c833d7ff3fc0243d845ffdea8d2abe"

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
