class Mimir < Formula
  desc "mimir platform CLI — gcloud-style device-flow login, RBAC-gated projects"
  homepage "https://github.com/Nixie-Tech-LLC/mimir-cli"
  version "0.2.0"
  license "MIT"
  on_macos do
    on_arm  do url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.2.0/mimir_0.2.0_darwin_arm64.tar.gz"; sha256 "7fa2b8a9cd764f80e74f315b24887ba44ac11242ca2263a4a8bd7be8837be05f"; end
    on_intel do url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.2.0/mimir_0.2.0_darwin_amd64.tar.gz"; sha256 "ad5ecf53886ce10ae626da8c383f8d1b5b7bf5c6353c35e2b560ad4e6d3fc7a1"; end
  end
  on_linux do
    on_arm  do url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.2.0/mimir_0.2.0_linux_arm64.tar.gz"; sha256 "98c5d6b006d73e90bada921adca9fd3364d7300bc5aa95a011c6da247258e8f4"; end
    on_intel do url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.2.0/mimir_0.2.0_linux_amd64.tar.gz"; sha256 "3aae70214a07c055c02d02882be1b2a894916242e7acfab8a817d9327b908bd6"; end
  end
  def install; bin.install "mimir"; end
  test do; system "#{bin}/mimir", "version"; end
end
