#dockerのnodeを実行
#以下のコマンドで、「imageをbuild して、runしてから結果を表示し、終了したらそのimageを削除」
#docker run --rm -it $(docker build -q .)
FROM node:10.13-alpine
#ホストのディレクトリをdockerにコピー
COPY ["node","/node"]
WORKDIR /node
CMD ["node","test.js"]
