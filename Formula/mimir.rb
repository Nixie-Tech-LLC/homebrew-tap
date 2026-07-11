class Mimir < Formula
  desc "mimir platform CLI — gcloud-style device-flow login, RBAC-gated projects"
  homepage "https://github.com/Nixie-Tech-LLC/mimir-cli"
  version "0.1.4"
  license "MIT"
  on_macos do
    on_arm  do url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.1.4/mimir_0.1.4_darwin_arm64.tar.gz"; sha256 "98e984b3722e20b68b18119d0ae39a97db5b601bacc794d8450cc963d1e7dd0b"; end
    on_intel do url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.1.4/mimir_0.1.4_darwin_amd64.tar.gz"; sha256 "eef9f620c6157045718abd48c150443c386813817baaf4271e42d23a0f54a013"; end
  end
  on_linux do
    on_arm  do url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.1.4/mimir_0.1.4_linux_arm64.tar.gz"; sha256 "2ac507e90f982496fc1eb2f3c28ca0e7cdcfa1abe2ffcbe510772482bd82a76c"; end
    on_intel do url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.1.4/mimir_0.1.4_linux_amd64.tar.gz"; sha256 "472a52b0ae9caf9fc1ae33b1d6392993bbfec3b0ff0f0bcf51599e413cc09037"; end
  end
  def install; bin.install "mimir"; end
  test do; system "#{bin}/mimir", "version"; end
end
