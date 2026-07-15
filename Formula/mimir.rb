class Mimir < Formula
  desc "mimir platform CLI — gcloud-style device-flow login, RBAC-gated projects"
  homepage "https://github.com/Nixie-Tech-LLC/mimir-cli"
  version "0.2.6"
  license "MIT"
  on_macos do
    on_arm  do url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.2.6/mimir_0.2.6_darwin_arm64.tar.gz"; sha256 "731a4b6d8db3bf7141178ea3fe3e68f12bb1a73897bbde75a45a3b3794e1ddb9"; end
    on_intel do url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.2.6/mimir_0.2.6_darwin_amd64.tar.gz"; sha256 "31837ac5487c9c26bfa535d7ecdfef1b30a00f2e3413f989988ff3064badb7d1"; end
  end
  on_linux do
    on_arm  do url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.2.6/mimir_0.2.6_linux_arm64.tar.gz"; sha256 "c4138593867a8bdeb84eaeb578dc3cc922c6be008fa3bb2a0a3de944f23e9e2e"; end
    on_intel do url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.2.6/mimir_0.2.6_linux_amd64.tar.gz"; sha256 "b3f2f3cfeb39b8b165d4f35e0276cad4f5fac3cd4d10ee65b194b58f98d36e2d"; end
  end
  def install; bin.install "mimir"; end
  test do; system "#{bin}/mimir", "version"; end
end
