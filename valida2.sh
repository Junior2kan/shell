#!/bin/bash
###SCRIPT PARA VALIDAÇÃO###

clear
echo "Seja bem-vindo, ao formulário do Chicão :)"
sleep 3
clear
echo "VAMOS COMEÇAR!"
sleep 2
clear



#Validação de nome

VLDNOME(){
read -ep " Digite somente seu primeiro nome: " NOME
if egrep -q '^[A-Z|a-z]{5,}$' <<< "$NOME";then
        printf "Nome válido, vamos continuar! \n" && VLDEMAIL
else
        printf " NOME INVÁLIDO TENTE NOVAMENTE! \n" && VLDNOME ;
fi
}


VLDEMAIL(){
read -ep "Digite seu email: " EMAIL
if egrep -q  '^[a-zA-Z_-.]+@[0-9a-zA-Z.-]+\.[a-z]{2,3}$' <<< "$EMAIL";then
        printf "Email válido, vamos continuar! \n" &&  VLDTEL
else
        printf "Email inválido, tente novamente! \n" && VLDEMAIL
fi
clear
} 


VLDTEL(){
read -ep "Digite somente seu telefone residencial, com DDD: " TEL
if egrep -q '^\([0-9]{2}\)\s*[0-9}{4}-[0-9]{4}$'; <<< "$TEL";then
        printf "Telefone válido \n" && VLDRG
else
        printf "Telefone inválido \n" && VLDTEL
fi
}


VLDRG(){
echo "digite seu RG, padrão XX.XXX.XXX.X"
sleep 3
clear
read -ep "Digite seu RG: " RG
if egrep  -q '^[0-9]{2,}.[0-9]{3,}.[0-9]{3,].[0-9]{1,}$' <<< "$RG";then
        printf "RG válido \n" && VLDCPF
else
        printf "RG inválido \n " && VLDRG
fi
}


VLDCPF(){
echo "digite seu cpf padrão XXX.XXX.XXX.XX" 
sleep 2
clear
read -ep "Digite seu CPF: " CPF
if egrep -q '^[0-9]{3,}.[0-9]{3,}[0-9]{3,}[0-9]{2,}$' <<< "$CPF";then
        printf "CPF Válido \n" && VLDATA
else
        printf "CPF Inválido \n" && VLDCPF
fi
}

VLDATA(){
echo "DIgite sua data de nascimento padrão dd/mm/aaaa"
sleep 3
clear
read -ep "Digite a data de nascimento: " NASC
if egrep -q '^[0-3]{1}[.][0-9]{1}[/][0-1]{1}[0-9]{1}[/][0-9]{4}$' <<< "$CPF";then
        printf "Tudo ok, vamos prosseguir \n" && VLDIP
else
        printf "ALguma coisa não está certa \n" && VLDATA
fi
}


VLDIP(){
read -ep "Digite o seu, ou qualquer ip que deseja: " IP
if egrep -q '^(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)' <<< "$IP";then
        printf "IP válido \n" && VLDMASK
else
        printf "IP Inválido \n" &&  VLDIP
fi
}

VLDMASK(){
read -ep "Valide sua mascara, digite sua netmask: " MASK
if egrep -q '^[0-9]{1,3}\.[0-9]{1,3}.\[0-9]{1,3}\.[0-9]{1,3}$' <<< "$MASK";then
        printf "Mascara válida" && CONG
else
        printf "Mascara inválida" && VLDMASK
fi
}


CONG(){
echo "Obrigado caro usuário, por participar de meu aprendizado."
sleep 2
clear
echo "Sou um aprendiz, porém tenho sede de virar mestre"
sleep 2
}
VLDNOME
