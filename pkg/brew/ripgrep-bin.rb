class RipgrepBin < Formula
  version '0.7.0'
  desc "Search tool like grep and The Silver Searcher."
  homepage "https://github.com/BurntSushi/ripgrep"
  url "https://github.com/BurntSushi/ripgrep/releases/download/#{version}/ripgrep-#{version}-x86_64-apple-darwin.tar.gz"
  sha256 "ef5e76acde453bed774cecaeef8dbd96652d616d957ec1763d450c6f6d9e1d0d"

  conflicts_with "ripgrep"

  def install
    bin.install "rg"
    man1.install "rg.1"

    bash_completion.install "complete/rg.bash-completion"
    fish_completion.install "complete/rg.fish"
    zsh_completion.install "complete/_rg"
  end
end
