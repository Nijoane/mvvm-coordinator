//
//  FirstViewModel.swift
//  mvvm-coordinator
//
//  Created by Nicaely Joane on 21/08/22.
//

import Foundation

class FirstViewModel {
    weak var appCoordinator: AppCoordinator?

    func goToSecondView() {
        appCoordinator?.goToSecondPage()
    }
}
