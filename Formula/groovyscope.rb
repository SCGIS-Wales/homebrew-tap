class Groovyscope < Formula
  include Language::Python::Virtualenv

  desc "Groovy 5/6 code intelligence (LSP and MCP) for AI coding agents such as Kiro CLI"
  homepage "https://github.com/SCGIS-Wales/groovyscope"
  url "https://files.pythonhosted.org/packages/c8/32/0cc000aab67a9d44216370321303f4a0c7828d045d6b1a6f03140766a0ba/groovyscope-0.5.0.tar.gz"
  sha256 "f628bbf9519242c8108c616a658f162545fbc8691d24befef0d47796a3732aee"
  license "Apache-2.0"

  depends_on "uv" => :build
  depends_on "openjdk@21"
  depends_on "python@3.13"

  def install
    venv = virtualenv_create(libexec, "python3.13")
    # The sdist bundles the engine JAR; uv resolves the Python dependencies as binary wheels from PyPI.
    system "uv", "pip", "install", "--python", venv.root/"bin/python", "--no-cache", buildpath
    java_home = Formula["openjdk@21"].opt_libexec
    java_home = java_home/"openjdk.jdk/Contents/Home" if OS.mac?
    (bin/"groovyscope").write_env_script venv.root/"bin/groovyscope", JAVA_HOME: java_home
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/groovyscope version")
    report = shell_output("#{bin}/groovyscope doctor")
    assert_match "jdk", report
    assert_match "checksum verified", report
  end
end
