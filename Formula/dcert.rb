class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.14"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.14/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "cb300e95116d839ae09d147124847207e87cd0945198536ff7f8c66bcd705065"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.14/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "82ec067957755659bed6820ac1f71f4e41669007b5e7510c893483f67efb5e0d"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.14/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ffd4d16bea22b1827375dee1a5a84f8c8926302501bb13c5e58a11801a1707e5"

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
