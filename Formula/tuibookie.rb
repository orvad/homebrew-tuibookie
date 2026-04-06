class Tuibookie < Formula
  desc "A fast, interactive terminal bookmark manager for CLI commands"
  homepage "https://github.com/orvad/tuibookie"
  version "1.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/orvad/tuibookie/releases/download/v1.7.0/tuibookie-darwin-arm64"
      sha256 "b7b96e95dbfbbfdf86dcc0af2cd2d279c69c1b6368fdbd3ded1ed597ffcc82f2"

      def install
        bin.install "tuibookie-darwin-arm64" => "tuibookie"
      end
    else
      url "https://github.com/orvad/tuibookie/releases/download/v1.7.0/tuibookie-darwin-amd64"
      sha256 "8dfde7aced95466f3c4ddc488b478af3d338ca09f7dc50868776a284724d75db"

      def install
        bin.install "tuibookie-darwin-amd64" => "tuibookie"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/orvad/tuibookie/releases/download/v1.7.0/tuibookie-linux-arm64"
      sha256 "1d15a73c3fdc15da0e2e801d20b699cd6164540ff1e0fd8d0b945ecec014d500"

      def install
        bin.install "tuibookie-linux-arm64" => "tuibookie"
      end
    else
      url "https://github.com/orvad/tuibookie/releases/download/v1.7.0/tuibookie-linux-amd64"
      sha256 "f2179ebf8789a40e270269bd834c653291aaecd2981e46427469ccb09b8a6764"

      def install
        bin.install "tuibookie-linux-amd64" => "tuibookie"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuibookie --help 2>&1", 2)
  end
end
