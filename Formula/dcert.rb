class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.22"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.22/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "b7cd4747e619109974cb8090089b5b89b10d94d3688ef46a96ec4d7ffb9a8fda"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.22/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "feb04d96fa92d234a318679fd2cf7091b20e2bbb50b7d82fcc39bb3df6c52acc"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.22/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7413251adf897d60dfbf244b95cc497ccea96bbd68293238d338afe24bccdf6b"

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
