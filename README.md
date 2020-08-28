# Heroku deploy the first time 2020/08/29
https://yodo-finance-tracker.herokuapp.com/

# Deploy process:
# 1. Git push
   heroku git:remote -a yodo-finance-tracker
   git push heroku master
   
# 2. Migrate
   heroku run rails db:migrate
   
# 3. Send sandbox_api_key in credentials.yml from local machine to heroku
   heroku config:set RAILS_MASTER_KEY=`cat config/master.key`
   
   ## credentials.yml
       iex_client:
         sandbox_api_key: '****'
       secret_key_base: ****
   ## See credentials.yml on ubuntu on local machine
      EDITOR="code --wait" rails credentials:edit
   ## Get iex_client key from PUBLISHABLE
      https://iexcloud.io/console/tokens
      SANDBOX TESTING ON
