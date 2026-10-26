class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.64"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.64/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "411e9f63e4011531fa9d59ecfae5e9dc7b0afad187a00cf67a38ea5d20907b4b"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.64/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "01b383bab6c2b9ee820083b740706749e0065da35c1abffc305b4454a32fed4b"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.64/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b90bdfef04f5363010085a7983f688980b6b1cbf44eda5f5df2e75073ff9bc8a"

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
