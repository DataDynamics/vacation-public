#! /bin/bash

for f in $(ls .) ; do
  if [ ${f} = "README.md" -o ${f} = "rebuild.sh" ] ; then
    continue
  fi
  rm_candidate=${f}
  rm -rf ${rm_candidate}
done

cp -R ../vacation/frontend/build/* .
git add .
