class Dcert < Formula
  desc "CLI to decode and validate TLS certificates from PEM files"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "2.0.9"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v2.0.9/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "d2b07d7deb84129c12d7265044ee96daee64c699485e76c2142e9c0708a378e9"

      def install
        bin.install "dcert"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v2.0.9/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "18a715ecba2e5f2d94fa7d07c31a97c350b468e317078fe605196c9195780f89"

      def install
        bin.install "dcert"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v2.0.9/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e0c94a62ef929e1cbfea5ac87a742d05fe80dff4b3c2bb3fc53d9864dda3dc33"

      def install
        bin.install "dcert"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dcert --version")
  end
end
