# Set up git hooks globally in your environment ($nix flavors)
### Quick setup
```
wget https://raw.githubusercontent.com/xbalaji/git-hooks/master/setup-githooks.sh -q -O - |  bash
```
---
#### Explanation
The above command will
1. create a template directory
2. create a pre-commit hook
3. configure the pre-commit hook script as executable
4. configure the git hook globally in the config file

This can be verified by executing the following command before and after
```
git config -l
```
## New repositories
Any new repositories created after the above configuration will have the hooks setup properly
## Existing repositories
For any existing repositories, follow the steps below
```
cd <repo-name>
git init
```
## Check the hooks
```
ls -l <repo-name>/.git/hooks/pre-commit
cat <repo-name>/.git/hooks/pre-commit
```
