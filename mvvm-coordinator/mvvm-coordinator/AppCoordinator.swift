//
//  AppCoordinator.swift
//  mvvm-coordinator
//
//  Created by Nicaely Joane on 21/08/22.
//

import Foundation
import UIKit

class AppCoordinator: Coordinator {
    var parentCoodinator: Coordinator?
    var children: [Coordinator] = []
    var navigationController: UINavigationController

    init(navigation: UINavigationController) {
        self.navigationController = navigation
    }

    func start() {
        // A primeira vez que esse cordenador iniciar, a primeira pagina é carregada.
        goToFirstPage()
    }

    let storyboard = UIStoryboard.init(name: "Main", bundle: .main)

    func goToFirstPage() {
        // Instancia o ViewController
        let firstViewController = storyboard.instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController

        // Instancia a ViewModel
        let firstViewModel = FirstViewModel.init()

        // Define o coordenator para a viewModel
        firstViewModel.appCoordinator = self

        // Define a viewModel para o viewController
        firstViewController.viewModel = firstViewModel

        // da push no ViewController
        navigationController.pushViewController(firstViewController, animated: true)
    }

    func goToSecondPage() {
        let secondViewController = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController

        let secondViewModel = SecondViewModel.init()
        secondViewModel.appCoordinator = self

        secondViewController.viewModel = secondViewModel
        navigationController.pushViewController(secondViewController, animated: true)
    }

    func goToThirdPage() {
        let thirdViewController = storyboard.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController

        let thirdViewModel = ThirdViewModel.init()
        thirdViewModel.appCoordinator = self

        thirdViewController.viewModel = thirdViewModel
        navigationController.pushViewController(thirdViewController, animated: true)
    }
}
