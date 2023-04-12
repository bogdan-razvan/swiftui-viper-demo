//
//  LoginInteractor.swift
//  swiftui-viper-demo
//
//  Created by bogdan razvan on 12.04.2023.
//

import Foundation
import Combine

final class LoginInteractor: InteractorProtocol {

    weak var presenter: LoginPresenterInteractorProtocol!
}

extension LoginInteractor: LoginInteractorPresenterProtocol {

}
