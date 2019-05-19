//
//  BossViewController.swift
//  InternBoss
//
//  Created by Mac Mini on 5/4/19.
//  Copyright © 2019 Mac Mini. All rights reserved.
//

import UIKit


protocol ChooseASideDelegate {
    func chooseASide(for label: String)
}

class BossViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var chooseDelegate: ChooseASideDelegate!
    
    
    
    
    
    @IBAction func darkSideBtnPressed(_ sender: Any) {
        self.chooseDelegate.chooseASide(for: "DarkSide")
        dismiss(animated: true, completion: nil)
        
        
    }
    
    @IBAction func theForceBtnPressed(_ sender: Any) {
        self.chooseDelegate.chooseASide(for: "TheForce")
        dismiss(animated: true, completion: nil)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
