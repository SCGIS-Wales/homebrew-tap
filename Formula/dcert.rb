class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.33"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.33/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "ff7694dbb3f8304220e0d3a83e0ae1cd74b59f3a17eef10cf5e24575ab6fb29c"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.33/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "98eb82d887a3acb8f1c6b8383689df24e3503615467ddf48dbd09d392302e22a"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.33/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "af97d96b0b8d53d462dbf9c2d336dbfbd8c630755756a27d369f915dfe1367a3"

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
