repo=verse
space=rocker
dockerrepo=$(echo $space/$repo | tr [A-Z] [a-z])
case $USER in
  codespace)
  WORKSPACE=/workspaces
  ;;
  *)
  #WORKSPACE=$HOME/Workspace/git/
  WORKSPACE=$PWD
  ;;
esac
