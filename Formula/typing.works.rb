# typing.works — terminal. tools/release.sh 가 판 번호 · 주소 · sha256 을 채운다(손으로 고치지 않는다).
class TypingWorks < Formula
  desc "Typing practice from typing.works in your terminal (Korean & English, ranked)"
  homepage "https://typing.works"
  version "0.3.0-beta.5"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/pers-dev/typing.works/releases/download/v0.3.0-beta.5/typingworks-0.3.0-beta.5-darwin-arm64.tar.gz"
      sha256 "b18aad97af3da89fc98be9cf3074d15a76649b2f05e98a0fa7c51761010a991f"
    end
    on_intel do
      url "https://github.com/pers-dev/typing.works/releases/download/v0.3.0-beta.5/typingworks-0.3.0-beta.5-darwin-x64.tar.gz"
      sha256 "18eeb1b39e2f7768d2fca04e755028ac05529bfeaa8e98340ab9051c9f3fe6ca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pers-dev/typing.works/releases/download/v0.3.0-beta.5/typingworks-0.3.0-beta.5-linux-arm64.tar.gz"
      sha256 "91eb61c4a03215e37e6dc5f3b5482e67e78e4c2caa194c4207db9200a66fba4f"
    end
    on_intel do
      url "https://github.com/pers-dev/typing.works/releases/download/v0.3.0-beta.5/typingworks-0.3.0-beta.5-linux-x64.tar.gz"
      sha256 "36df03989fe7eed733d98e4ea7826e8120fa7f6118db3bca85de3d610534f6fb"
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
