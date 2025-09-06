class Dcert < Formula
  desc "CLI to decode and validate TLS certificates from PEM files"
  homepage "https://github.com/SCGIS-Wales/dcert"
  url "https://github.com/SCGIS-Wales/dcert/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "46c6932da29418ace2408c7af388cbe5c9d991808661385998440ada4c72f3a2"
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
