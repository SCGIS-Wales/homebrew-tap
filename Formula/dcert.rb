class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.93"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.93/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "9bf8caa7e29ec1a22a0f88f83591dc525b8e40d8b77e81f89d69c242b3dd4ec4"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.93/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "9f54cfe4e6b374953c5ba4a031c9a3ea6bd06d04cffb8cb5dff49603e680014e"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.93/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ca4874a129e56513156b083fb9a3022405e91d5d7f5a1b4b66898383284c3be5"

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
