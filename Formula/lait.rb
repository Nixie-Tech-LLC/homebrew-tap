class Lait < Formula
  desc "A local-first, peer-to-peer, end-to-end-encrypted issue tracker built on iroh + Loro CRDTs"
  homepage "https://github.com/Nixie-Tech-LLC/lait"
  version "0.4.6"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Nixie-Tech-LLC/lait/releases/download/v0.4.6/lait-aarch64-apple-darwin.tar.gz"
      sha256 "b6cbd5c1a768624e150ac37c172c51373603133d803b334d33a6d46cdfc9e9ed"
    end
    if Hardware::CPU.intel?
      url "https://github.com/Nixie-Tech-LLC/lait/releases/download/v0.4.6/lait-x86_64-apple-darwin.tar.gz"
      sha256 "c578821c03f301a820fe8e575dc665fc71837dd50cd80ce0594c81b1976ab71b"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Nixie-Tech-LLC/lait/releases/download/v0.4.6/lait-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5293574d90cd3622f4c45539203a1192345d5cd2e02bf9a174918ac44d4400e2"
    end
    if Hardware::CPU.intel?
      url "https://github.com/Nixie-Tech-LLC/lait/releases/download/v0.4.6/lait-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f7357491b9ba83635b59d870458c3a1552416de61131455ea800dae213986f69"
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
