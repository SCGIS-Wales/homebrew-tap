class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.78"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.78/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "7722a3d5c6232295e0f4eb49a6cd9dd30311db8b23141fa7e7bb4a0c78b38e5f"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.78/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "7087628a4182137765f3e83f93c49881da8c429c2ced29dfea06de31629c816f"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.78/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3e0cf3b64d2656c0f72df979de43508851e88707d04ac6b96e807197f5f3f3c8"

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
