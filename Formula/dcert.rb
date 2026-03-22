class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.32"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.32/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "8c2049d20cde80b882f8e6b6393d88975ad95e9e2cd53854a839c4bdf6a379d3"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.32/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "000dafccafcd19b8eb7a45132062fc8713baf7c7a9a6b645aba9036fb8e37fe6"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.32/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3830773f4e4372a13797f5a733b6bd72efc3b556833f745a824b6837f3c42ec2"

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
