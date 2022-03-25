//
//  SegundaTelaViewController.swift
//  Layout2
//
//  Created by user214456 on 3/22/22.
//

import UIKit


class SegundaTelaViewController : UIViewController {
    
    var usuarioValue : String = " "
    var senhaValue : String = " "
    
    @IBOutlet weak var usuarioLabel: UILabel!
    @IBOutlet weak var senhaLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(usuarioValue)
        print(senhaValue)
        
        usuarioLabel.text = "\(senhaLabel.text!) : \(usuarioValue)"
        
        senhaLabel.text = "\(senhaLabel.text!): \(senhaValue)"
    }
}
