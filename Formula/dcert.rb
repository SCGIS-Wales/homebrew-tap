class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.27"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.27/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "cdb6e930f23cbe9c660bd04ed1e9d2023e1f3560f0f47ab076d8923352c066cd"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.27/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "ab97a52fc17506000d232c3ea2ae033636ba3b799137f46f1e7351f112dace89"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.27/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "385420c835ce17381ba4d159a2142578093c25b3c6a0d2ee4e084a07d8b1ae40"

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
