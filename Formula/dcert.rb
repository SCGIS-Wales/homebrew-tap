class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.70"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.70/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "eda52d3209e4049a58d6651fe6cced33a5a91e4186b3f26b472a34370b63f227"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.70/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "0d2a4618334ed448c8e2f0fc38d1007278f92552869956e76d33fb06e4aa1ae7"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.70/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "001e4b658c0283334aad83de982437aa64efcc35de886ff809337f30002247ae"

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
