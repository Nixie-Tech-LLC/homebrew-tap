class Mimir < Formula
  desc "mimir platform CLI — gcloud-style device-flow login, RBAC-gated projects"
  homepage "https://github.com/Nixie-Tech-LLC/mimir-cli"
  version "0.2.5"
  license "MIT"
  on_macos do
    on_arm  do url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.2.5/mimir_0.2.5_darwin_arm64.tar.gz"; sha256 "9c973dc94a9861e090eed014b1e87d80f13a396f7d2d6960fa93017d9c7ffa95"; end
    on_intel do url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.2.5/mimir_0.2.5_darwin_amd64.tar.gz"; sha256 "bc78baf2c320e3bdbf71e8c9b80b36af05eeac3a4e35f29edef3bfec06165825"; end
  end
  on_linux do
    on_arm  do url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.2.5/mimir_0.2.5_linux_arm64.tar.gz"; sha256 "1efb342f8db3668c3dbf91d3da14f41ec024c5c814b225e810e3bf1fe2f6cba6"; end
    on_intel do url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.2.5/mimir_0.2.5_linux_amd64.tar.gz"; sha256 "4503fbde94e1bd6c9a1efcb8bd3d308f460802abc2c72214fa3eb3d128d4ea9d"; end
  end
  def install; bin.install "mimir"; end
  test do; system "#{bin}/mimir", "version"; end
end
