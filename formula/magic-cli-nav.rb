class MagicCliNav < Formula
  desc "A command-line tool for enhanced navigation"
  homepage "https://github.com/pridapablo/homebrew-magic-cli-nav"
  url "http://github.com/pridapablo/homebrew-magic-cli-nav/archive/v0.0.1.tar.gz"
  sha256 "e9c06d9d4f6819b8790d591f0ef0c8aabc5f68e944b179a8a5b248afd3ae3daf"
  head "https://github.com/pridapablo/homebrew-magic-cli-nav.git"

  bottle :unneeded
  def install
    bin.install "magic-cli-nav.sh"
  end

  def caveats; 
    <<~EOS
      The magic-cli-nav script has been installed. 
      To enable the magic navigation in your shell, add the following
      line to your .zshrc (or .bashrc/.bash_profile as per your shell) file:

      source #{HOMEBREW_PREFIX}/bin/magic-cli-nav.sh
    EOS
  end

  test do
    system "false"
  end
end