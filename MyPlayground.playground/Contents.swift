import UIKit

var greeting = "Hello, playground"
// var -> pode-se alterar o conteudo
var idade = 29
print(idade)

var nome = "Uriel"

// let -> nao pode alterar o conteudo
let pi = 3.14

 //variaveis podem tipos (Int, String, Double etc)
var altura : Int = 170

var sobrenome : String = "Reis"

var total : Double = 1.9

print(sobrenome + " " + String(altura) )

print("O meu sobrenome e " + sobrenome)

// operador de interpolacao (mostrar conteudo da variavel) ---\()
print("O meu sobrenome e \(sobrenome) e minha altura e \(altura)")

// Operadores

var soma : Int = 2 + 4

soma += 10
soma = soma + 10 // mesma coisa que a de cima

soma += 1

soma == altura

soma != altura

// Operadores Condicoes

// && operador AND
if soma < altura && soma > 10 {
    print("soma e menor que altura")
}
else if (soma < altura && soma < 10){
    print(" Soma e menor que altura e menor que 10 ")
}
else {
    print("soma e maior que altura ")
}

// SWITCH CASE

switch altura {
case 200...300:
    print("possui mais de 2m de altura")
    case 170:
    print(" possui mais de 1,7 m")
    default
    print("")
}


if (soma < altura && soma > 10) {
    print("soma e menor que altura")
}
if (soma < altura && soma > 10) {
    print("soma e menor que altura e menor que 10 ")
}
else {
    print("soma e maior que altura ")
    }

// operador OR ---------------- terminar---------------------
if soma > 1 ||
    

// Arrays

// declaracao implicita
    var v [10, 20, 30, 40, 50, 60, 70, 80]

print(v)
print(v[1])

    //declaracao de array vazio
var arrayVazio = [Int]()
print(arrayVazio)

    // append adiciona no final
arrayVazio.append(100)
    print(arrayVazio)
    
    arrayVazio.append(50)
    print(arrayVazio)
    
    arrayVazio += [30]
    print(arrayVazio)

    arrayVazio.remove(at: 1)
    print(arrayVazio)

    //dicionarios - mapeia uma chave e um valor ( este valor pode ser qualquer coisa)
    
var dicionario = ["chave1" : 177, "chave2": 128 ]
print(dicionario)
    
    dicionario["chave5"] = 208
    
    print(dicionario)
    print(dicionario["chave5"])
          
          dicionario.removeValue(forKey: "chave1")
          print(dicionario)
          
          dicionario["chave20"] = dicionario["chave2"]
          dicionario.removeValue(forKey: "chave2")
          print(dicionario)
          
          dicionario["chave5"] = 2098
          print(dicionario)
          

    // Estrutura de repeticao - for e while

for semana in 1...7{
    print(semana)
}

for i in arrayVazio {
    print(i)
}

for (cha, val) in dicionario {
    print(" chave : \(cha) - valor \(val)")
}

var contador: Int = 0
while (contador <= altura){
    print(contador)
    contador += 1
}
