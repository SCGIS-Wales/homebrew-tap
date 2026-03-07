class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.26"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.26/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "e2d2d9cbd3215f7dd0aff688f8ca216e36bbc432dc3af37b9416617192a290c8"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.26/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "ac525d504cac4e5f8f18e5254f15faa9a145b622f76dc75862e874e7bf53288d"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.26/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e14cc773df6a21945d01bb6e8d6283b28c60282d0df1731fea54aa4eee773980"

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
