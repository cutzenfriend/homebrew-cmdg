class Cmdg < Formula
  desc "Gmail CLI - Copyright Thomas Habets thomas@habets.se 2019"
  homepage "https://github.com/ThomasHabets/cmdg"
  url "https://raw.githubusercontent.com/cutzenfriend/homebrew-cmdg/master/cmdg.rb"
  sha256 "f8a99b9508c4df51577b3593adf5de2b6e6866c0e64bd8fd848c92da72819925"
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
