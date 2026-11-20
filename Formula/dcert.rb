class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.94"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.94/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "aeed638bfe037f57cc3bad02136d9c76b0c4db197a414f07f4649b0063272a94"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.94/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "0f87211bb2480dc681346e3c9b4b49862d68b5ee74aa8758188f5a68a3ae39fc"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.94/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "af17fa5e0183d6853ba514a957f18c9621476a8a563e31963ee5b85abfa6e6cd"

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
