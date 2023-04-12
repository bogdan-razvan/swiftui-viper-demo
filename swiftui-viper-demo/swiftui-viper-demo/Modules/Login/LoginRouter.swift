//
//  LoginRouter.swift
//  swiftui-viper-demo
//
//  Created by bogdan razvan on 12.04.2023.
//

import Foundation
import UIKit

final class LoginRouter: RouterProtocol {

    weak var presenter: LoginPresenterRouterProtocol!
    weak var viewController: UIViewController?
    
}

extension LoginRouter: LoginRouterPresenterProtocol {

}
