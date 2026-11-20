class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.81"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.81/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "7fcae88d36037ebb2c7b1ba4468f1552802dacdf78d7a4b03a00245067224647"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.81/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "eaa8884515967606a321fc4f1e1ea161795a4f8bc1d42e4f8774de6e15660f17"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.81/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2625e61276d956082ddaf414cd1b4aa340418cb5eb5d4f8bdfcc9c59ade31ab2"

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
