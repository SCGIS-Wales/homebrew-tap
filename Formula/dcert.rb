class Dcert < Formula
  desc "CLI to decode and validate TLS certificates from PEM files"
  homepage "https://github.com/SCGIS-Wales/dcert"
  url "https://github.com/SCGIS-Wales/dcert/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "40cc977e2b3900eb155484c66e54f069a2c682f6ea2bbddfb15fd9397577cf25"
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
