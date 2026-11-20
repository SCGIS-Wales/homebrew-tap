class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "4.0.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v4.0.3/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "874d8156a533c8fc449ac26480b40e57f3b5e8e907099aa934922ba664e19b0a"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v4.0.3/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "df579b9423e3266c4e24239b5a75c2aeb1bfdddae56c0edd954bf6365814c03d"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v4.0.3/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c3d7bce14d8dbb67fff04525ade727b082a096d45b66e0e4547b0c18a3bbc4d0"

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
