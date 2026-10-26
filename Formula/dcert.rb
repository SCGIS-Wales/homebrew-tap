class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.69"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.69/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "f2c61f2dac7d3825ecf6231f26214dca249c56d83231a6ab7842478a499cd776"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.69/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "e98f19a02bd6d1fe4b31456ddb2914fd4b3f749f4e32ef398814511fc118eaff"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.69/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "874932c472fc9acb88be57e09d1142dc1e80908c7ac8129ee8cbe562c7fc3ac8"

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
