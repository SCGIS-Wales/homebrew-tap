class Dcert < Formula
  desc "CLI to decode and validate TLS certificates from PEM files"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.2/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "4ea47e4d1f25327dd329eb40ad70fce11a380c510e9c154f4b01a1b38404e287"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.2/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "a84c7dbefcfe31a30d32b4668cd67c826bd1680719acc648dd605a6d03dfb656"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.2/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8ae4965a23971374ffea56dcbf5f3dc5d24b4f005f17b242ee2be50ff11a620e"

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
