class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "4.0.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v4.0.6/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "7f18483a8401088f0cc5b8cd4151fb729627572d6d6e01e10e9086e453cf9e1c"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v4.0.6/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "3facbc261aba26444db24a97ab735226c2c4ec9183969fcd0bdcd3429a15c7ab"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v4.0.6/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fbdb69689caac286168d8ca3144fcd0bfbc569677e3c47408dd505b1b1609d62"

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
