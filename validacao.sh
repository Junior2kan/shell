#!/bin/bash

echo "Digite seu nome: "
read NOME
echo $NOME | grep -E  '^[A-Z|a-z]{1,}$' && echo -e  "Login correto" || echo -e "Nome inválido" 


 

