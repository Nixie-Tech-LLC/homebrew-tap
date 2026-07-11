class Mimir < Formula
  desc "mimir platform CLI — gcloud-style device-flow login, RBAC-gated projects"
  homepage "https://github.com/Nixie-Tech-LLC/mimir-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.1.1/mimir_0.1.1_darwin_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.1.1/mimir_0.1.1_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.1.1/mimir_0.1.1_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.1.1/mimir_0.1.1_linux_amd64.tar.gz"
      sha256 ""
    end
  end

  def install
    bin.install "mimir"
  end

  test do
    system "#{bin}/mimir", "version"
  end
end
