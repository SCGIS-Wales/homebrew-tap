class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.11"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.11/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "cb7a82fadb4f03a955d579b407c7b6affdbc93c2816d3503a17f736647a0b777"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.11/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "ea02d7a0616481b5e518698f05b898c5a4d6632ee3a6f36a29c02a3f099a30d4"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.11/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e81702f0aa602383f76a72144a995c8b99c05a3cf833d9b9f0eff45b703da7fb"

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
