class Docket < Formula
  desc "Simple Markdown to HTML documentation rendering"
  homepage "http://willspeak.me/docket/"
  url "https://github.com/iwillspeak/docket/archive/v0.3.0.tar.gz"
  sha256 "1f615c7d7b7e0c16329a30fb09a5e1a8018bee9d2d95f9c1cf3a0b80dfed30b6"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."    
  end

  test do
    output = shell_output("#{bin}/docket --version")
    assert_match "Docket 0.3.0", output
  end
end
