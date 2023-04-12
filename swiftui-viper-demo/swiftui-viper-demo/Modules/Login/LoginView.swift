//
//  LoginView.swift
//  swiftui-viper-demo
//
//  Created by bogdan razvan on 12.04.2023.
//

import SwiftUI

struct LoginView: ViewProtocol, View {

    var presenter: LoginPresenterViewProtocol!
    @ObservedObject var viewModel: LoginViewModel

    var body: some View {
        VStack(spacing: 20) {
            TextField("Username", text: $viewModel.login.username)
            TextField("Password", text: $viewModel.login.password)
            Button(action: {
                self.presenter.submit(
                    username: viewModel.login.username,
                    password: viewModel.login.password
                )
            }) {
                Text("Submit")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
        }
        .padding(40)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        let presenter = LoginPresenter()
        let viewModel = LoginViewModel()
        presenter.viewModel = viewModel
        return LoginView(presenter: presenter,
                        viewModel: viewModel)
    }
}
