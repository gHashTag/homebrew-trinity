# typed: strict
# frozen_string_literal: true

class Trinity < Formula
  desc "Sacred Intelligence CLI — Trinity v1.0.1 PURITY"
  homepage "https://github.com/gHashTag/trinity"
  url "https://github.com/gHashTag/trinity/releases/download/v1.0.1/trinity-v1.0.1-macos-arm64.tar.gz"
  sha256 "35a39bbdfd1c6c53685bec08757052c0965535dfcb4e1cc5d8bf253d6a302b52"

  def install
    bin.install "tri"
    bash_completion.install "tri.bash" => "tri"
    zsh_completion.install "tri.zsh" => "_tri"
    fish_completion.install "tri.fish" => "tri.fish"
  end

  test do
    system "#{bin}/tri", "--version"
    system "#{bin}/tri", "constants"
  end
end
