class Tuibookie < Formula
  desc "A fast, interactive terminal bookmark manager for CLI commands"
  homepage "https://github.com/orvad/tuibookie"
  version "1.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/orvad/tuibookie/releases/download/v1.4.1/tuibookie-darwin-arm64"
      sha256 "97d4ffa58d214b325a96f6dc1347db0c95f80b34a97bb58cfc776c089c508e48"

      def install
        bin.install "tuibookie-darwin-arm64" => "tuibookie"
      end
    else
      url "https://github.com/orvad/tuibookie/releases/download/v1.4.1/tuibookie-darwin-amd64"
      sha256 "3f1229e0298b7fd65d2a4846394f3035a7cc783a2b405c72bd0289e2061114b0"

      def install
        bin.install "tuibookie-darwin-amd64" => "tuibookie"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/orvad/tuibookie/releases/download/v1.4.1/tuibookie-linux-arm64"
      sha256 "6ecc2e98113619926fbf986fb870ac3d0d60b1b581a98949918a4a4437e4f0e8"

      def install
        bin.install "tuibookie-linux-arm64" => "tuibookie"
      end
    else
      url "https://github.com/orvad/tuibookie/releases/download/v1.4.1/tuibookie-linux-amd64"
      sha256 "1e7d0f3cbd7c9d53792b0a98fde334e2b6f7242e69e2f7007faf80d0be563432"

      def install
        bin.install "tuibookie-linux-amd64" => "tuibookie"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuibookie --help 2>&1", 2)
  end
end
