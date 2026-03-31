class Tuibookie < Formula
  desc "A fast, interactive terminal bookmark manager for CLI commands"
  homepage "https://github.com/orvad/tuibookie"
  version "0.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/orvad/tuibookie/releases/download/v0.0.2/tuibookie-darwin-arm64"
      sha256 "1298183d9d1c06de93e5af20c509e314a3ac7ba85c6db98525f87b96dc632e02"

      def install
        bin.install "tuibookie-darwin-arm64" => "tuibookie"
      end
    else
      url "https://github.com/orvad/tuibookie/releases/download/v0.0.2/tuibookie-darwin-amd64"
      sha256 "576bb8435ca38e042fe7b16a6e054606b59a1e9a7ba357ed94ff342ae7477215"

      def install
        bin.install "tuibookie-darwin-amd64" => "tuibookie"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/orvad/tuibookie/releases/download/v0.0.2/tuibookie-linux-arm64"
      sha256 "722a4d1f9d811818a09c7d8643280784252cd42e4fb46bc0934c008f96fb73ae"

      def install
        bin.install "tuibookie-linux-arm64" => "tuibookie"
      end
    else
      url "https://github.com/orvad/tuibookie/releases/download/v0.0.2/tuibookie-linux-amd64"
      sha256 "7015ac32da2516eb717cd4af8fd8c2075b6f16473f38263fadb36cd8d77b22d6"

      def install
        bin.install "tuibookie-linux-amd64" => "tuibookie"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuibookie --help 2>&1", 2)
  end
end
