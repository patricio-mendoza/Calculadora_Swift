//
//  ViewController.swift
//  Calculadora
//
//  Created by Alumno on 12/10/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var resultado: UILabel!
    
    @IBAction func suma(_ sender: Any) {
        let numero1 = Double(textField1.text!)
        let numero2 = Double(textField2.text!)
         
        let output = (numero1 ?? 0) + (numero2 ?? 0)
        resultado.text = "Resultado: \(output)"
    }
    @IBAction func resta(_ sender: Any) {
        let numero1 = Double(textField1.text!)
        let numero2 = Double(textField2.text!)
         
        let output = (numero1 ?? 0) - (numero2 ?? 0)
        resultado.text = "Resultado: \(output)"
    }
    @IBAction func multi(_ sender: Any) {
        let numero1 = Double(textField1.text!)
        let numero2 = Double(textField2.text!)
         
        let output = (numero1 ?? 0) * (numero2 ?? 0)
        resultado.text = "Resultado: \(output)"
    }
    @IBAction func division(_ sender: Any) {
        let numero1 = Double(textField1.text!)
        let numero2 = Double(textField2.text!)
        
        if(numero2 == 0){
            resultado.text = "No se puede dividir por 0"
        } else {
            let output = (numero1 ?? 0) / (numero2 ?? 1)
            resultado.text = "Resultado: \(output)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
              
        //Looks for single or multiple taps.
         let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))

        //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
        //tap.cancelsTouchesInView = false

        view.addGestureRecognizer(tap)
    }

    //Calls this function when the tap is recognized.
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
}

