class Tuibookie < Formula
  desc "A fast, interactive terminal bookmark manager for CLI commands"
  homepage "https://github.com/orvad/tuibookie"
  version "1.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/orvad/tuibookie/releases/download/v1.1.5/tuibookie-darwin-arm64"
      sha256 "a24933cb5f8be0a56b88f84cc7ce16e17f80ce61e7093b4b355511d47e9eefaf"

      def install
        bin.install "tuibookie-darwin-arm64" => "tuibookie"
      end
    else
      url "https://github.com/orvad/tuibookie/releases/download/v1.1.5/tuibookie-darwin-amd64"
      sha256 "9c47cb0d0130bd14d77553d676ea4bba8931c36521bcf3767629dd4f59971f79"

      def install
        bin.install "tuibookie-darwin-amd64" => "tuibookie"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/orvad/tuibookie/releases/download/v1.1.5/tuibookie-linux-arm64"
      sha256 "d362cb66a6082598c15b4e558d1d55faea90e5eb8b24d9f67234666b0a78753d"

      def install
        bin.install "tuibookie-linux-arm64" => "tuibookie"
      end
    else
      url "https://github.com/orvad/tuibookie/releases/download/v1.1.5/tuibookie-linux-amd64"
      sha256 "bb27d3f47d1cc4e44890fecf4b93d2523fe679da89e34d48a3b136b02f0bf34c"

      def install
        bin.install "tuibookie-linux-amd64" => "tuibookie"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuibookie --help 2>&1", 2)
  end
end
