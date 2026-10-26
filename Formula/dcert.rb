class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.68"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.68/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "e514695b739ca84d503feeacf5e6439590d8a2109cb40b053c085ba5d3e8ecc3"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.68/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "3d0d32e39ed1f8b4c941eb7d67a55424a7019a92a6d7a6e5a9493c33cac95846"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.68/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fb968a7c2e0f2dcdbacf0973f48b0b3677e6bf399121753f58292f510ab0fff8"

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
