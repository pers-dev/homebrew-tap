# typing.works — terminal. tools/release.sh 가 판 번호 · sha256 을 채운다(손으로 고치지 않는다).
# 실행 파일은 npm 꾸러미 하나(일곱 가지가 다 든 약 2MB)에서 이 기기 것만 꺼낸다 — GitHub 릴리스에 기대지 않는다(10-14).
class TypingWorks < Formula
  desc "Typing practice from typing.works in your terminal (Korean & English, ranked)"
  homepage "https://typing.works"
  url "https://registry.npmjs.org/typing.works/-/typing.works-0.3.0-beta.15.tgz"
  version "0.3.0-beta.15"
  sha256 "25ad23a8299ca36e042128b776ae86e94791090f57f9522ae889ab2d2aa8869a"
  license :cannot_represent

  depends_on "curl" => :recommended unless OS.mac?

  def install
    os = OS.mac? ? "darwin" : "linux"
    arch = Hardware::CPU.arm? ? "arm64" : "x64"
    bin.install "vendor/#{os}-#{arch}/typingworks"
    bin.install_symlink "typingworks" => "typing.works"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/typingworks --version")
  end
end
