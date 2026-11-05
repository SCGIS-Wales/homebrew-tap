class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.80"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.80/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "efff4e694bf27256802d30f2ed0caaa11d0da36b56f9677a86418258ed04c7eb"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.80/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "967b059fc019a6e6def194a65ff2bd30ccdbbf19e197eb141f18a83ceddec136"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.80/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b9a7f6d75ad9ece15ad028bdcadaed4f84111f54d27cfcdf7ee4623b6a3c1d37"

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
