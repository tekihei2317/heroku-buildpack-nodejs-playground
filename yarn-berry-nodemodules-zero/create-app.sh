#!/bin/bash

APP_NAME=yarn-berry-nodemodules-zero
heroku create $APP_NAME
heroku buildpacks:add https://github.com/lstoll/heroku-buildpack-monorepo.git -a $APP_NAME
heroku buildpacks:add https://github.com/tekihei2317/heroku-buildpack-nodejs.git#support-workspace-focusing -a $APP_NAME
heroku config:set APP_BASE=$APP_NAME -a $APP_NAME
heroku config:set YARN2_FOCUS_WORKSPACE=@sample/server -a $APP_NAME
