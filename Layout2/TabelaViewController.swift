//
//  TabelaViewController.swift
//  Layout2
//
//  Created by user214456 on 3/22/22.
//

import UIKit

class TabelaViewController : UITableViewController{
    
    let pizzas : [String] = ["Muçarela", "Calabresa", "Palmito"]
    
    let descricaoPizzas = [" A Pizza de Muçarela é coberta com molho, queijo tipo muçarela, azeitonas pretas e orégano", "A Pizza de Calabreza é coberta com linguiça calabresa, queijo muçarela e orégano", "A Pizza de Palmito é coberta com queijo muçarela, palmito e azeitonas pretas "]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pizzas.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celula =
        tableView.dequeueReusableCell(withIdentifier: "celulaReuso", for: indexPath)
        
        celula.textLabel?.text = pizzas[indexPath.row]
        
        return celula
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print(descricaoPizzas[indexPath.row])
        
        let alerta = UIAlertController(title: pizzas[indexPath.row], message: descricaoPizzas[indexPath.row], preferredStyle: .alert)
        
        let confirmar = UIAlertAction(title: "Confirmar", style: .default, handler:  nil)
        
        alerta.addAction(confirmar)
        
        
        
        let Cancelar = UIAlertAction(title: "Cancelar", style: .destructive, handler: { (alert) in
            print("Cliquei em Cancelar")
            self.pizzas.append("Nova Pizza")
            self.descricaoPizzas.append("Nova Pizza")
            self.tableView.reloadData()
            
        })
        
        alerta.addAction(Cancelar)
        
        present(alerta, animated: true, completion: nil)
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

