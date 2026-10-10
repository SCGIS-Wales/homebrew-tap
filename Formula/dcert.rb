class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.50"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.50/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "c2042405c37ad0e293ba26c9e455b374d2ef6229ff53c9264ed24d9f879e1d21"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.50/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "79410ae8f893b59b5696a3766ff6af886eff78aec35e22718c72acf8a1619fa1"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.50/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bcc222f9af8a2221af90ae804e0d05f02d64cdf9ef6fc62e967f1c3c982fcabb"

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
