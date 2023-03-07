//
//  ViewController.swift
//  RickAndMorty
//
//  Created by Bruno Ias on 01/02/23.
//

import UIKit

final class RMCharacterViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        title = "Characters"
        let request = RMrequest(
            endpoint: .character
        )
        print(request.url)
        
        RMService.shared.execute(.listCharactersRequests, expecting: RMGetAllCharactersResponse.self) {result in
            switch result {
            case .success(let model):
                print(String(describing: model))
                break
                
            case .failure (let error):
                print(String(String(describing: error)))
            }
        }
    }
}
