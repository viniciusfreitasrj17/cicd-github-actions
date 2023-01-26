# CI/CD Github Actions with Git Flow (gh-deploy)

## Whait is it?

- This repository ensure the developer workIng with git flow using homologation branch, and pipelines
- Has somes pipelines to production, homologation and release
- Has also the gh-deploy, a script that can help to working in git flow
- Still has an installer of gh-deploy

## First branchs

- Staging
- Main
- Develop

## To Install gh-deploy

***As root, run command below:***

```sh
  curl -fsSL https://raw.githubusercontent.com/viniciusfreitasrj17/cicd-github-actions/main/installer | bash
```

## Before use

- Edit pipeline for your use, as image name, branchs name, etc
- Define the secret in github repository
- Copy pipelines into your project before use gh-deploy

## How to use gh-deploy (Params)

- Name:
  - Github CLI to make pull request to staging/homolog, make releases and deploy to develop/master

- Synopsis:
  - gh-deploy OPTIONS

- OPTIONS:
  - -h, --help This Help

  - -pr, --pull-request <title_pr> [<description_pr>] Make a PR in homologation environment
    - Exmple <title_pr>: 'my title of pr to staging/homolog'
    - Exmple <description_pr>: 'my description ofpr to staging/homolog' (optional)

  - -r, -release <release_version> <release_description> [<description_pr>] Make Release and Deploy to production environment
    - Exmple <release_version>: '1.0.1'
    - Exmple <release_description>: 'my release description'
    - Exmple <description_pr>: 'my pr to staging/homolog' (optional)
