# typing.works — terminal. tools/release.sh 가 판 번호 · 주소 · sha256 을 채운다(손으로 고치지 않는다).
class TypingWorks < Formula
  desc "Typing practice from typing.works in your terminal (Korean & English, ranked)"
  homepage "https://typing.works"
  version "0.3.0-beta.3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/pers-dev/typing.works/releases/download/v0.3.0-beta.3/typingworks-0.3.0-beta.3-darwin-arm64.tar.gz"
      sha256 "a52ac3c3a1e811ce3630df93570fd4b5705558e3a6d9ff14fe58efea4cea9fb9"
    end
    on_intel do
      url "https://github.com/pers-dev/typing.works/releases/download/v0.3.0-beta.3/typingworks-0.3.0-beta.3-darwin-x64.tar.gz"
      sha256 "7f3944d7904845bf7dd7e795cb44542eba28eccdbc7f86935bdae95d594eb45a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pers-dev/typing.works/releases/download/v0.3.0-beta.3/typingworks-0.3.0-beta.3-linux-arm64.tar.gz"
      sha256 "bba9180a65646464189580b6592011ca57069260967ffed9dcf4bd0f280868b3"
    end
    on_intel do
      url "https://github.com/pers-dev/typing.works/releases/download/v0.3.0-beta.3/typingworks-0.3.0-beta.3-linux-x64.tar.gz"
      sha256 "8263f145a77c93528e478192c06896c7908591c7f13d9fecbe4f53c0c362237b"
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
