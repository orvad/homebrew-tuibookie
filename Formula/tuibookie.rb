class Tuibookie < Formula
  desc "A fast, interactive terminal bookmark manager for CLI commands"
  homepage "https://github.com/orvad/tuibookie"
  version "1.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/orvad/tuibookie/releases/download/v1.2.1/tuibookie-darwin-arm64"
      sha256 "1ef9809a0bef368d8d44e8ee34299745825faa3e4f9bb568a06f92fb1e9ac51c"

      def install
        bin.install "tuibookie-darwin-arm64" => "tuibookie"
      end
    else
      url "https://github.com/orvad/tuibookie/releases/download/v1.2.1/tuibookie-darwin-amd64"
      sha256 "a8cfff753b270bc8f35e98d74ba40f2fe7217e88fe1cc7bb68671e46976150eb"

      def install
        bin.install "tuibookie-darwin-amd64" => "tuibookie"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/orvad/tuibookie/releases/download/v1.2.1/tuibookie-linux-arm64"
      sha256 "c1ddda46288482f5b22a72bdeb2376a774ad8c7921e9a74157a4340de4f25054"

      def install
        bin.install "tuibookie-linux-arm64" => "tuibookie"
      end
    else
      url "https://github.com/orvad/tuibookie/releases/download/v1.2.1/tuibookie-linux-amd64"
      sha256 "9817b0ad29360d61a9c9d6f2d603a7be4e98c2dd449fd7a3dd16ea4b4cdd83c4"

      def install
        bin.install "tuibookie-linux-amd64" => "tuibookie"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuibookie --help 2>&1", 2)
  end
end
