# typing.works — terminal. tools/release.sh 가 판 번호 · 주소 · sha256 을 채운다(손으로 고치지 않는다).
class TypingWorks < Formula
  desc "Typing practice from typing.works in your terminal (Korean & English, ranked)"
  homepage "https://typing.works"
  version "0.3.0-beta.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/pers-dev/typing.works/releases/download/v0.3.0-beta.2/typingworks-0.3.0-beta.2-darwin-arm64.tar.gz"
      sha256 "611f09c24e66f33b30657a58592a1c74617e7e768332f1b37d322c13cd9e769d"
    end
    on_intel do
      url "https://github.com/pers-dev/typing.works/releases/download/v0.3.0-beta.2/typingworks-0.3.0-beta.2-darwin-x64.tar.gz"
      sha256 "eee2e01db6809191edb2d2bb203336d1be377f281872a29cf10ecc55f19811af"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pers-dev/typing.works/releases/download/v0.3.0-beta.2/typingworks-0.3.0-beta.2-linux-arm64.tar.gz"
      sha256 "c05ba252f831f558796a76efd897312ddb895fab7d1f2553b170fcaa7fc0d313"
    end
    on_intel do
      url "https://github.com/pers-dev/typing.works/releases/download/v0.3.0-beta.2/typingworks-0.3.0-beta.2-linux-x64.tar.gz"
      sha256 "61a3b8787c193aa95d95925985b6e2f36f59cc054e4a2d66df711602f9f25562"
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
