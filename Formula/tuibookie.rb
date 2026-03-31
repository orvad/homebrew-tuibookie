class Tuibookie < Formula
  desc "A fast, interactive terminal bookmark manager for CLI commands"
  homepage "https://github.com/orvad/tuibookie"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/orvad/tuibookie/releases/download/v0.0.1/tuibookie-darwin-arm64"
      sha256 "02148d015ca26a96809f0c9f38bad1363695f9adc85f43fda7023c29edafeacd"

      def install
        bin.install "tuibookie-darwin-arm64" => "tuibookie"
      end
    else
      url "https://github.com/orvad/tuibookie/releases/download/v0.0.1/tuibookie-darwin-amd64"
      sha256 "9228869ea8ec10665f07248a5f7fb62c8955b58e8756670e9e4722d8a8d1d896"

      def install
        bin.install "tuibookie-darwin-amd64" => "tuibookie"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/orvad/tuibookie/releases/download/v0.0.1/tuibookie-linux-arm64"
      sha256 "8480d13daac8410a82647839d40465b30ef2f78811a926f08682929e896eeaa3"

      def install
        bin.install "tuibookie-linux-arm64" => "tuibookie"
      end
    else
      url "https://github.com/orvad/tuibookie/releases/download/v0.0.1/tuibookie-linux-amd64"
      sha256 "1a5682de7220086ec236687ed306f0ec44435d4c61f963e6c25d7206e8a0b8a8"

      def install
        bin.install "tuibookie-linux-amd64" => "tuibookie"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuibookie --help 2>&1", 2)
  end
end
