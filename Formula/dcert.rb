class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.35"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.35/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "aab800d38c3693dc1d7f4b4617d3439e8aab927e084adcef486a5f0cc64e4fa6"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.35/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "5d6d57fdfb99e08b8528eff0277638c07d1822bda958567a12895d76d6a59307"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.35/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3428c52557a2b773ea997f8d9b0fb08d6dfdf5aafec22605adb4405b9f874781"

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
