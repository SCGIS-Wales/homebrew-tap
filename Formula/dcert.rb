class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.90"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.90/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "6f142004eb9bd3df6fde810300d9097fed8efe75282c5052dcf55a64597223a9"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.90/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "8e8910f21a6e2aa9dce9a6b671f3d1c032ce8be29fb2fb631891a2e81bf36d24"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.90/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "99be28c5ea280fda20ba59db655a6dc4599b7aad9c2fd1082fa44cabe654994a"

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
