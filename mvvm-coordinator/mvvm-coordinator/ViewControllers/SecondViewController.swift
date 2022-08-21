//
//  SecondViewController.swift
//  mvvm-coordinator
//
//  Created by Nicaely Joane on 21/08/22.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    var viewModel: SecondViewModel?
    @IBOutlet weak var nextButton: UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func nextButtonTapped(_ sender: Any) {
        viewModel?.goToThirdView()
    }
}
