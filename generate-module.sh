# For macOS users
#! /opt/homebrew/bin/bash

# PC or Linux users
##! /bin/bash

arg=$1

bash ~/Repositories/scripts/generate-clean-code/generate-use-cases.sh $arg
bash ~/Repositories/scripts/generate-clean-code/generate-controller.sh $arg
