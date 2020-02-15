FROM python:3.7-alpine  

# 作業ディレクトリを設定  
WORKDIR /usr/src/app  


# Pipenvをインストール  
RUN pip install --upgrade pip \  
# testproject = <プロジェクトネーム>
&& pip install django \
&& django-admin startproject manager_project . \
# testapp = アプリネーム
&& python manage.py startapp manager


CMD ["/bin/ash"]

# python manage.py runserver 0:8000で起動