//
//  InfoAlertViewController.swift
//  rsb_arithmetic_ios
//
//  Created by Roman Brazhnikov on 27.02.2021.
//

import UIKit

class InfoAlertViewController: BaseViewController {
    
    @IBOutlet private weak var titleLabel: UILabel! {
        didSet{titleLabel.text = titleText}
    }
    
    @IBOutlet private weak var messageLabel: UILabel! {
        didSet{messageLabel.text = messageText}
    }
    
    @IBOutlet private weak var actionButton: UIButton!
    
    var titleText: String = ""
    var messageText: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func actionButtonTapped(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        
    }
}
