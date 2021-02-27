//
//  ChooseOptionViewController.swift
//  rsb_arithmetic_ios
//
//  Created by Roman Brazhnikov on 27.02.2021.
//

import UIKit

class ChooseOperationViewController: BaseViewController {
    

    @IBAction func operationTapped(_ sender: UIButton) {
        let sb = UIStoryboard(name: "Main", bundle: .main)
        let vc = sb.instantiateViewController(withIdentifier: String(describing: GameViewController.self))
        present(vc, animated: true, completion: nil)
    }
}
