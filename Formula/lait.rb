class Lait < Formula
  desc "A local-first, peer-to-peer, end-to-end-encrypted issue tracker built on iroh + Loro CRDTs"
  homepage "https://github.com/Nixie-Tech-LLC/lait"
  version "0.4.7"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Nixie-Tech-LLC/lait/releases/download/v0.4.7/lait-aarch64-apple-darwin.tar.gz"
      sha256 "5f023caa03aed437717317f8fdf6759f6c56e88a550e91e76bcc1a6a549772be"
    end
    if Hardware::CPU.intel?
      url "https://github.com/Nixie-Tech-LLC/lait/releases/download/v0.4.7/lait-x86_64-apple-darwin.tar.gz"
      sha256 "50cd2339360f61ca4cb98079327581a97a728e0a03dda4b51c9fd03eb4feb13c"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Nixie-Tech-LLC/lait/releases/download/v0.4.7/lait-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "74fad8e148d88ad155834dd0c9f011c3cfb8429d1519df7d292fdae812f73685"
    end
    if Hardware::CPU.intel?
      url "https://github.com/Nixie-Tech-LLC/lait/releases/download/v0.4.7/lait-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3703479660d5afd4d42b2e543dadd3cd4c1b1cc2a802a48e00079069c7a43cc4"
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
