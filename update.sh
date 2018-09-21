
GOOS=linux go build && \
zip ephemeral.zip ephemeral && \
rm ephemeral && \
aws lambda update-function-code --function-name ephemeral --zip-file fileb://ephemeral.zip && \
rm ephemeral.zip
