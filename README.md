# develop enviroment

## carrierwave
you should be create .env file in root directory.  
write this setting and please change according to the environment.  

touch .env

```
# AWS
AWS_ACCESS_KEY_ID="hogehoge"
AWS_SECRET_ACCESS_KEY="hogehoge"
AWS_REGION="hogehoge"
AWS_S3_BUCKET="hogehoge"
```

## rmagick
you should be install this library for each environment.

Mac:  
brew install imagemagick@6  
brew link --force imagemagick@6  
bundle install  
参考URL：https://qiita.com/sho012b/items/362abe993248c686fcf4  

apt:  
sudo apt-get install libmagickwand-dev  
bundle install  
参考URL：https://qiita.com/16bitidol/items/af58dc910693c665d585  

yum:  
https://qiita.com/abgata20000/items/8a75779d296dbf57f913  

## finish
bundle install  
bundle exec rails server  
