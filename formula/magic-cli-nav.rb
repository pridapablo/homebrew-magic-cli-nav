class MagicCliNav < Formula
  desc "A command-line tool for enhanced navigation"
  homepage "https://github.com/pridapablo/homebrew-magic-cli-nav"
  url "https://github.com/pridapablo/homebrew-magic-cli-nav/archive/refs/tags/v0.0.1-alpha.tar.gz"
  sha256 "6d1ec92fe18674539ea1da8120f0be28104b1519327cb8a22bccddb1eba6e7f2"
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