import UIKit


class Funcionario {
    var nome: String?
    var salario: Double?
    
    init(nome: String, salario: Double){
        self.nome = nome
        self.salario = salario
    }
    func addAumento() -> Double {
        let addAumento: Double = salario! * 1.1
        return addAumento
    }
    func ganhoAnual() -> Double {
        let ganhoAnual: Double = (salario! * 1.1) * 12
        return ganhoAnual
    }
    func exibeDados(){
        print("Nome do Funcionario: \(nome!)")
        print("Salario do Funcionario: \(salario!)")
        print("Aumento salarial: \(addAumento())")
        print("Salario anual: \(ganhoAnual())")
    }
}
    var funcionario1 = Funcionario(nome:"Uriel", salario: 1988.05)
    
    funcionario1.exibeDados()
    
    
class Assistente : Funcionario{
    var matricula : Int?
    
    init(nome: String, salario: Double, matricula: Int){
        self.matricula = matricula
        super.init(nome: nome, salario: salario)
        
    }
    override func exibeDados(){
        print("Nome do Funcionario: \(nome!)")
        print("Salario do Funcionario: \(salario!)")
        print("Matricula do Funcionario: \(matricula!)")
        print("Aumento salarial: \(addAumento())")
        print("Salario anual: \(ganhoAnual())")
    }
}
    var funcionario2 = Assistente(nome: "Jose", salario: 1800.75, matricula: 580)

funcionario2.exibeDados()

class Tecnico : Assistente{
    var bonusSalario : Double?
    
    init(nome: String, salario: Double, matricula: Int, bonusSalario: Double) {
        self.bonusSalario = bonusSalario
        super.init(nome: nome, salario: salario, matricula: matricula)
        
    }
    override func ganhoAnual() -> Double {
        let ganhoAnual: Double = ((salario! * 1.1) * 12) + bonusSalario!
        return ganhoAnual
    }
    
    
}
    var funcionario3 = Tecnico(nome: "Maria", salario: 2050.78, matricula: 470, bonusSalario: 1.1)

funcionario3.exibeDados()


class Administrativo : Assistente {
    var turno: String?
    
    init(matricula: Int, nome: String, salario: Double, turno: String){
        self.turno = turno
        super.init(nome: nome, salario: salario, matricula: matricula)
    }
    	
    override func ganhoAnual() -> Double {
        var ganhoAnual: Double = ((salario! + (salario! * 1.1)) * 12.0) + (salario! + (salario! * 1.1))
        
        if turno == "Dia" {
            ganhoAnual = super.ganhoAnual()
        }
        return ganhoAnual
    }
}

    var funcionario4 = Tecnico(nome: "Joana", salario: 1950.78, matricula: 400, bonusSalario: 1.1)

funcionario4.exibeDados()




//Exercicio 2

class Animal {
    let nome: String?
    let raca: String?
    
    init(nome: String, raca: String){
        self.nome = nome
        self.raca = raca
        
    }
    func caminha(){
        print("Animal: \(nome!), Caminha")
    }
      
    
}

class Cachorro : Animal {
    
    func late(){
        print("Cachorro \(nome!), Late")
    }

    
    }
    

class Gato : Animal {
    func mia(){
        print("Gato: \(nome!), Mia")
    }

    
}




class Pessoa {
    var nome: String?
    var idade: Int?
    
    init(nome: String, idade: Int){
        self.nome = nome
        self.idade = idade
        
    }
    func vive(){
        print("\(nome!), Pessoa")
        
    }
    
}
    
    

class ClasseAlta: Pessoa {
    var dinheiro: Double? = 100.00
    init(nome: String, idade: Int, dinheiro: Double){
        self.dinheiro = dinheiro
        super.init(nome: nome, idade: idade)
        
    }
    func fazCompras(){
        print("Dinheiro: \(dinheiro!)")
    }
}
    print("Pessoa : ClasseAlta")
    var pessoarica = ClasseAlta(nome: "Luis", idade: 20, dinheiro: 1200.46)
    pessoarica.fazCompras()
    pessoarica.vive()

class ClasseMedia: Pessoa {
    func trabalha(){
        print("\(nome!), Trabalha")
        
    }
    override func vive() {
        print("\(nome!), Vive")
    }
}
    print("Pessoa : ClasseMedia")
    var pessoapobre = ClasseMedia(nome: "Nayara", idade: 18)
    pessoapobre.trabalha()
    pessoapobre.vive()

class ClasseBaixa: Pessoa{
    func mediga(){
        print("\(nome!), Sobrevive")
    }
    override func vive() {
        print("\(nome!), Vive")
        
    }
}
    print("Pessoa : ClasseBaixa")
    var pessoamiseravel = ClasseBaixa(nome: "Zé", idade: 22)
    pessoamiseravel.mediga()
    pessoamiseravel.vive()






	
