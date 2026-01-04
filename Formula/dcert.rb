class Dcert < Formula
  desc "CLI to decode and validate TLS certificates from PEM files"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v1.2.0/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "a4903e6dfd892be7cd225a5b7e500d4c6d30128df733fa9ca12f53077a2584ab"

      def install
        bin.install "dcert"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v1.2.0/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "3c3eb9d9a916da5667a06764e1bb926fab24655b1e86da9f3f4076de28056718"

      def install
        bin.install "dcert"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v1.2.0/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0476479c39c9100833a94fdb1e2256196691130d75116f2036e500f30e4c4e9d"

      def install
        bin.install "dcert"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dcert --version")
  end
end
