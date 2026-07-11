class Mimir < Formula
  desc "mimir platform CLI — gcloud-style device-flow login, RBAC-gated projects"
  homepage "https://github.com/Nixie-Tech-LLC/mimir-cli"
  version "0.2.1"
  license "MIT"
  on_macos do
    on_arm  do url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.2.1/mimir_0.2.1_darwin_arm64.tar.gz"; sha256 "be693be74e3cc80bd6b177a2c77b41736471a5dd3c815c6f4d11b33c8daf0df3"; end
    on_intel do url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.2.1/mimir_0.2.1_darwin_amd64.tar.gz"; sha256 "bb49332c1765361a247c1e090ef63730c7bff440104057b86d3b146eb6469af4"; end
  end
  on_linux do
    on_arm  do url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.2.1/mimir_0.2.1_linux_arm64.tar.gz"; sha256 "0f61b463fb7547bdc0a373be6b882fe64d9b660534c200f25a20c791c02fe586"; end
    on_intel do url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.2.1/mimir_0.2.1_linux_amd64.tar.gz"; sha256 "12813c958e35f364e5aec56a26acde75fafdbf76afcb5906a05f7e894792324b"; end
  end
  def install; bin.install "mimir"; end
  test do; system "#{bin}/mimir", "version"; end
end
