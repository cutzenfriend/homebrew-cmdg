class Cmdg < Formula
  desc "Gmail CLI - Copyright Thomas Habets thomas@habets.se 2019"
  homepage "https://github.com/ThomasHabets/cmdg"
  url "https://github.com/cutzenfriend/homebrew-cmdg/releases/download/1.2.0/cmdg.rb"
  sha256 "62f276fc355c1df9854936f1ee527d294cf9ad150729d3d957c5a20c2d78ab51"
  version "1.2"
  depends_on "go"
  def install
    ENV["GOPATH"] = buildpath
    system "go", "get", "github.com/mattn/go-runewidth"
    system "go", "get", "github.com/pkg/errors"
    system "go", "get", "github.com/sirupsen/logrus"
    system "go", "get", "golang.org/x/crypto/ssh/terminal"
    system "go", "get", "golang.org/x/oauth2"
    system "go", "get", "golang.org/x/text/encoding"
    system "go", "get", "google.golang.org/api/gmail/v1"
    system "go", "get", "github.com/ThomasHabets/cmdg/cmd/cmdg"
    system "go", "build", "github.com/ThomasHabets/cmdg/cmd/cmdg"
    bin.install "./cmdg" => "cmdg"
  end

  test do
    system "#{bin}/cmdg", "--help"
  end
end
