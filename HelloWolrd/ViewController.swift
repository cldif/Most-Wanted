//
//  ViewController.swift
//  HelloWolrd
//
//  Created by Sylvain BESSONNEAU on 14/12/2020.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var monLabelOutlet: UILabel!
    
    @IBAction func monButtonAction(_ sender: Any) {
        let tab =  Tirage().tirage().map{ String($0) }
        monLabelOutlet.text = tab.joined(separator: " - ")
    }
}


