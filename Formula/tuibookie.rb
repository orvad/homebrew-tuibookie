class Tuibookie < Formula
  desc "A fast, interactive terminal bookmark manager for CLI commands"
  homepage "https://github.com/orvad/tuibookie"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/orvad/tuibookie/releases/download/v1.0.0/tuibookie-darwin-arm64"
      sha256 "6610f5b77e6f10fc32ef9d968bd91a2c84ba6c4647140dbc761da6645e904591"

      def install
        bin.install "tuibookie-darwin-arm64" => "tuibookie"
      end
    else
      url "https://github.com/orvad/tuibookie/releases/download/v1.0.0/tuibookie-darwin-amd64"
      sha256 "df248fa262097a314d6ea60a33dc24d29860f0b83943c91b47adc7845a0881bc"

      def install
        bin.install "tuibookie-darwin-amd64" => "tuibookie"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/orvad/tuibookie/releases/download/v1.0.0/tuibookie-linux-arm64"
      sha256 "7d89979702dfbbc428488664aa17b638a02fc4a4d829ddb37b757c2fbfb89b75"

      def install
        bin.install "tuibookie-linux-arm64" => "tuibookie"
      end
    else
      url "https://github.com/orvad/tuibookie/releases/download/v1.0.0/tuibookie-linux-amd64"
      sha256 "149a3e07469a1463a8dcb63b7d9f8b181d33c157bd51cd670832bb0716ed963f"

      def install
        bin.install "tuibookie-linux-amd64" => "tuibookie"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuibookie --help 2>&1", 2)
  end
end
