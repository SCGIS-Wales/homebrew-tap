class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.51"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.51/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "385fc5f8c3eb9d5197cdd4618adfd4a85ea679e5c138e1c07fbd82099720e986"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.51/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "a6fa3ef8c9f431d9af245f342765d7e3bde91248ec94f63ccecba6247dc782b0"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.51/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dc9cb286bb0d4a5210cebbe534adeb406dd227bf5faea80edc078bc7c7df636c"

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
