class Lait < Formula
  desc "A local-first, peer-to-peer, end-to-end-encrypted issue tracker built on iroh + Loro CRDTs"
  homepage "https://github.com/Nixie-Tech-LLC/lait"
  version "0.4.8"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Nixie-Tech-LLC/lait/releases/download/v0.4.8/lait-aarch64-apple-darwin.tar.gz"
      sha256 "d322d5ee06ee81911db2816741f4b56e9eeb6433a7d2375eb93afdc7f27a110f"
    end
    if Hardware::CPU.intel?
      url "https://github.com/Nixie-Tech-LLC/lait/releases/download/v0.4.8/lait-x86_64-apple-darwin.tar.gz"
      sha256 "ab8ac5638c3d67434233781390e767d8c644f617136bbc5df0f5240842376b5b"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Nixie-Tech-LLC/lait/releases/download/v0.4.8/lait-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1201d84fe22e08d8cc6f47a770160e16076e95b12bd81487baa7145dfbad5456"
    end
    if Hardware::CPU.intel?
      url "https://github.com/Nixie-Tech-LLC/lait/releases/download/v0.4.8/lait-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "57c49db28e73f10492c98b5992cdc8afa075e9935dcb5e61e52ae45f18fe936a"
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
