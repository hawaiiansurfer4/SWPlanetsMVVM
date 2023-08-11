//
//  PlanetViewModel.swift
//  SWPlanetsMVVM
//
//  Created by Sean Murphy on 8/11/23.
//

import Foundation

class PlanetViewModel: ObservableObject {
    var networkManager = NetworkManager()
    @Published var planetArr = [Results]()
    
    func fetchPlanetData() {
        let startingURLString = "https://swapi.dev/api/planets/"
        
        networkManager.fetchData(with: startingURLString) { data, error in
            if let _ = error {
                print(error)
            }
            
            let decoder = JSONDecoder()
            do {
                guard let data = data else { return }
                let results = try decoder.decode(PlanetModel.self, from: data)
                DispatchQueue.main.async {
                    self.planetArr = results.results
                }
            } catch {
                print(error)
            }
        }
    }
}
