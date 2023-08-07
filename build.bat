set GOOS=windows
set GOPACH=amd64
go build -a -ldflags "-s -w" -o dnslog-go-win64.exe main.go

set GOOS=linux
set GOPACH=amd64
go build -a -ldflags "-s -w" -o dnslog-go-linux64 main.go