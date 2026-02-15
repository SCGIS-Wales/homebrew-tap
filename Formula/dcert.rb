class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.8"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.8/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "fdb0b2300134c8bacfc47618fe07249ff424a098e00b9337abaaa0e60a3c25de"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.8/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "2ef97122b5b83d9005fee5d9272d16f03d5bf4e5a8ba1247972ab7618cdaf36d"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.8/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0e4c7985e37b2480657f3e89ea4ff7c1d56a3f1f6e0bddafc5c0b0d5f69483f6"

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
