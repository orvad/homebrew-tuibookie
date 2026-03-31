class Tuibookie < Formula
  desc "A fast, interactive terminal bookmark manager for CLI commands"
  homepage "https://github.com/orvad/tuibookie"
  version "1.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/orvad/tuibookie/releases/download/v1.1.1/tuibookie-darwin-arm64"
      sha256 "03541a690f81656343dfcdc1e087ffcac0d027f286306378977f74fb14c0321d"

      def install
        bin.install "tuibookie-darwin-arm64" => "tuibookie"
      end
    else
      url "https://github.com/orvad/tuibookie/releases/download/v1.1.1/tuibookie-darwin-amd64"
      sha256 "977d132cf547bd031f0342b0a6fa303e44e13203e7dcd2dd51e86b8eddfabdc9"

      def install
        bin.install "tuibookie-darwin-amd64" => "tuibookie"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/orvad/tuibookie/releases/download/v1.1.1/tuibookie-linux-arm64"
      sha256 "7b71718be3024a4442026758a165aa4b25fa895e4cf3aa6a2ffd1c2f293e3735"

      def install
        bin.install "tuibookie-linux-arm64" => "tuibookie"
      end
    else
      url "https://github.com/orvad/tuibookie/releases/download/v1.1.1/tuibookie-linux-amd64"
      sha256 "30101b630fe3a501bb29373f8f56908e6e8cb0a97783b21069b85ff00ef5fe50"

      def install
        bin.install "tuibookie-linux-amd64" => "tuibookie"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuibookie --help 2>&1", 2)
  end
end
