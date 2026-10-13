# typing.works — terminal. tools/release.sh 가 판 번호 · 주소 · sha256 을 채운다(손으로 고치지 않는다).
class TypingWorks < Formula
  desc "Typing practice from typing.works in your terminal (Korean & English, ranked)"
  homepage "https://typing.works"
  version "0.3.0-beta.6"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/pers-dev/typing.works/releases/download/v0.3.0-beta.6/typingworks-0.3.0-beta.6-darwin-arm64.tar.gz"
      sha256 "6eb61eca85f4abec36c923b59d3e01bff32cfe42302c271bf10aae9c82478fb4"
    end
    on_intel do
      url "https://github.com/pers-dev/typing.works/releases/download/v0.3.0-beta.6/typingworks-0.3.0-beta.6-darwin-x64.tar.gz"
      sha256 "4298dfd8ba212fe3c0a4ebb7cf9aca39a7d8eb5e36fffafaac6178c6e6e5b215"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pers-dev/typing.works/releases/download/v0.3.0-beta.6/typingworks-0.3.0-beta.6-linux-arm64.tar.gz"
      sha256 "0619929317fca723b65cfbd2b66f90d75d5839cf0588242ca82cff9c24832230"
    end
    on_intel do
      url "https://github.com/pers-dev/typing.works/releases/download/v0.3.0-beta.6/typingworks-0.3.0-beta.6-linux-x64.tar.gz"
      sha256 "717bb4cc3b8426d74657e124936e9426db724c196ba01e893003777a3df472f4"
    end
  end

  depends_on "curl" => :recommended unless OS.mac?

  def install
    bin.install "typingworks"
    bin.install_symlink "typingworks" => "typing.works"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/typingworks --version")
  end
end
