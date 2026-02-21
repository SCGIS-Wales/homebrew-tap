class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.17"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.17/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "050cc63be50afbf7a074f0b57c77a136d040b16131c97efa948efd20a38bab71"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.17/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "37e97c2e43d598e26b798d3d913f4c7bd798fecd35e1decabe098ce6aac8030a"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.17/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7b344d059241173d341bcf3fabeb02a6a5e638935abb97d7d7e181725cad207d"

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
