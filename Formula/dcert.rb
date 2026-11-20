class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.89"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.89/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "5c8cc090fa173ecad1a330c164da2dd2d59fef21e245c0049a735f4019adf07b"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.89/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "0c370b7ffb9bba2940b34eb93558d997efbc695b88caf67f32a256ad6a6cc8fc"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.89/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2d15c2a887e77a550ebd0cc871de5063232a636970d29ef2bea2303bceef1845"

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
