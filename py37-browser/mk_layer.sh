rm -rf browser
mkdir browser
cd browser
wget https://github.com/adieuadieu/serverless-chrome/releases/download/v1.0.0-37/stable-headless-chromium-amazonlinux-2017-03.zip
unzip stable-headless-chromium-amazonlinux-2017-03.zip
rm -rf stable-headless-chromium-amazonlinux-2017-03.zip
wget https://chromedriver.storage.googleapis.com/2.37/chromedriver_linux64.zip
unzip chromedriver_linux64.zip
rm -rf chromedriver_linux64.zip
wget https://moji.or.jp/wp-content/ipafont/IPAexfont/IPAexfont00401.zip --no-check-certificate
unzip IPAexfont00401.zip
mv IPAexfont00401 .fonts
rm -rf IPAexfont00401.zip
cd ../
zip -r py37-browser.zip browser/
aws s3 cp py37-browser.zip s3://libs-lambda/py37/
