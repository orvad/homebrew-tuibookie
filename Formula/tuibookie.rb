class Tuibookie < Formula
  desc "A fast, interactive terminal bookmark manager for CLI commands"
  homepage "https://github.com/orvad/tuibookie"
  version "1.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/orvad/tuibookie/releases/download/v1.5.0/tuibookie-darwin-arm64"
      sha256 "ddabdc6485c3edb81ea559af4fc6cc289dcbe31af7325ccdd034e1244ae698e8"

      def install
        bin.install "tuibookie-darwin-arm64" => "tuibookie"
      end
    else
      url "https://github.com/orvad/tuibookie/releases/download/v1.5.0/tuibookie-darwin-amd64"
      sha256 "3d499feeb2cc0472eaccb22459b0a24b297ba02df3e89fcc75b4c791906caec1"

      def install
        bin.install "tuibookie-darwin-amd64" => "tuibookie"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/orvad/tuibookie/releases/download/v1.5.0/tuibookie-linux-arm64"
      sha256 "f55916713021182b9563ac20099c239f3146cc9933a932a92b826ed0333090a4"

      def install
        bin.install "tuibookie-linux-arm64" => "tuibookie"
      end
    else
      url "https://github.com/orvad/tuibookie/releases/download/v1.5.0/tuibookie-linux-amd64"
      sha256 "55f4b3ee2188e1ff48ff97a3783a51ec562e2336b79fb934dc4d16f734a46d4b"

      def install
        bin.install "tuibookie-linux-amd64" => "tuibookie"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuibookie --help 2>&1", 2)
  end
end
