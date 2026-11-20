class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "4.0.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v4.0.2/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "8072da555622bb572ea05d3de1284b97ef9001f042bb286688478ce9612416da"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v4.0.2/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "c205dfaea04415f9e8e22f19b9eb6bf6498867f8168fc96ca2d4c46305dec5ca"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v4.0.2/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4056713163045c1d4bf22bd5b8cd253498f581ea621bf8700f049d29870dfe5e"

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
