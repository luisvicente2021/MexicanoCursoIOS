//
//  SecondViewController.swift
//  SecondPractice
//
//  Created by Miguel Mexicano Herrera on 12/01/24.
//

import Foundation
import UIKit

protocol SecondViewControllerDelegate {
    func sendData(alumno: Alumno)
}

class SecondViewController: UIViewController {
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtAge: UITextField!
    
    @IBOutlet weak var txtLastName: UITextField!
    
    @IBOutlet weak var txtGender: UITextField!
    
    
    @IBOutlet weak var txtSchooling: UILabel!
    
    var delegate: SecondViewControllerDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func sendData() {
        let name = txtName.text ?? ""
        let lastName = txtLastName.text ?? ""
        let age = Int(txtAge.text ?? "0") ?? 0
        let gender = txtGender.text ?? ""
        let schooling = txtSchooling.text ?? ""
        
        if let delegate = delegate {
            let alumno = Alumno(name: name, lastName: lastName, age: age, gender: gender, schooling: schooling)
            delegate.sendData(alumno: alumno)
            self.navigationController?.popViewController(animated: true)
        }
    }
}
