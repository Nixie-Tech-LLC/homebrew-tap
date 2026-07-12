class Lait < Formula
  desc "A local-first, peer-to-peer, end-to-end-encrypted issue tracker built on iroh + Loro CRDTs"
  homepage "https://github.com/Nixie-Tech-LLC/lait"
  version "0.4.2"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Nixie-Tech-LLC/lait/releases/download/v0.4.2/lait-aarch64-apple-darwin.tar.gz"
      sha256 "1a5eda2e2053db2b1d64e39e92b8fbcfe588666ea6817b45833af4b06b865c2c"
    end
    if Hardware::CPU.intel?
      url "https://github.com/Nixie-Tech-LLC/lait/releases/download/v0.4.2/lait-x86_64-apple-darwin.tar.gz"
      sha256 "579eec708ab395f7b59f516be76ec2b177ec8b6936512cba7eb4e4c28d1248ca"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Nixie-Tech-LLC/lait/releases/download/v0.4.2/lait-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "95b407103f26e4c44686f31056f326874b54530778645a73bb6ef5d19534f634"
    end
    if Hardware::CPU.intel?
      url "https://github.com/Nixie-Tech-LLC/lait/releases/download/v0.4.2/lait-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f98bba03ab684b0e539d424cd5889c0402e1747189d0f4b121e5888a716b209f"
    end
  end
  license any_of: ["MIT", "Apache-2.0"]

  BINARY_ALIASES = {
    "aarch64-apple-darwin": {},
    "aarch64-unknown-linux-gnu": {},
    "x86_64-apple-darwin": {},
    "x86_64-pc-windows-gnu": {},
    "x86_64-unknown-linux-gnu": {}
  }

  def target_triple
    cpu = Hardware::CPU.arm? ? "aarch64" : "x86_64"
    os = OS.mac? ? "apple-darwin" : "unknown-linux-gnu"

    "#{cpu}-#{os}"
  end

  def install_binary_aliases!
    BINARY_ALIASES[target_triple.to_sym].each do |source, dests|
      dests.each do |dest|
        bin.install_symlink bin/source.to_s => dest
      end
    end
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "lait"
    end
    if OS.mac? && Hardware::CPU.intel?
      bin.install "lait"
    end
    if OS.linux? && Hardware::CPU.arm?
      bin.install "lait"
    end
    if OS.linux? && Hardware::CPU.intel?
      bin.install "lait"
    end

    install_binary_aliases!

    # Homebrew will automatically install these, so we don't need to do that
    doc_files = Dir["README.*", "readme.*", "LICENSE", "LICENSE.*", "CHANGELOG.*"]
    leftover_contents = Dir["*"] - doc_files

    # Install any leftover files in pkgshare; these are probably config or
    # sample files.
    pkgshare.install(*leftover_contents) unless leftover_contents.empty?
  end
end
