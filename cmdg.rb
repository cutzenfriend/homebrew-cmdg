class Cmdg < Formula
  desc "Gmail CLI - Copyright Thomas Habets thomas@habets.se 2019"
  homepage "https://github.com/ThomasHabets/cmdg"
  url "https://github.com/ThomasHabets/cmdg.git", :using => :git
  version "1.4"
  depends_on "go"
  def install
    system "go", "build", "./cmd/cmdg"
    bin.install "./cmdg" => "cmdg"
  end

  test do
    system "#{bin}/cmdg", "--help"
  end
end
