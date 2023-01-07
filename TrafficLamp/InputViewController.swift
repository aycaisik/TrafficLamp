//
//  InputViewController.swift
//  TrafficLamp
//
//  Created by Ayça Işık on 7.01.2023.
//

import UIKit

class InputViewController: UIViewController {
    
    @IBOutlet var textField : UITextField!
    @IBOutlet var segueSwitch : UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segue.identifier  tc kimligi
        //segue.destination gidilecek sayfa
        segue.destination.navigationItem.title = textField.text // gidilecek sayfayı güncelledik fakat .text yaptık çünkü ikisi de string türünden olmalı tek başına oldugu zaman text field UI dır
        
    }
    
    @IBAction func buttonTapped(_ button:UIButton){
        if segueSwitch.isOn{
            performSegue(withIdentifier: "gonext", sender: nil)
        }
    }
    

    

}
