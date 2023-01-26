# CI/CD Github Actions with Git Flow (gh-deploy)

## Whait is it?

- This repository ensure the developer workIng with git flow using homologation branch, and pipelines
- Has somes pipelines to production, homologation and release
- Has also the gh-deploy, a script that can help to working in git flow
- Still has an installer of gh-deploy

## First branchs

- main/master
- develop
- staging/homolog/preview

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

  - -pr, --pull-request <title_pr> [<description_pr>]
    Make a PR in homologation environment
    - Exmple <title_pr>: 'my title of pr to staging/homolog'
    - Exmple <description_pr>: 'my description ofpr to staging/homolog' (optional)

  - -r, -release <release_version> <release_description> [<description_pr>]
    Make Release and Deploy to production environment
    - Exmple <release_version>: '1.0.1'
    - Exmple <release_description>: 'my release description'
    - Exmple <description_pr>: 'my pr to staging/homolog' (optional)

## Diagram

![Alt gh-deploy](diagram.drawio.svg)

## CLI Flow

1. -pr, --pull-request

   - After terminate feature, do commit in branch feat
   - Run: `gh-deploy -pr "docs: add readme"`
   - This command will do it:
       1. It will run validators
       2. It will push current branch to remote
       3. It will make pr to staging/homolog and merge it
2. . -r, --release

   - If homologation environment was correct, just run this command to make release and deploy
   - Run: `gh-deploy -r 1.0.0 "add readme"`
   - This command will do it:
     1. It will run validators
     2. It will create a new branch called version number, example 1.0.0, and checkout in it
     3. It will push this new branch (release branch)
     4. It will delete old branch (feature branch) in local and remote repository
     5. It will create release and tag with a version number used in command, the release will has this pattern: v1.0.0
     6. It will make pr to develop and merge it
     7. It will make pr to master/main and merge it, also it will remove release branch in remote repository
     8. It will checkout to develop branch in local and pull on it
  
***That's All Folks***
