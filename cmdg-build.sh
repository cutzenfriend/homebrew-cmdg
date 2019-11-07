#!/bin/bash

set -eux

export GOPATH=$(pwd)
go get github.com/mattn/go-runewidth
go get github.com/pkg/errors
go get github.com/sirupsen/logrus
go get golang.org/x/crypto/ssh/terminal
go get golang.org/x/oauth2
go get golang.org/x/text/encoding
go get google.golang.org/api/gmail/v1
go get github.com/ThomasHabets/cmdg
go build github.com/ThomasHabets/cmdg/cmd/cmdg
