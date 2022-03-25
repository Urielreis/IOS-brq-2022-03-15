//
//  ViewController.swift
//  MeuSegundoProjeto
//
//  Created by user214456 on 3/16/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var LabelButton: UILabel!
    @IBAction func buttonAction(_ sender: Any) {
        print("Botao clicado")
        LabelButton.text =
            " botao clicado "
        print(textField.text)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

