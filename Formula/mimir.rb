class Mimir < Formula
  desc "mimir platform CLI — gcloud-style device-flow login, RBAC-gated projects"
  homepage "https://github.com/Nixie-Tech-LLC/mimir-cli"
  version "0.2.3"
  license "MIT"
  on_macos do
    on_arm  do url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.2.3/mimir_0.2.3_darwin_arm64.tar.gz"; sha256 "5e5c8ec4a78439677e5b8506c95e3790a637a183714bdd026edd1aebf176d2e4"; end
    on_intel do url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.2.3/mimir_0.2.3_darwin_amd64.tar.gz"; sha256 "d669ed7842caf8a9ca41c5c6863970a19c83daff8020bde49400bd6885cf6cf2"; end
  end
  on_linux do
    on_arm  do url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.2.3/mimir_0.2.3_linux_arm64.tar.gz"; sha256 "de83e93fe9ac0750ad35eda36636eac89d593a7af472c019bf14e8348e42a0fb"; end
    on_intel do url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.2.3/mimir_0.2.3_linux_amd64.tar.gz"; sha256 "740b1d382c83f3ca08d9014efd85abf752b99cf9194ee459f6e315cddd3e116d"; end
  end
  def install; bin.install "mimir"; end
  test do; system "#{bin}/mimir", "version"; end
end
