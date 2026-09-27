class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.48"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.48/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "d2c4ec773fa6683fa1e98ea974722adc81215c755f217163bff349bc60242842"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.48/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "74972abebc6461e706834c6de9a2bdc075ade89bb05a25cd0306c68e93c6bf00"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.48/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "379712e652ffc9e4bbd6819e8a242c8c9befa546237ecb7f7fc88b14ad4f0e78"

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
