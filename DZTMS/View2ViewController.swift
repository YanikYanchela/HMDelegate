//
//  View2ViewController.swift
//  DZTMS
//
//  Created by Дмитрий Яновский on 4.01.24.
//

import Foundation
import UIKit

protocol DataDelegate: AnyObject{
    func sendData(_ data: String)
   
}


class view2viewController: UIViewController{
    
    weak var delegate: DataDelegate?
    
    @IBOutlet weak var text1: UITextField!
    
    @IBOutlet weak var text2: UITextField!
    
    @IBOutlet weak var text3: UITextField!
    

    
    @IBAction func sendTo(_ sender: Any) {
       
        var data = "\(text1.text ?? ""), \(text2.text ?? ""), \(text3.text ?? "")"
        
        delegate?.sendData(data)

        dismiss(animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    

}


