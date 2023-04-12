//
//  ViperProtocols.swift
//  swiftui-viper-demo
//
//  Created by bogdan razvan on 12.04.2023.
//

import Foundation

public protocol RouterProtocol: RouterPresenterProtocol {
    associatedtype PresenterRouter

    var presenter: PresenterRouter! { get set }
}

public protocol InteractorProtocol: InteractorPresenterProtocol {
    associatedtype PresenterInteractor

    var presenter: PresenterInteractor! { get set }
}

public protocol PresenterProtocol: PresenterRouterProtocol & PresenterInteractorProtocol & PresenterViewProtocol {
    associatedtype RouterPresenter
    associatedtype InteractorPresenter

    var router: RouterPresenter! { get set }
    var interactor: InteractorPresenter! { get set }
}

public protocol ViewProtocol {
    associatedtype PresenterView

    var presenter: PresenterView! { get set }
}

public protocol EntityProtocol {

}

public protocol RouterPresenterProtocol: AnyObject {

}

public protocol InteractorPresenterProtocol: AnyObject {

}

public protocol PresenterRouterProtocol: AnyObject {

}

public protocol PresenterInteractorProtocol: AnyObject {

}

public protocol PresenterViewProtocol: AnyObject {

}

public protocol ModuleProtocol {

    associatedtype View where View: ViewProtocol
    associatedtype Presenter where Presenter: PresenterProtocol
    associatedtype Router where Router: RouterProtocol
    associatedtype Interactor where Interactor: InteractorProtocol

    func assemble(presenter: Presenter, router: Router, interactor: Interactor)
}

public extension ModuleProtocol {

    func assemble(presenter: Presenter, router: Router, interactor: Interactor) {
        presenter.interactor = (interactor as! Self.Presenter.InteractorPresenter)
        presenter.router = (router as! Self.Presenter.RouterPresenter)
        interactor.presenter = (presenter as! Self.Interactor.PresenterInteractor)
        router.presenter = (presenter as! Self.Router.PresenterRouter)
    }
}
