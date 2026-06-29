class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.42"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.42/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "6f25575f77527d2b8e31a4900f35b0fbe489b21a74b9f219a932519d2d59b315"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.42/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "9fd5acc290455eb5cca4166ab4b6928d13333d644c69f5bc640c9821c6083491"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.42/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c8c4dc7078c4ebe2ed2292c46abcf17f0e4d0c683395c277be1fc800787d2231"

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
