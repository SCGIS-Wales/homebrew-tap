class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.45"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.45/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "68ec8b0b9c1a8cd85bf4799ae5c9e6fad7d2b72cdf23a35311ec1d547b400423"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.45/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "504415af0bbf9c3bf7199a6bafe5067b134fcedf704f25155a9342554d8e9966"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.45/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "61cee8b8162bcdfca72806d27e90555d40180346c43c76bbbe7f94be89b0da1e"

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
