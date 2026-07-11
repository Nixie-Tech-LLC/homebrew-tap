class Mimir < Formula
  desc "mimir platform CLI — gcloud-style device-flow login, RBAC-gated projects"
  homepage "https://github.com/Nixie-Tech-LLC/mimir-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.1.1/mimir_0.1.1_darwin_arm64.tar.gz"
      sha256 "969e089e45b5b934ed5d4251e6c66d98f65ee93b4e424716a33a15230aac2588"
    end
    on_intel do
      url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.1.1/mimir_0.1.1_darwin_amd64.tar.gz"
      sha256 "a1b9d70b79c8f4aac2341ebfc41e98362dc743e65bb3e9dd427ce6ca069e0edc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.1.1/mimir_0.1.1_linux_arm64.tar.gz"
      sha256 "c450ebd7887af25eb4dc661ded5102bebde035bd2acefe33d1991e86012b3561"
    end
    on_intel do
      url "https://github.com/Nixie-Tech-LLC/mimir-cli/releases/download/v0.1.1/mimir_0.1.1_linux_amd64.tar.gz"
      sha256 "2ef0529286e8cf62256687c1153e96d19a4c7cd1f8dbcc80b2687e6124f67e95"
    end
  end

  def install
    bin.install "mimir"
  end

  test do
    system "#{bin}/mimir", "version"
  end
end
