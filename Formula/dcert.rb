class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.41"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.41/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "061d0ca410d261d3832cd92f6901355e134e342e13a3f880c03e0040abefc203"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.41/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "702071229f4530bba52d9e82c1de201f6ccda3330b91611d9b8e91c5a8d92ef8"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.41/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "33593f441c67d1b9acb23b0c43c6346fb89edf45aca6e60a128fd7248afa08ca"

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
