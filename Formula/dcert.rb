class Dcert < Formula
  desc "CLI to decode and validate TLS certificates from PEM files"
  homepage "https://github.com/SCGIS-Wales/dcert"
  url "https://github.com/SCGIS-Wales/dcert/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "REPLACE_ME"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dcert --version")
    (testpath/"t.pem").write <<~EOS
      -----BEGIN CERTIFICATE-----
      MIIDXTCCAkWgAwIBAgIJAL3qgn0W6jQxMA0GCSqGSIb3DQEBCwUAMEUxCzAJBgNV
      BAYTAkFVMRMwEQYDVQQIDApTb21lLVN0YXRlMSEwHwYDVQQKDBhJbnRlcm5ldCBX
      aWRnaXRzIFB0eSBMdGQwHhcNMjAwMTAxMTIwMDAwWhcNMzAwMTAxMTIwMDAwWjBF
      MQswCQYDVQQGEwJBVTETMBEGA1UECAwKU29tZS1TdGF0ZTEhMB8GA1UECgwYSW50
      ZXJuZXQgV2lkZ2l0cyBQdHkgTHRkMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIB
      CgKCAQEA0f+bBhJ/9K9/W9E5q1OL1zI8fT9YR2R6x8vQK3rY3QN2x9Jl7JL1o7AJ
      kS3s8c7+8JfZ9gAn0fJM4+4PnV5Qx2X7GZWJrZ7rK1M1Q2F6oP2W2M4M8NbZ3b0m
      Z5g6vL7VQ3mL4d5wHmN+5k9XQKYgF0dJdN9I0qzB7yU1JtF0P9wH8A6B2k7QV5cO
      BnSr8iZ8tQ5e1fgBmYk9Q0mZ3W4Rn8K9I5rZ8p4P6Y9J4cN4B7S1K8U7M9Ox9V7F
      QW3f5E9t0s3V7MKqJX2nG8N0yF1Q0VlJ6MZ4vX2eJ1l0x0dZ2gG7Y6bC8qZ2L5l1
      P6F2a0y1qZ5R0a1M6x7N7Z8F0X1sVwIDAQABo1AwTjAdBgNVHQ4EFgQUhGL9+5qx
      SjZS9F6qoUkQQ0FO3VYwHwYDVR0jBBgwFoAUhGL9+5qxSjZS9F6qoUkQQ0FO3VYw
      DAYDVR0TBAUwAwEB/zANBgkqhkiG9w0BAQsFAAOCAQEAJcDzZ8WFNfYBwGh9XKRR
      3w2Bs8e4Nb0ZKWj1vgBt2T2x0yF3Qz0T6K8Y2jQ2W4q5pK7Vh8z0P9s3n7G7b6K2
      9F8y4X1l0l3E1f8Q0s0vZ5qF8S7Q3vR0rU6p1M9K8q9nV6q3s3P4K1l9v1w7mX4r
      2Y0q2sT5p9Q3t5K1n1c1q5t9q0s7Z4Y2F1n6L7R5X9T0f3d2p9K4a8G9S3V1H0E7
      b5W9L7p2F3t0Y9P1R7g5s3k1t4q1N4Z2E8X5M3V2C7B9O0a9q8Q7m1T6A9L0k7e
      1N7W9E5S2Z7M4r9K3z1P7t8c9N0q1m9R3B6N8Y0f4Q7d9S9T1e1Y2Z0G9M3T6c
      -----END CERTIFICATE-----
    EOS
    system "#{bin}/dcert", "t.pem", "--format", "json"
  end
end
