class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.66"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.66/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "5953eecba753c515a0056e22c7bd0c4a375d82991a4571a2cabca0960fa80297"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.66/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "83b7c03661670372b4d5bd9a3fcd2cb915915188af3b8739f2401a48b4c316c7"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.66/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d96d354426e2f7823e8265aea429679b6102c5d1cfb18497c20ff2fa85c16ad7"

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
