class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.59"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.59/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "59554f1665e282e194345b51e2467d40b6fbf985337cd7e08630d5c7a601e8ea"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.59/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "eec9322e5bf0acc714a6db1f8fcb4a80f1b8d214edb9bc384fb702faeea4268e"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.59/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bfa0f6c7e5c9303d711b1b074b54df9f248922c2bf0266e87da3a2cea93323d3"

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
