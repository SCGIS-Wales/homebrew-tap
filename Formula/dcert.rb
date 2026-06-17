class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.39"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.39/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "544d558d665bdc6fc3e36562ab433d14be3fd8b2c07902fb00f1cad460a40f3a"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.39/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "7435a755c54de8760d82763458b6b29bfe10976e561c81c2b3c228dc695302bc"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.39/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6070a4e7f45f261ee87624bf91fdad44089da32ad7b5056749414356975e9a75"

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
