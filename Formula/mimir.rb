class Mimir < Formula
  desc "mimir platform CLI — gcloud-style device-flow login, RBAC-gated projects"
  homepage "https://github.com/Nixie-Tech-LLC/mimir-cli"
  version "0.1.3"
  license "MIT"
  on_macos do
    on_arm  do url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.1.3/mimir_0.1.3_darwin_arm64.tar.gz"; sha256 "4807db2ac243d4042c905bb017c6975c48f0d01682eddf823a8a0f96884f424c"; end
    on_intel do url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.1.3/mimir_0.1.3_darwin_amd64.tar.gz"; sha256 "61c3789c1fe51e09c1c60ba2933df3138c0f88a13b5051d8a6f92b8d25871c2d"; end
  end
  on_linux do
    on_arm  do url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.1.3/mimir_0.1.3_linux_arm64.tar.gz"; sha256 "d40324cca5de3b94dbe8be56d5455df074b4eb1fe7cc83a9a4ad668e8ae07542"; end
    on_intel do url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.1.3/mimir_0.1.3_linux_amd64.tar.gz"; sha256 "ba3d31480b8e046abb14e084d2591f0f9c617c395d554344ecb949bdb76f8b29"; end
  end
  def install; bin.install "mimir"; end
  test do; system "#{bin}/mimir", "version"; end
end
