class Lait < Formula
  desc "A local-first, peer-to-peer, end-to-end-encrypted issue tracker built on iroh + Loro CRDTs"
  homepage "https://github.com/Nixie-Tech-LLC/lait"
  version "0.4.3"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Nixie-Tech-LLC/lait/releases/download/v0.4.3/lait-aarch64-apple-darwin.tar.gz"
      sha256 "7706f2f7812988e1a4a27eda3ee408f80040b45f8f9f1270969d327a175f78f6"
    end
    if Hardware::CPU.intel?
      url "https://github.com/Nixie-Tech-LLC/lait/releases/download/v0.4.3/lait-x86_64-apple-darwin.tar.gz"
      sha256 "748af9e75972f01be45115beafe8e59c79a3c83ab667e1d4c2d928bd900eb20b"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Nixie-Tech-LLC/lait/releases/download/v0.4.3/lait-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cc64242fd7810eb5152cbe2db70978df5a70e8f9a825bda308b0507f33cc57d4"
    end
    if Hardware::CPU.intel?
      url "https://github.com/Nixie-Tech-LLC/lait/releases/download/v0.4.3/lait-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2bff0a227d477e07cf8c24a2abc2a8bcd7e3a35f458047dad6e629bf82a3bf17"
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
