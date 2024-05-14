FROM python:3.8-slim

# 作業ディレクトリの設定
WORKDIR /app

# 必要なPythonパッケージをインストール
COPY ./requirements.txt /code/requirements.txt
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# アプリケーションのコピー
COPY ./app/* /app

# FastAPIアプリケーションを起動
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
