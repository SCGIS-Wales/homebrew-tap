class Dcert < Formula
  desc "CLI to decode and validate TLS certificates from PEM files"
  homepage "https://github.com/SCGIS-Wales/dcert"
  url "https://github.com/SCGIS-Wales/dcert/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "67b6a577ed70174dbab50f9c2d9df58a7714d4610488d0bdddeee441b7961efb"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dcert --version")
    (testpath/"t.pem").write <<~EOS
      -----BEGIN CERTIFICATE-----
      MIIB
      -----END CERTIFICATE-----
    EOS
    system "#{bin}/dcert", "t.pem", "--format", "json"
  end
end
