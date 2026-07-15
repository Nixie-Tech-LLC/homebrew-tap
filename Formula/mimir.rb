class Mimir < Formula
  desc "mimir platform CLI — gcloud-style device-flow login, RBAC-gated projects"
  homepage "https://github.com/Nixie-Tech-LLC/mimir-cli"
  version "0.2.7"
  license "MIT"
  on_macos do
    on_arm  do url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.2.7/mimir_0.2.7_darwin_arm64.tar.gz"; sha256 "ddc20d47106594584e24a62bb94a295b060fa54dfad6bbb97f11d7a72308a0e4"; end
    on_intel do url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.2.7/mimir_0.2.7_darwin_amd64.tar.gz"; sha256 "9f550c6d91b083a19e628cba6eea6ec5e49c6368b60bb05b08e5d16db403e525"; end
  end
  on_linux do
    on_arm  do url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.2.7/mimir_0.2.7_linux_arm64.tar.gz"; sha256 "7de7b765aac984d1cd467da4c1cdd21936a81031327f3881583490fe10c303c5"; end
    on_intel do url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.2.7/mimir_0.2.7_linux_amd64.tar.gz"; sha256 "3d1b1506b82f56d7af909f5d9b244475cf7464097357766b224a5a549542e758"; end
  end
  def install; bin.install "mimir"; end
  test do; system "#{bin}/mimir", "version"; end
end
