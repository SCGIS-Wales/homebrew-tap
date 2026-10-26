class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.54"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.54/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "8b4aee4c23ef4089e63e9a9d03c2c78ab66136c2681b6a8250ca35ea36d3f503"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.54/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "228764ae28880dc4a214a0f94d61c081db5a85ea27e438db18b6fef15f1c914c"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.54/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "adb93eb57121d1519ad2611182677bd806ea845db660d2146334a9258b0abc77"

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
