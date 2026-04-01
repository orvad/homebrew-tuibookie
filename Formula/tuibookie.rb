class Tuibookie < Formula
  desc "A fast, interactive terminal bookmark manager for CLI commands"
  homepage "https://github.com/orvad/tuibookie"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/orvad/tuibookie/releases/download/v1.2.0/tuibookie-darwin-arm64"
      sha256 "0444a6df29bbe884c21df9e33e73a11846688227fa6cc3ac00a142259bbdf774"

      def install
        bin.install "tuibookie-darwin-arm64" => "tuibookie"
      end
    else
      url "https://github.com/orvad/tuibookie/releases/download/v1.2.0/tuibookie-darwin-amd64"
      sha256 "468f712efb14627190d868c5122684c647cd7880b52959f1b71aacf0ee2a275f"

      def install
        bin.install "tuibookie-darwin-amd64" => "tuibookie"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/orvad/tuibookie/releases/download/v1.2.0/tuibookie-linux-arm64"
      sha256 "86d928185d5b89671bf79144cdf8eacfe363e383f12ff8d55e0a24f0032f9862"

      def install
        bin.install "tuibookie-linux-arm64" => "tuibookie"
      end
    else
      url "https://github.com/orvad/tuibookie/releases/download/v1.2.0/tuibookie-linux-amd64"
      sha256 "109fd9c1f468c80ea02d391ebc6ac3d037ebbd2482028b3dbc732d052f191a8a"

      def install
        bin.install "tuibookie-linux-amd64" => "tuibookie"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuibookie --help 2>&1", 2)
  end
end
