class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.88"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.88/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "088c21547102d61dd321e470db10ac732f5fdd35dfe6f1b643c7c7be84840ceb"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.88/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "c4a4b89a16508e0e36797ec2e73c661d89d2556ab1598602fa8a55076098eace"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.88/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6b14d9ced1712082750da35e7d06f7833e9cf6ce9c63ef6877544e0381da12cb"

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
