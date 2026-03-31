class Tuibookie < Formula
  desc "A fast, interactive terminal bookmark manager for CLI commands"
  homepage "https://github.com/orvad/tuibookie"
  version "0.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/orvad/tuibookie/releases/download/v0.0.3/tuibookie-darwin-arm64"
      sha256 "a9379b7e6dcd9eee153d6c121f16caff2b94b4625ac9939cdde215a6470c1b8f"

      def install
        bin.install "tuibookie-darwin-arm64" => "tuibookie"
      end
    else
      url "https://github.com/orvad/tuibookie/releases/download/v0.0.3/tuibookie-darwin-amd64"
      sha256 "cf86b39738be05e41fa6fae6361d0c910b837b0a55a7a40754a3c9b08463fdab"

      def install
        bin.install "tuibookie-darwin-amd64" => "tuibookie"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/orvad/tuibookie/releases/download/v0.0.3/tuibookie-linux-arm64"
      sha256 "ec0e2789bdc77ff7b3132536fb593591f51c1b837ea245425e67450fd4c64602"

      def install
        bin.install "tuibookie-linux-arm64" => "tuibookie"
      end
    else
      url "https://github.com/orvad/tuibookie/releases/download/v0.0.3/tuibookie-linux-amd64"
      sha256 "7c5b430b05e44abbb9fb94be1f5a62e7807349b8e9e5458a5b921b06f4ba1756"

      def install
        bin.install "tuibookie-linux-amd64" => "tuibookie"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuibookie --help 2>&1", 2)
  end
end
