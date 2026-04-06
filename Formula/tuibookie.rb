class Tuibookie < Formula
  desc "A fast, interactive terminal bookmark manager for CLI commands"
  homepage "https://github.com/orvad/tuibookie"
  version "1.7.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/orvad/tuibookie/releases/download/v1.7.2/tuibookie-darwin-arm64"
      sha256 "12b3c7ce7ed01045cb7205e404be3c068bd2972e17fc1d9028a5871c0ca4352c"

      def install
        bin.install "tuibookie-darwin-arm64" => "tuibookie"
      end
    else
      url "https://github.com/orvad/tuibookie/releases/download/v1.7.2/tuibookie-darwin-amd64"
      sha256 "80b227c3a570b3f302a9144dfbdce6a56ed71b6a9dfa53884a2ded7451d074a8"

      def install
        bin.install "tuibookie-darwin-amd64" => "tuibookie"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/orvad/tuibookie/releases/download/v1.7.2/tuibookie-linux-arm64"
      sha256 "4bca192f96863e1c2d2402abcbb773258b46c6dad9d6301cc9efbb2d046cc630"

      def install
        bin.install "tuibookie-linux-arm64" => "tuibookie"
      end
    else
      url "https://github.com/orvad/tuibookie/releases/download/v1.7.2/tuibookie-linux-amd64"
      sha256 "c7306de3d343ee8c6a4891cecabe1e8fde2fc147ad02f72c5e1bee3108c26192"

      def install
        bin.install "tuibookie-linux-amd64" => "tuibookie"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuibookie --help 2>&1", 2)
  end
end
