# dynamodb

Checks docs at http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tools.DynamoDBLocal.html

## Build
    docker build -t .
## Usage
    docker run -d --name dynamodb liuxinnian/dynamodb
## Notes
This images uses Alpine, https://github.com/gliderlabs/docker-alpine, a small footprint Docker OS with a basic package manager in order
to get a small image that would contain bash and curl. The final image should be ~150 MB, not bad for full JRE & DynamoDB jar.
## reference
Mainly reference from Dockerfile: https://hub.docker.com/r/peopleperhour/dynamodb/