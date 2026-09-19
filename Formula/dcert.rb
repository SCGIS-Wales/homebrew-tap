class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.46"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.46/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "cf90b7583f41cfb02c756ad17e74f109ecd5076c34f61f79f123c211e3eace7b"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.46/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "83980f99ba6dd7fa16dc98aec3e557de14c8d2b89a9a6a477c38ad4ac688a379"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.46/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ba79cfb5654abde3c845b30070134f55c7e643908c6c4ca013d7456b883d3243"

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
