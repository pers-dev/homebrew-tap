# typing.works — terminal. tools/release.sh 가 판 번호 · 주소 · sha256 을 채운다(손으로 고치지 않는다).
class TypingWorks < Formula
  desc "Typing practice from typing.works in your terminal (Korean & English, ranked)"
  homepage "https://typing.works"
  version "0.3.0-beta.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/pers-dev/typing.works/releases/download/v0.3.0-beta.1/typingworks-0.3.0-beta.1-darwin-arm64.tar.gz"
      sha256 "e416916715c6158650d90237f39edb3e6c99059683db8db3f8eb97bbfe613ace"
    end
    on_intel do
      url "https://github.com/pers-dev/typing.works/releases/download/v0.3.0-beta.1/typingworks-0.3.0-beta.1-darwin-x64.tar.gz"
      sha256 "c8fe88f62ee2ce63b72ff24f3de9c6e74641e626b5948bdeb6420de4270d1b76"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pers-dev/typing.works/releases/download/v0.3.0-beta.1/typingworks-0.3.0-beta.1-linux-arm64.tar.gz"
      sha256 "f81ed6a0863b84d0aba52b5b141b81ae83fb5f8c2712dcbcd3c7fd3354e72809"
    end
    on_intel do
      url "https://github.com/pers-dev/typing.works/releases/download/v0.3.0-beta.1/typingworks-0.3.0-beta.1-linux-x64.tar.gz"
      sha256 "baad93c6147e5ba389edc996e1d9ec7ded8c47100d1783a0a604c5cff429e2a7"
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
