//
//  UIDemoViewController.swift
//  rsb_arithmetic_ios
//
//  Created by Roman Brazhnikov on 27.02.2021.
//

import UIKit

class UIDemoViewController: BaseViewController {
    
    @IBAction func chooseOperationTapped(_ sender: UIButton) {
        let sb = UIStoryboard(name: "Main", bundle: .main)
        let vc = sb.instantiateViewController(withIdentifier: String(describing: ChooseOperationViewController.self))
        
        present(vc, animated: true, completion: nil)
    }
    
    @IBAction func gameTapped(_ sender: UIButton) {
        let sb = UIStoryboard(name: "Main", bundle: .main)
        let vc = sb.instantiateViewController(withIdentifier: String(describing: GameViewController.self))
        
        present(vc, animated: true, completion: nil)
    }
}
