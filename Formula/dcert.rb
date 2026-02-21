class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.13"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.13/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "2730dfce91089d038f9d41ef91a4aef44cadd977d9a2f2de2767d5a0f0d114a8"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.13/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "647ba5e9d068ba64a8fe27f9e025cbfa5db8256cd9c32a0fc9b488ac43f6c90c"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.13/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e2856495cb0dba3ed9015d1407d6c7a81b93329e23ddd6ba23c7d6b85c2d1e3d"

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
