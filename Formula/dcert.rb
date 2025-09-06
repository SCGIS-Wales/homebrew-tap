class Dcert < Formula
  desc "CLI to decode and validate TLS certificates from PEM files"
  homepage "https://github.com/SCGIS-Wales/dcert"
  url "https://github.com/SCGIS-Wales/dcert/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"
  license "MIT"
  head "https://github.com/SCGIS-Wales/dcert.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    # Version check is architecture independent and avoids needing a real PEM
    assert_match version.to_s, shell_output("#{bin}/dcert --version")
  end
end
