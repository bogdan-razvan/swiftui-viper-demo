//
//  LoginPresenter.swift
//  swiftui-viper-demo
//
//  Created by bogdan razvan on 12.04.2023.
//

import Foundation
import Combine
import SwiftUI

final class LoginPresenter: PresenterProtocol {

    var router: LoginRouterPresenterProtocol!
    var interactor: LoginInteractorPresenterProtocol!
    weak var viewModel: LoginViewModel!

    var request: AnyCancellable?
}

extension LoginPresenter: LoginPresenterRouterProtocol {

}

extension LoginPresenter: LoginPresenterInteractorProtocol {

}

extension LoginPresenter: LoginPresenterViewProtocol {

    func submit(username: String, password: String) {
        print("Username is: \(username)")
        print("Password is: \(password)")
    }

}
