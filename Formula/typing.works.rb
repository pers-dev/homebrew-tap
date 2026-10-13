# typing.works — terminal. tools/release.sh 가 판 번호 · 주소 · sha256 을 채운다(손으로 고치지 않는다).
class TypingWorks < Formula
  desc "Typing practice from typing.works in your terminal (Korean & English, ranked)"
  homepage "https://typing.works"
  version "0.3.0-beta.7"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/pers-dev/typing.works/releases/download/v0.3.0-beta.7/typingworks-0.3.0-beta.7-darwin-arm64.tar.gz"
      sha256 "3ce195af3b1efb9a1945da28c76fc712b60b44443c13ae8368a1a5fbbf737c80"
    end
    on_intel do
      url "https://github.com/pers-dev/typing.works/releases/download/v0.3.0-beta.7/typingworks-0.3.0-beta.7-darwin-x64.tar.gz"
      sha256 "a5bc22739a8c9a9ff1ebfb07365b1fe3880608820e70ebcc7e30a1722fec2b7a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pers-dev/typing.works/releases/download/v0.3.0-beta.7/typingworks-0.3.0-beta.7-linux-arm64.tar.gz"
      sha256 "19648e9569759638111f0da10cb998d19d502473460230fec46f0b93309318a1"
    end
    on_intel do
      url "https://github.com/pers-dev/typing.works/releases/download/v0.3.0-beta.7/typingworks-0.3.0-beta.7-linux-x64.tar.gz"
      sha256 "26263cb09d6d1b5dac6dedfcd1f3cc398ee68c78816e42a0ba609d4f1aabde66"
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
