class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.19"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.19/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "5a05bd438e23199f12a683629ec819747bec4ef35bdc87d1e191c421fad34336"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.19/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "7c940e9ca5bf104583fcb8a63c865dc535eefb7969d496609836ac55f61bcda3"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.19/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "370df668bb9f0e0d7724eb10543ff143d10d46e066adcb3867dce3193cd0b6fc"

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
