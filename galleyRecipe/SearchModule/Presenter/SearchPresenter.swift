//
//  Presenter.swift
//  galleyRecipe
//
//  Created by Камиль Хакимов on 03.02.2023.
//

import Foundation

protocol SearchViewProtocol: AnyObject {
    func didFailWithError(error: Error)
}

protocol SearchViewPresenterProtocol: AnyObject {
    func tapOnTheRecipe()
}

class SearchPresenter: SearchViewPresenterProtocol {
    
    weak var view: SearchViewProtocol?
    var router: RouterProtocol?
    let networkService: NetworkServiceProtocol
    
    required init(networkService: NetworkServiceProtocol, router: RouterProtocol) {
        self.router = router
        self.networkService = networkService
    }
    
    func tapOnTheRecipe() {
        router?.showIngredients()
    }
}
