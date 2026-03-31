class Tuibookie < Formula
  desc "A fast, interactive terminal bookmark manager for CLI commands"
  homepage "https://github.com/orvad/tuibookie"
  version "0.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/orvad/tuibookie/releases/download/v0.0.2/tuibookie-darwin-arm64"
      sha256 "71286f88988d9302187ffc2d5e2d523c685343a73f88bf826fae947c3fdc1204"

      def install
        bin.install "tuibookie-darwin-arm64" => "tuibookie"
      end
    else
      url "https://github.com/orvad/tuibookie/releases/download/v0.0.2/tuibookie-darwin-amd64"
      sha256 "be62cf8100ca02f50aa00cdd9d2ff73490397720d5784e6caed6faf9e261cfb8"

      def install
        bin.install "tuibookie-darwin-amd64" => "tuibookie"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/orvad/tuibookie/releases/download/v0.0.2/tuibookie-linux-arm64"
      sha256 "95623e8788f975ba0ea154ea01064afacd69a90b8f479924e1e3ab99cc906bac"

      def install
        bin.install "tuibookie-linux-arm64" => "tuibookie"
      end
    else
      url "https://github.com/orvad/tuibookie/releases/download/v0.0.2/tuibookie-linux-amd64"
      sha256 "0f66262b7fe460320f0f2a6dfbfdf661ac672f2bc49d5dc187896cc9d0abcb49"

      def install
        bin.install "tuibookie-linux-amd64" => "tuibookie"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuibookie --help 2>&1", 2)
  end
end
