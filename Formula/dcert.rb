class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.52"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.52/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "f43515b624ba100d7c5e17c74f42f6fe81793dd13719fb10c7f2d8093679f697"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.52/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "f2a5cdc04856b2b4b8ea61fd9e4a31fcc2df56b6b47d111d0a2146e16ad10f50"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.52/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9fb200f84a18a9b7bdf620e220222f4709a15e882bcdd69be5094b3689e86c20"

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
