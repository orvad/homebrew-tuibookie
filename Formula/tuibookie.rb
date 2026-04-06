class Tuibookie < Formula
  desc "A fast, interactive terminal bookmark manager for CLI commands"
  homepage "https://github.com/orvad/tuibookie"
  version "1.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/orvad/tuibookie/releases/download/v1.7.1/tuibookie-darwin-arm64"
      sha256 "eb16ec9e222b34cdc577519d26e7813b0228b73e0d066a480a5560909c5abfe8"

      def install
        bin.install "tuibookie-darwin-arm64" => "tuibookie"
      end
    else
      url "https://github.com/orvad/tuibookie/releases/download/v1.7.1/tuibookie-darwin-amd64"
      sha256 "8765019cfea4be8cba2c45da9c89d24a3b5403d54ef7472d472dd2080941e65d"

      def install
        bin.install "tuibookie-darwin-amd64" => "tuibookie"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/orvad/tuibookie/releases/download/v1.7.1/tuibookie-linux-arm64"
      sha256 "47d06313b3af3f449054f6c332d1d6504eac6cf736f630adefd7dd115c3eb65b"

      def install
        bin.install "tuibookie-linux-arm64" => "tuibookie"
      end
    else
      url "https://github.com/orvad/tuibookie/releases/download/v1.7.1/tuibookie-linux-amd64"
      sha256 "da976f21abf8c6dc4ce85607b8a56a1a0f253c83499bdfc855ed5fe8e8c436ee"

      def install
        bin.install "tuibookie-linux-amd64" => "tuibookie"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuibookie --help 2>&1", 2)
  end
end
