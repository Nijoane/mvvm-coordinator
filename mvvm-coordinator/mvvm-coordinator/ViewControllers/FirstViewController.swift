//
//  FirstViewController.swift
//  mvvm-coordinator
//
//  Created by Nicaely Joane on 21/08/22.
//

import Foundation
import UIKit

class FirstViewController: UIViewController {
    var viewModel: FirstViewModel?
    @IBOutlet weak var nextButton: UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func nextButtonTapped(_ sender: Any) {
        viewModel?.goToSecondView()
    }
}
