# typing.works — terminal. tools/release.sh 가 판 번호 · 주소 · sha256 을 채운다(손으로 고치지 않는다).
class TypingWorks < Formula
  desc "Typing practice from typing.works in your terminal (Korean & English, ranked)"
  homepage "https://typing.works"
  version "0.3.0-beta.8"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/pers-dev/typing.works/releases/download/v0.3.0-beta.8/typingworks-0.3.0-beta.8-darwin-arm64.tar.gz"
      sha256 "6d78a36b56fb310f55fe83b146677711e6680b402f71fd3d18acd1082ff8407b"
    end
    on_intel do
      url "https://github.com/pers-dev/typing.works/releases/download/v0.3.0-beta.8/typingworks-0.3.0-beta.8-darwin-x64.tar.gz"
      sha256 "da56351d161f49eb3b416131df46cdd89dc794c9d672b0e6be9b47c7327d7c7c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pers-dev/typing.works/releases/download/v0.3.0-beta.8/typingworks-0.3.0-beta.8-linux-arm64.tar.gz"
      sha256 "0c17b8b63de8b0372dc1d0667af1e520bfa02ffebd808f77afd13f1b88af04e3"
    end
    on_intel do
      url "https://github.com/pers-dev/typing.works/releases/download/v0.3.0-beta.8/typingworks-0.3.0-beta.8-linux-x64.tar.gz"
      sha256 "e260285960542fd0a1ad7a533c86bf37ae0288130a25cf5d8277fce082babd39"
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
