class Dcert < Formula
  desc "CLI to decode and validate TLS certificates from PEM files"
  homepage "https://github.com/SCGIS-Wales/dcert"
  url "https://github.com/SCGIS-Wales/dcert/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "749beb3509ccff0f84bc94acc6ed4ad15ada2bb54f618a1573c9aada1f59f48b"
  license "MIT"
  head "https://github.com/SCGIS-Wales/dcert.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dcert --version")
  end
end
