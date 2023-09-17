class MagicCliNav < Formula
  desc "A CLI tool to navigate to your project directories with ease"
  homepage "https://github.com/pridapablo/homebrew-magic-cli-nav"
  url "https://github.com/pridapablo/homebrew-magic-cli-nav/archive/v1.0.tar.gz"
  sha256 "15dbb1c27178732dea3e11505f39a6ab8a4ab2a4b8cda4e567bcb5b24277199b"
  head "https://github.com/username/homebrew-magic-cli-nav.git"

  bottle :unneeded

  def install
    bin.install "magic-cli-nav.sh"
    (etc/"magic-cli-nav").install "install-magic-cli-nav.sh"
    
    # Edit the installation script to use the correct install path
    inreplace "#{etc}/magic-cli-nav/install-magic-cli-nav.sh", '"$HOME/.local/bin/$script_name"', "#{bin}/magic-cli-nav.sh"

    # Write the final installation instructions to the user's shell configuration file
    if preferred = [".bash_profile", ".bashrc", ".zshrc"].detect { |rc| File.exist? "#{ENV["HOME"]}/#{rc}" }
      open("#{ENV["HOME"]}/#{preferred}", "a") do |f|
        f << "\n# Added by magic-cli-nav install script\n"
        f << "source #{etc}/magic-cli-nav/install-magic-cli-nav.sh"
      end
    end
  end

  def caveats
    <<~EOS
      You have installed Magic CLI Navigator. To use it, source the install script in your shell:
      source #{etc}/magic-cli-nav/install-magic-cli-nav.sh
    EOS
  end

  test do
    system "false"
  end
end