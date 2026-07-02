class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.43"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.43/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "2d5e9db546a432ac60856c9faad15c87da050e5becdca56e840bee13ae7d15a1"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.43/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "c67f3c657e3e7769c70c0d29d37d02d070d38663cec97a5a9fc6673b326c0cd8"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.43/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6ec5a33f9c7598ce15abe38d45190a2ae2ea56e58c860c380c6c3251686956df"

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
