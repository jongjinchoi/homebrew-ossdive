class Ossdive < Formula
  desc "HN OSS curation CLI"
  homepage "https://github.com/jongjinchoi/ossdive"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jongjinchoi/ossdive/releases/download/v0.3.1/ossdive-darwin-arm64.tar.gz"
      sha256 "82dfad13b88e2f4e84bdafd81b0dfdb3376dd8c9d71b68dbb92e4b3116097260"
    end
    on_intel do
      url "https://github.com/jongjinchoi/ossdive/releases/download/v0.3.1/ossdive-darwin-x64.tar.gz"
      sha256 "834c27ed2ea130722bd186b35635fb81c1274f06d22c456918f6c959039b3dbb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jongjinchoi/ossdive/releases/download/v0.3.1/ossdive-linux-arm64.tar.gz"
      sha256 "88f11badcdd5d80ce748bfbb7dd7b2c6079b712c646f9f7f3ebaf641590f9d8a"
    end
    on_intel do
      url "https://github.com/jongjinchoi/ossdive/releases/download/v0.3.1/ossdive-linux-x64.tar.gz"
      sha256 "843df7b48874d65c5a940c3559dd56046747db47bfa23211903de65192751c38"
    end
  end

  def install
    bin.install Dir["*"].reject { |f| File.extname(f) == ".gz" }.first => "ossdive"
  end

  test do
    system "\#{bin}/ossdive", "--version"
  end
end
