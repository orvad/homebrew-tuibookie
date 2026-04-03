class Tuibookie < Formula
  desc "A fast, interactive terminal bookmark manager for CLI commands"
  homepage "https://github.com/orvad/tuibookie"
  version "1.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/orvad/tuibookie/releases/download/v1.6.0/tuibookie-darwin-arm64"
      sha256 "df02925dbde6650465d78176f32c6b893e510764c966bb4a75623e7cccf4b781"

      def install
        bin.install "tuibookie-darwin-arm64" => "tuibookie"
      end
    else
      url "https://github.com/orvad/tuibookie/releases/download/v1.6.0/tuibookie-darwin-amd64"
      sha256 "f8e8f151f58e1df1b831b69d9574d67019a230b34d016e510a23dffdd855906f"

      def install
        bin.install "tuibookie-darwin-amd64" => "tuibookie"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/orvad/tuibookie/releases/download/v1.6.0/tuibookie-linux-arm64"
      sha256 "889e77657ea93384c8260ef00779d6db83ae11ba3de3fe39be845f661f59e865"

      def install
        bin.install "tuibookie-linux-arm64" => "tuibookie"
      end
    else
      url "https://github.com/orvad/tuibookie/releases/download/v1.6.0/tuibookie-linux-amd64"
      sha256 "6bac8b116fd1f401641d7281f1c30b93162c4e503494d0849dc98cff23b02290"

      def install
        bin.install "tuibookie-linux-amd64" => "tuibookie"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuibookie --help 2>&1", 2)
  end
end
