#! /bin/sh

PWD=`pwd`
echo "start setup! current directory is ${PWD}!";

### bash
echo 'setup profile...';
ln -s $PWD/profile/command_alias ~/.command_alias
ln -s $PWD/profile/profile ~/.profile

### vimrc
echo 'setup vimrc...';
$PWD/vim/InstallVundle
ln -s $PWD/vim/vimrc ~/.vimrc

### eslint
echo 'setup eslint...';
$PWD/eslint/setup.sh
ln -s $PWD/eslint/eslintrc ~/.eslintrc.json

### textlint
echo 'setup textlint...';
$PWD/textlint/setup.sh
ln -s $PWD/textlint/textlintrc ~/.textlintrc

echo 'finished normally!!';
