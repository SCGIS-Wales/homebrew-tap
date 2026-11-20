class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.86"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.86/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "b7258014aba035cb6db0844294c221f7fa8ee7cabdedb0e2ba82d730c1d87a81"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.86/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "a8946b9366a4e8004645200e496d9d8a9644c7123e3fb2bcba71ffc78d88d09d"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.86/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c17b6eac38fca088db94de859e669b4d5e508b1d553c7564af40de7f52aa91b3"

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
