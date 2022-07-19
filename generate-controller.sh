# For macOS users
#! /opt/homebrew/bin/bash

# PC or Linux users
##! /bin/bash

arg=$1

mkdir -p ./src/modules/$1/controllers

controller="${arg^}Controller"
use_case="${arg^}UseCase"
use_case_var="${arg}UseCase"

echo -e "import { Request, Response } from 'express';\nimport { $use_case } from '../useCases/$use_case'\n\nexport class $controller {\n  async handle(req: Request, res: Response) {\n    try {\n      const $use_case_var = new $use_case()\n    } catch(error: any) {\n      return res.status(500).send(error.message);\n    }\n  }\n}" > "./src/modules/$arg/controllers/$controller".ts

