class Tuibookie < Formula
  desc "A fast, interactive terminal bookmark manager for CLI commands"
  homepage "https://github.com/orvad/tuibookie"
  version "1.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/orvad/tuibookie/releases/download/v1.3.0/tuibookie-darwin-arm64"
      sha256 "686aa8798fd6bcbc55ececcef456c4048da56eae0eb445ca597f0c83ac88a7ac"

      def install
        bin.install "tuibookie-darwin-arm64" => "tuibookie"
      end
    else
      url "https://github.com/orvad/tuibookie/releases/download/v1.3.0/tuibookie-darwin-amd64"
      sha256 "e480f89cd5a76c62cab0564d755611fe1ee5188b69de7b888955ecc25cd7066d"

      def install
        bin.install "tuibookie-darwin-amd64" => "tuibookie"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/orvad/tuibookie/releases/download/v1.3.0/tuibookie-linux-arm64"
      sha256 "131978d320481895cd2f36183cea767a903ed1ffa866f18cc16fe976cbc60d5b"

      def install
        bin.install "tuibookie-linux-arm64" => "tuibookie"
      end
    else
      url "https://github.com/orvad/tuibookie/releases/download/v1.3.0/tuibookie-linux-amd64"
      sha256 "db647cdd708f7f83ca0f3aa96716deb80cd6a49b77061870a9f474856fa8956a"

      def install
        bin.install "tuibookie-linux-amd64" => "tuibookie"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuibookie --help 2>&1", 2)
  end
end
