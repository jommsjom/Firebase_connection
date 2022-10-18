//
//  ViewController.swift
//  Firebasefirst
//
//  Created by Jomms on 17/10/22.
//

import UIKit
import FirebaseDatabase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let ref = Database.database().reference()
        ref.child("someid").setValue("jomms")
        ref.child("Employee").setValue(["name":"jommss","role":"Admin","age":30])
        let updates = ["someid":"jommsss"]
        ref.updateChildValues(updates)
        ref.child("Fruits").setValue(["Name":"mango","Color":"red"])
        ref.child("someid").removeValue()
    }


}

