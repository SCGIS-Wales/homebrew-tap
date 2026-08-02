class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.44"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.44/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "7fba54d71d9c86213ee7c78fa25ae3b8e6e97f2d32bee23633fc33683ae998db"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.44/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "71dcf1bc0478f48ba749c6b3f0e9adafe0f90c88e6141835dae19a84cd074097"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.44/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7caa9d346cecd16a7af29071d397edee04d7c47f9db1e7d91e80be48ad2c6120"

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
