class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.67"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.67/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "48e713c4212b57bfe510a2ab1f21f2465bd1c9dcf876836c740bbd6d775f43d5"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.67/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "874f9ca58ee0653e4021cdae2f8e8d30ddf1906061763c34c6e6a1917db6cce6"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.67/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "df6d794e149326a5d8914ff4f1dec41b625470039d3d460e26778e26bf2c1970"

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
