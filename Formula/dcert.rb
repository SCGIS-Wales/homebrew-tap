class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.62"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.62/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "d9071a2c3fa6ceb3b82a5bcb5a1119624adfe2333aedc7d18fd7150b24b97385"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.62/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "da752048753fed6e37d984a849e1d7f5149405f782f497047e937004e39c4b8e"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.62/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d4cc8573de5a3e3c4a98917b214c413cbcdc64f856104107211785cd7a24a28f"

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
