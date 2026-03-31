class Tuibookie < Formula
  desc "A fast, interactive terminal bookmark manager for CLI commands"
  homepage "https://github.com/orvad/tuibookie"
  version "0.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/orvad/tuibookie/releases/download/v0.0.3/tuibookie-darwin-arm64"
      sha256 "fe627853fbd56b97cc194c870b8bed8dc6a9ad17eb12beef74b04d3f4f243277"

      def install
        bin.install "tuibookie-darwin-arm64" => "tuibookie"
      end
    else
      url "https://github.com/orvad/tuibookie/releases/download/v0.0.3/tuibookie-darwin-amd64"
      sha256 "42a1562e05e664f386fad9111219211668c46022a7f896151ba33fef5ce60efa"

      def install
        bin.install "tuibookie-darwin-amd64" => "tuibookie"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/orvad/tuibookie/releases/download/v0.0.3/tuibookie-linux-arm64"
      sha256 "d575b2193de152b493946951168eb238000cba516e7a1ab76fa6fbf281c0a5aa"

      def install
        bin.install "tuibookie-linux-arm64" => "tuibookie"
      end
    else
      url "https://github.com/orvad/tuibookie/releases/download/v0.0.3/tuibookie-linux-amd64"
      sha256 "651dfbc876022e4a10cf8c2a93a062e2a12b60dd50d6b1853a30130e7e8168f2"

      def install
        bin.install "tuibookie-linux-amd64" => "tuibookie"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuibookie --help 2>&1", 2)
  end
end
