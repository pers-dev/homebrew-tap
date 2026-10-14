# typing.works — terminal. tools/release.sh 가 판 번호 · sha256 을 채운다(손으로 고치지 않는다).
# 실행 파일은 npm 꾸러미 하나(일곱 가지가 다 든 약 2MB)에서 이 기기 것만 꺼낸다 — GitHub 릴리스에 기대지 않는다(10-14).
class TypingWorks < Formula
  desc "Typing practice from typing.works in your terminal (Korean & English, ranked)"
  homepage "https://typing.works"
  url "https://registry.npmjs.org/typing.works/-/typing.works-0.3.0-beta.10.tgz"
  version "0.3.0-beta.10"
  sha256 "0654244e3c39964ededd8ef261a900bcae8c37434a564453daecb1677ed537f4"
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
