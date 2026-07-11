class Mimir < Formula
  desc "mimir platform CLI — gcloud-style device-flow login, RBAC-gated projects"
  homepage "https://github.com/Nixie-Tech-LLC/mimir-cli"
  version "0.1.2"
  license "MIT"
  on_macos do
    on_arm  do url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.1.2/mimir_0.1.2_darwin_arm64.tar.gz"; sha256 "04c5ddcf864ee45e6e68b7805913d5b58ff963308db6c2063873877e2573cfa0"; end
    on_intel do url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.1.2/mimir_0.1.2_darwin_amd64.tar.gz"; sha256 "6d1d3d8531c580589364eccba9f3a51552b7f4be02f21153952fbc4d2988c009"; end
  end
  on_linux do
    on_arm  do url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.1.2/mimir_0.1.2_linux_arm64.tar.gz"; sha256 "c0360483f3e2d5ffe4bfeb42fd5d507d21db28d932a0606c152c8b5d282def9a"; end
    on_intel do url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.1.2/mimir_0.1.2_linux_amd64.tar.gz"; sha256 "4dbe442651ef4d9147215d036414d31c7e657b0ff92e42138fd8a19dc10bbe9b"; end
  end
  def install; bin.install "mimir"; end
  test do; system "#{bin}/mimir", "version"; end
end
