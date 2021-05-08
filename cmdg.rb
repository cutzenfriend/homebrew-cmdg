class Cmdg < Formula
  desc "Gmail CLI - Copyright Thomas Habets thomas@habets.se 2019"
  homepage "https://github.com/ThomasHabets/cmdg"
  head "https://github.com/ThomasHabets/cmdg.git"
  version "1.3"
  depends_on "go"
  def install
    system "go", "build", "./cmd/cmdg"
    bin.install "./cmdg" => "cmdg"
  end

  test do
    system "#{bin}/cmdg", "--help"
  end
end
