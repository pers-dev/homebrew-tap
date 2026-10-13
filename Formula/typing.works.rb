# typing.works — terminal. tools/release.sh 가 판 번호 · 주소 · sha256 을 채운다(손으로 고치지 않는다).
class TypingWorks < Formula
  desc "Typing practice from typing.works in your terminal (Korean & English, ranked)"
  homepage "https://typing.works"
  version "0.3.0-beta.4"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/pers-dev/typing.works/releases/download/v0.3.0-beta.4/typingworks-0.3.0-beta.4-darwin-arm64.tar.gz"
      sha256 "50a3f52826e95cc36c75a4f8d7dbc7fa429a417f9d660dcbc5c9975b164d00ee"
    end
    on_intel do
      url "https://github.com/pers-dev/typing.works/releases/download/v0.3.0-beta.4/typingworks-0.3.0-beta.4-darwin-x64.tar.gz"
      sha256 "f38c6e0959fa7873622b87c2e8ee53eed9759f42f6532c8280a62de0a707015d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pers-dev/typing.works/releases/download/v0.3.0-beta.4/typingworks-0.3.0-beta.4-linux-arm64.tar.gz"
      sha256 "d4be99e9e4c7e4f3e826b0914c459e8761e10a7f928a4c03ce116eea79bc1cd8"
    end
    on_intel do
      url "https://github.com/pers-dev/typing.works/releases/download/v0.3.0-beta.4/typingworks-0.3.0-beta.4-linux-x64.tar.gz"
      sha256 "e8e314b243671b5ae6bfe951063782371c62f1f15fa8f854f6027b5f877cdab0"
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
