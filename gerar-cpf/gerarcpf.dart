

import 'dart:math';
main() {

   var random = Random();
   List <int> gerarcpf = [];
   int soma2=0;

   int soma=0;

    for(int i =0;i<11;i++){
        int digitos = random.nextInt(10);
       gerarcpf.add(digitos);
      
    }

    int indice=0;


    for(int i =0; i<9;i++){
    indice=i;
    soma+=  gerarcpf[i] * (indice+1);
   }
    int resto1 = soma%11;

    if(resto1==10){
      resto1=0;
    }
   
    for(int i =0; i<10;i++){
    indice=i;
    soma2+=  gerarcpf[i] * indice;
   }

   int resto2 = soma2%11;

    if(resto2==10){
      resto2=0;
    }
    
    if(resto1==gerarcpf[9] || resto2==gerarcpf[10]){
    
     print(gerarcpf);
     
     print('esse cpf é valido');
    }
    else{
      print(gerarcpf);
      print('esse cpf não é valido. ');
    }

}