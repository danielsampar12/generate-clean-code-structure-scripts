# For macOS users
#! /opt/homebrew/bin/bash

# PC or Linux users
##! /bin/bash

arg=$1

mkdir -p ./src/modules/$1/useCases

use_case="${arg^}UseCase"

echo -e "export class $use_case {\n  async execute() {\n    try {\n    } catch(error: any) {\n      throw new Error(error);\n    }\n  }\n}" > "./src/modules/$arg/useCases/$use_case".ts
