//
//  LoginModule.swift
//  swiftui-viper-demo
//
//  Created by bogdan razvan on 12.04.2023.
//

import Foundation
import UIKit
import SwiftUI
import Combine

protocol LoginRouterPresenterProtocol: RouterPresenterProtocol {

}

protocol LoginPresenterRouterProtocol: PresenterRouterProtocol {

}

protocol LoginPresenterInteractorProtocol: PresenterInteractorProtocol {

}

protocol LoginPresenterViewProtocol: PresenterViewProtocol {
    func submit(username: String, password: String)
}

protocol LoginInteractorPresenterProtocol: InteractorPresenterProtocol {

}

final class LoginModule: ModuleProtocol {

    typealias View = LoginView
    typealias Presenter = LoginPresenter
    typealias Router = LoginRouter
    typealias Interactor = LoginInteractor

    func build() -> UIViewController {
        let presenter = Presenter()
        let interactor = Interactor()
        let router = Router()

        let viewModel = LoginViewModel()
        let view = View(presenter: presenter, viewModel: viewModel)
        presenter.viewModel = viewModel

        self.assemble(presenter: presenter, router: router, interactor: interactor)

        let viewController = UIHostingController(rootView: view)
        router.viewController = viewController
        return viewController
    }
}
