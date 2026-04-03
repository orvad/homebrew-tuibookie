class Tuibookie < Formula
  desc "A fast, interactive terminal bookmark manager for CLI commands"
  homepage "https://github.com/orvad/tuibookie"
  version "1.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/orvad/tuibookie/releases/download/v1.4.0/tuibookie-darwin-arm64"
      sha256 "6ecde1ec2edd850d60cedca644d2ba2c5acd1359553cabb6541cc950dc3e621a"

      def install
        bin.install "tuibookie-darwin-arm64" => "tuibookie"
      end
    else
      url "https://github.com/orvad/tuibookie/releases/download/v1.4.0/tuibookie-darwin-amd64"
      sha256 "1f929d4f66e1f624dfa1f6d15f7f046dd0bf1c38f50ab014ecb099581d5d8d26"

      def install
        bin.install "tuibookie-darwin-amd64" => "tuibookie"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/orvad/tuibookie/releases/download/v1.4.0/tuibookie-linux-arm64"
      sha256 "f2aa9b585fb7b3f297f4ffd6bc3e3e69cedf9805a61296afb768c7a842f9d921"

      def install
        bin.install "tuibookie-linux-arm64" => "tuibookie"
      end
    else
      url "https://github.com/orvad/tuibookie/releases/download/v1.4.0/tuibookie-linux-amd64"
      sha256 "0a05dd0b9d036d2d29161ae03b43a127e3a5940b5f4a9d3a81ed864eb66e37c8"

      def install
        bin.install "tuibookie-linux-amd64" => "tuibookie"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuibookie --help 2>&1", 2)
  end
end
