FROM codercom/code-server:latest

RUN sudo sed -i 's@deb.debian.org@mirrors.tuna.tsinghua.edu.cn@g' /etc/apt/sources.list.d/debian.sources  && sudo apt update -y && sudo apt install -y python3 python3-pip python-is-python3 && sudo chmod 777 /usr/lib/code-server/lib/vscode/out/vs/code/browser/workbench/workbench.js && pip install requests pillow Appium-Python-Client selenium --break-system-packages 
