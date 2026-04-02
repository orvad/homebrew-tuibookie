class Tuibookie < Formula
  desc "A fast, interactive terminal bookmark manager for CLI commands"
  homepage "https://github.com/orvad/tuibookie"
  version "1.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/orvad/tuibookie/releases/download/v1.2.2/tuibookie-darwin-arm64"
      sha256 "3cdb0250b1ab4f29d8959c07b5c10a6281bf6e52dd0729038c0b85eddaf7baef"

      def install
        bin.install "tuibookie-darwin-arm64" => "tuibookie"
      end
    else
      url "https://github.com/orvad/tuibookie/releases/download/v1.2.2/tuibookie-darwin-amd64"
      sha256 "8bd3b3d53d6912623718b97afeda840b1977356154d6bcbd41611a9e07c120ec"

      def install
        bin.install "tuibookie-darwin-amd64" => "tuibookie"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/orvad/tuibookie/releases/download/v1.2.2/tuibookie-linux-arm64"
      sha256 "61dd12ecd8658a01f0e2c4d73857e99fbb0fc5cfbcf834b29944613caecddec7"

      def install
        bin.install "tuibookie-linux-arm64" => "tuibookie"
      end
    else
      url "https://github.com/orvad/tuibookie/releases/download/v1.2.2/tuibookie-linux-amd64"
      sha256 "be4e245743168a772152ed2f4e0a9f5d8d80a9e7cfb9b34611872c6f6be4cd0c"

      def install
        bin.install "tuibookie-linux-amd64" => "tuibookie"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuibookie --help 2>&1", 2)
  end
end
