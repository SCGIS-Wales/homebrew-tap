class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.71"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.71/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "1b7ecd557265bdefce4a441f900588f89d07b2489547635a8038cbb8ddd8af0a"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.71/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "49466d1e2514e9931f721e1c477b43531ec0bd7ddf82b6605781c740ec808f52"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.71/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4d59a7430336af3561391ac4f564f291baf6c78d0d6899c38487379f514f1f8a"

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
