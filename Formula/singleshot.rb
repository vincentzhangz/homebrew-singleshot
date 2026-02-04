class Singleshot < Formula
  desc "One-click screenshot tool"
  homepage "https://github.com/vincentzhangz/singleshot"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vincentzhangz/singleshot/releases/download/v0.2.0/singleshot-aarch64-apple-darwin.tar.gz"
      sha256 "b3ee8be907a3f6a150569d2d527b9a8bf38076727fcae43a81266b0af388fc06"
    else
      url "https://github.com/vincentzhangz/singleshot/releases/download/v0.2.0/singleshot-x86_64-apple-darwin.tar.gz"
      sha256 "011a29c1d481b934c6502595cf1707ac55be2d16460d54e9b780bbe6bc5a95f8"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/vincentzhangz/singleshot/releases/download/v0.2.0/singleshot-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "090caf9cfaa3a65afb7a3b367c6da2bf879c052668e06383214410f40c9c7ab4"
    end
  end


  def install

    bin.install "singleshot"
  end

  test do
    system "#{bin}/singleshot", "--version"
  end
end
