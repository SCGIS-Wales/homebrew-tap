class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.73"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.73/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "84f46358784ef306dd17fdacb0808d8e1776eb8108b00124fdedf9a9ec461980"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.73/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "94dc16dace4e4c6b3ad52888c346ff97c976dbe256d4cbc7dcc8a71abc78120a"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.73/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8d21dc2631d7bb0427d643620abcd7a88e0b656156ab296550569303c7a2fbb1"

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
