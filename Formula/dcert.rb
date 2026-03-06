class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.24"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.24/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "58d3a872de71e9f798694a56aabcc9da4faf822652e541e580eea6d38379202b"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.24/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "c7f514251835395fd73961b3f7df05f7119a10a8d8e04d455e16768c2cf4583c"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.24/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2016a28e62882e8846a1e76d43f56ed0a8881881870b05dc91cf5441b56a4644"

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
