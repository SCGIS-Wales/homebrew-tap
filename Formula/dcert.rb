class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.25"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.25/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "706d8e210507ccfbb30e851142769df7a38c26f3098ea17c169a472c105a79da"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.25/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "bcb63879ba342ab553c8155ad0c9e1f7ef7e1fc446dfbab682ff293cdb2939c9"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.25/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "18654c3aafa2aec41328de30a9d5d52b9a817a11e573ad0b6ab052890b6c104f"

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
