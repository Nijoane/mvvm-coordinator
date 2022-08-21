//
//  SecondViewModel.swift
//  mvvm-coordinator
//
//  Created by Nicaely Joane on 21/08/22.
//

import Foundation

class SecondViewModel {
    weak var appCoordinator: AppCoordinator?

    func goToThirdView() {
        appCoordinator?.goToThirdPage()
    }
}
