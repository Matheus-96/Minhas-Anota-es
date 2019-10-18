//
//  ViewController.swift
//  Minhas Anotacoes
//
//  Created by Matheus Rodrigues Araujo on 17/10/19.
//  Copyright © 2019 Curso IOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textoTextView: UITextView!
    let chave = "anotacao"
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textoTextView.text = recuperaAnotacao()
    }
    
    @IBAction func botaoSalvar(_ sender: Any) {
        
        if let anotacao = textoTextView.text {
            UserDefaults.standard.set(anotacao, forKey: chave )
        }

    }
    
    func recuperaAnotacao () -> String {
        
        let textoSalvo = UserDefaults.standard.object(forKey: chave)
        if let textoString = textoSalvo  {
            return (textoString as! String)
        }
         return ""
    }
    
}

