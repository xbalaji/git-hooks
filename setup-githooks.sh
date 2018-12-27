#! /bin/bash

GIT_TEMPLATES="${HOME}/.git-templates"
GIT_HOOKS_DIR="${GIT_TEMPLATES}/hooks"

if [ -d "${GIT_HOOKS_DIR}" ]
then
  echo "${GIT_HOOKS_DIR} exists"
  exit 1
fi

mkdir -p "${GIT_HOOKS_DIR}"
cat << EOF > "${GIT_HOOKS_DIR}/pre-commit"
#!/bin/sh
branch="\$(git rev-parse --abbrev-ref HEAD)"
if [ "\$branch" = "master" ]; then
  echo "You can't commit directly to master branch"
  exit 1
fi
EOF

chmod +x "${GIT_HOOKS_DIR}/pre-commit"
git config --global init.templatedir "${GIT_TEMPLATES}"
