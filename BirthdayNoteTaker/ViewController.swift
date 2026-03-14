//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by Buğrahan Umay Şafak on 9.03.2026.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var birthdayTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storedName = UserDefaults.standard.string(forKey: "name")
        let storedBirthday = UserDefaults.standard.string(forKey: "birthday")
        
        if let newName = storedName, !newName.isEmpty {
            nameLabel.text = "Name: \(newName)"
        } else {
            nameLabel.text = "Name:"
        }
        
        if let newBirthday = storedBirthday, !newBirthday.isEmpty {
            birthdayLabel.text = "Birthday: \(newBirthday)"
        } else {
            birthdayLabel.text = "Birthday:"
        }
    }

    @IBAction func saveClicked(_ sender: Any) {
        let name = nameTextField.text ?? ""
        let birthday = birthdayTextField.text ?? ""
        
        UserDefaults.standard.set(name, forKey: "name")
        UserDefaults.standard.set(birthday, forKey: "birthday")
        
        nameLabel.text = "Name: \(name)"
        birthdayLabel.text = "Birthday: \(birthday)"
    }
    
    @IBAction func deleteClicked(_ sender: Any) {
        UserDefaults.standard.removeObject(forKey: "name")
        UserDefaults.standard.removeObject(forKey: "birthday")
        
        nameLabel.text = "Name:"
        birthdayLabel.text = "Birthday:"
        
        nameTextField.text = ""
        birthdayTextField.text = ""
    }
}
