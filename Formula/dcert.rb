class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.37"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.37/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "51813dd40812b029cd374d00277b342967d0437a600a212cb1d4397b313459c2"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.37/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "0c43e66c766e5e5ae129fbfabd31b9d71fc730678cf97a3e888d8716ac4cd923"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.37/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "98ddd59259bcee053e7149de1a60c5bc1f4ee8e2c5216963003f722d1c6df063"

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
