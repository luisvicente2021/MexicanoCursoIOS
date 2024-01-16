//
//  ViewController.swift
//  SecondPractice
//
//  Created by Miguel Mexicano Herrera on 12/01/24.
//

import UIKit
//Name
//Apellido
// Edad
//Sexo
// Escolaridad


class ViewController: UIViewController, SecondViewControllerDelegate {
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var ageLbl: UILabel!
    @IBOutlet weak var lastNameLbl: UILabel!
    @IBOutlet weak var genderLbl: UILabel!
    @IBOutlet weak var schoolingLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goToForm(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let secondViewController = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else {
            /// show Alert
            return
        }
        secondViewController.delegate = self
        let navigation = self.navigationController
        navigation?.pushViewController(secondViewController, animated: true)
        //self.present(secondViewController, animated: true)
    }
    func sendData(alumno: Alumno) {
        //print(age, name)
        nameLbl.text = "El nombre es: \(alumno.name)"
        lastNameLbl.text = "El apellido es: \(alumno.lastName)"
        ageLbl.text = "La edad es: \(alumno.age)"
        genderLbl.text = "El genero es: \(alumno.gender)"
        schoolingLbl.text = "La escolaridad es: \(alumno.schooling)"
    }
}
//extension ViewController: SecondViewControllerDelegate {
//    func sendData(age: Int, name: String?) {
//        print(age, name)
//    }
//}


struct Alumno {
    let name: String
    let lastName: String
    let age: Int
    let gender: String
    let schooling: String
}
