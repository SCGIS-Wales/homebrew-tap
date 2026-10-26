class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.53"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.53/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "25d67380699b4c5141f93a503b47e630cfc7bc011bcfdb5ddc1155181798faa0"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.53/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "b30f42758bfeccb73f8b18ab476afd7ba7344821f9c66a08bdc8ec32afb306d6"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.53/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "baf4841a33e228ffa68fdff708dc0af87352f6250a7a314ac876206bc872bf89"

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
