class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "4.0.7"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v4.0.7/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "4b6f90ea4e58f43197e9579219e8cce935440f668df9c664cd84ec6de0348e9b"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v4.0.7/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "9858c469ec132803a96c33cefbe050b4523538073c31cc12ab0855f513f1824c"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v4.0.7/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9cdad1a02afa6f5acd72fbe16a71b8cd6e7eb6685dc4382a1300de0922509bcf"

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
