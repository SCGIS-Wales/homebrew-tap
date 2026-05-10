class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.34"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.34/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "b252c48109db5bff59e5f2141051622349af75f34b9140c5abe0590bf6130af9"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.34/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "973ac011ae3d4240322fac667e592bb4899139f30a2b34205dbca6cf5894bc41"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.34/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "47f8b66d7bf264c4e0169ef5d5ee159423cd86cf7b6c02da2e433615e516da2e"

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
