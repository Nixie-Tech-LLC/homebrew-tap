class Mimir < Formula
  desc "mimir platform CLI — gcloud-style device-flow login, RBAC-gated projects"
  homepage "https://github.com/Nixie-Tech-LLC/mimir-cli"
  version "0.2.2"
  license "MIT"
  on_macos do
    on_arm  do url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.2.2/mimir_0.2.2_darwin_arm64.tar.gz"; sha256 "045de464916bf1070fcafac3063ed18e7c47dd55cb2e547649896ff26e54fa6f"; end
    on_intel do url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.2.2/mimir_0.2.2_darwin_amd64.tar.gz"; sha256 "9e86106ac8680d22135b03eb7ad1e9919b02eb0cf5bd58efb7274a3581323536"; end
  end
  on_linux do
    on_arm  do url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.2.2/mimir_0.2.2_linux_arm64.tar.gz"; sha256 "eb73de2d7ed2233194db37e8ecfe7450ee0c470ea600135f2d43e9b388f10371"; end
    on_intel do url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.2.2/mimir_0.2.2_linux_amd64.tar.gz"; sha256 "6a813580f766f9b2fdca16a30791ce7250dcaf84e7ba0e774a71f914fb306aee"; end
  end
  def install; bin.install "mimir"; end
  test do; system "#{bin}/mimir", "version"; end
end
