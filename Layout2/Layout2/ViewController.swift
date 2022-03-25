//
//  ViewController.swift
//  Layout2
//
//  Created by user214456 on 3/22/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usuarioTextField: UITextField!
    @IBOutlet weak var senhaTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print(segue.identifier)
        
        if (segue.identifier == "loginParaSegundaTelaSegue"){
            var segundaTela = segue.destination as!
            SegundaTelaViewController
        
        
        
        
        segundaTela.usuarioValue = usuarioTextField.text!
        segundaTela.senhaValue = senhaTextField.text!
        }
    }

}

