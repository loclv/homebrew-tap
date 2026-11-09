class Mm < Formula
  desc "Generate a Conventional Commit message from Git changes and commit it"
  homepage "https://github.com/loclv/mm"
  version "0.2.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/loclv/mm/releases/download/release-v0.2.9/mm-aarch64-apple-darwin.tar.gz"
      sha256 "ef94e9cf17ad6d36b488cfa7714338dc2aa4f3ee1371ec690a7e25a1a1bc253c"
    end
    on_intel do
      url "https://github.com/loclv/mm/releases/download/release-v0.2.9/mm-x86_64-apple-darwin.tar.gz"
      sha256 "943559ef24bd779c834456aba9309c2536ee77789c981ca3e1b2ee890dbb5da5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loclv/mm/releases/download/release-v0.2.9/mm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8b0d11b708515eee9e3918f6d52746914c7a805d1300d41a81127217ad7b5577"
    end
    on_intel do
      url "https://github.com/loclv/mm/releases/download/release-v0.2.9/mm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bf2a91e90504bcb6325616b57f2424437aafad72e82038d2bab24f0c57ca1e62"
    end
  end

  def install
    bin.install "mm"
  end

  test do
    assert_match "mm - commit with an automatically generated message", shell_output("#{bin}/mm --help")
  end
end
