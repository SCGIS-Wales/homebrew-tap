class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.47"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.47/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "fe5f26bd919923824e06e49a338a83a94e06a3d6625a26d1acc3b9e199c4420a"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.47/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "306b3f674771279314d98b45965ed95a8c339dfd79c9d0e0b4ad72db1b06c875"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.47/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "402c36d261b3893e74c90c361c8ba72b620428722e205a97fee882feac8271a4"

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
