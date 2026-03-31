class Tuibookie < Formula
  desc "A fast, interactive terminal bookmark manager for CLI commands"
  homepage "https://github.com/orvad/tuibookie"
  version "1.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/orvad/tuibookie/releases/download/v1.1.4/tuibookie-darwin-arm64"
      sha256 "48d16c0b1b69098db8a142096fc1ee3191dd804196f21a8be7db4e285d19fd5b"

      def install
        bin.install "tuibookie-darwin-arm64" => "tuibookie"
      end
    else
      url "https://github.com/orvad/tuibookie/releases/download/v1.1.4/tuibookie-darwin-amd64"
      sha256 "efc17d393cde068310bed806f24097ad5729b688b2222dd08781af5a99893a25"

      def install
        bin.install "tuibookie-darwin-amd64" => "tuibookie"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/orvad/tuibookie/releases/download/v1.1.4/tuibookie-linux-arm64"
      sha256 "d3aa068fbc1ef09333035a836812fea1db81de485a4975038cc24bc0af5f505c"

      def install
        bin.install "tuibookie-linux-arm64" => "tuibookie"
      end
    else
      url "https://github.com/orvad/tuibookie/releases/download/v1.1.4/tuibookie-linux-amd64"
      sha256 "ff665e9649b51fc0fd75b2a24012bb0f84ab1b489a778a001d2068e31e53b280"

      def install
        bin.install "tuibookie-linux-amd64" => "tuibookie"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuibookie --help 2>&1", 2)
  end
end
