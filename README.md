# Ghostscript AWS Lambda Layer
Build and publish an AWS Lambda Layer which provides `gs` command.

## Requirements
- Docker
- Linux
- Node

## Release
The layer called `ghostscript-aws-lambda-layer` will be published with [Serverless Framewok](https://www.serverless.com/).

```sh
npm install
npm publish
```

## Usage
If you attach the layer to a lambda function, `gs` command will be installed under `/opt/bin`.

```sh
/opt/bin/gs --version
```

## License
Ghostscript is licensed under AGPL, and so is this project.
