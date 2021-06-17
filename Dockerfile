FROM dggecr01.huawei.com:80/k8s-dongguan-1/sahoc-euleros-with-python3.7.8:1
COPY ./package/web_api_demo.tar.gz /tmp/
RUN mkdir -p /usr/local/web_api_demo
RUN tar -zxvf /tmp/web_api_demo.tar.gz -C /usr/local/web_api_demo/
RUN pip3 install --trusted-host mirrors.tools.huawei.com -i http://mirrors.tools.huawei.com/pypi/simple -r /usr/local/web_api_demo/requirements.txt
RUN python3 /usr/local/web_api_demo/src/app.py 0.0.0.0:8081 &