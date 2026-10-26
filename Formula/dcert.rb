class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.57"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.57/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "070a212292b45809112f5057263307650625306c3a49342758dee9b114dfe4c2"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.57/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "6b96cd91c0f2293981f638c44af6c5d0584943cd8a400bfba351de051345e1c9"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.57/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7a5a6fc8c811860108b84d8b2a96e76f58ae4532d2011782d9281ee8569f0a46"

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
