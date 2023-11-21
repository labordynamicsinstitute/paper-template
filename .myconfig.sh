repo=report-aea-data-editor-2023
space=aeadataeditor
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
