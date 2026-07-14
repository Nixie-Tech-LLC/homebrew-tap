class Mimir < Formula
  desc "mimir platform CLI — gcloud-style device-flow login, RBAC-gated projects"
  homepage "https://github.com/Nixie-Tech-LLC/mimir-cli"
  version "0.2.4"
  license "MIT"
  on_macos do
    on_arm  do url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.2.4/mimir_0.2.4_darwin_arm64.tar.gz"; sha256 "f49023ee4c2c278823e0d01cd1ed841210f8e9d545b7c6c15638f43a1c4a6a09"; end
    on_intel do url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.2.4/mimir_0.2.4_darwin_amd64.tar.gz"; sha256 "a03d241be6377dfdd58f8466b33d7444d5990c026fa97ec864cb77c71165a5c8"; end
  end
  on_linux do
    on_arm  do url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.2.4/mimir_0.2.4_linux_arm64.tar.gz"; sha256 "b7c8a43c7a2b3c2d007f98d1f11329f650fdedb5d57d5dc1dde69c1605a5b2e0"; end
    on_intel do url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.2.4/mimir_0.2.4_linux_amd64.tar.gz"; sha256 "2a1e8e4fa0fa02754fd823f7733169f2da828e44d50b44d5ce1508e0179bfca8"; end
  end
  def install; bin.install "mimir"; end
  test do; system "#{bin}/mimir", "version"; end
end
