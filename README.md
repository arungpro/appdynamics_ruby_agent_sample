# Appdynamics - ruby agent - docker
A simple demo to instrument Ruby on  Rails Application using Appd ruby agent in docker container


### AppDynamics Ruby agent

## Install and Setup

Step 1: Clone project and enter into project folder
```
git clone https://github.com/arungpro/appdynamics_ruby_agent_sample.git
cd appdynamics_ruby_agent_sample
```
Edit: change config/appdynamics.yml file with your controller and application creds

Step 2: Edit Gemfile

to generate token
Go to https://github.com/settings/tokens and create a new Personal Access Token.

Then update your Gemfile:

# Gemfile

gem 'appdynamics'

Step 3: docker build
```
docker build -t myrails_app:v1 .
```

Step 4: docker run
```
docker run -p 3000:3000 myrails_app:v1
```

Step 5: Drive some load to application http://localhost:3000. After couple of hits the agent should show up in controller.
