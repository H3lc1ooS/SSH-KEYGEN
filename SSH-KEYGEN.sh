echo                  ' _______________________________________________________________ '
echo                  '|                                                               |'
echo                  '|                         SSH KEYGEN                            |'
echo                  '|      ___________________________________________________      |'
echo                  '|                                                               |'
echo                  '|       SSH KEYGEN IS A TOOL TO CREATE A GIT SSH QUICKLY        |'
echo                  '|       REPOSITORY: https://github.com/H3lc1ooS/SSH-KEYGEN      |'
echo                  '|       Version: 2.0                                            |'
echo                  '|                                                               |'
echo                  '|       AUTHOR INFO:                                            |'
echo                  '|       NAME: H3lc1ooS                                          |'
echo                  '|       GITHUB PROFILE: https://github.com/H3lc1ooS             |'
echo                  '|      ___________________________________________________      |'
echo                  '|                                                               |'
echo                  '|_______________________________________________________________|'
echo ''
echo "Digite o Nome de Usuário do github :"
read user
echo ''
echo "Digite o e-mail vinculado à conta do github :"
read mail
echo ''
git config --global user.email "$mail"
git config --global user.name "$user"

ssh-keygen -t rsa -b 4096 -C “$mail“

echo "Aperte ENTER para tudo"
eval "$(ssh-agent -s)" 

cat ~/.ssh/id_rsa.pub
start https://github.com/H3lc1ooS/SSH-KEYGEN