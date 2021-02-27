//
//  GameViewController.swift
//  rsb_arithmetic_ios
//
//  Created by Roman Brazhnikov on 27.02.2021.
//

import UIKit

class GameViewController: BaseViewController {
    @IBOutlet weak var taskLabel: UILabel!
    @IBOutlet var answerButtonList: [UIButton]!
    
    @IBAction func numberTapped(_ sender: UIButton) {
        let sb = UIStoryboard(name: "Main", bundle: .main)
        let alertVC = sb.instantiateViewController(withIdentifier: String(describing: InfoAlertViewController.self)) as! InfoAlertViewController
        
        alertVC.titleText = taskLabel.text ?? ""
        alertVC.messageText = sender.currentTitle ?? ""
        
        present(alertVC, animated: true, completion: nil)
    }
}
