//
//  PlanetList.swift
//  SWPlanetsMVVM
//
//  Created by Sean Murphy on 8/11/23.
//

import SwiftUI

struct PlanetList: View {
    
    @ObservedObject var vm = PlanetViewModel()
    
    var body: some View {
        NavigationView {
            List(vm.planetArr) { planet in
                NavigationLink(destination: DetailView(planet: planet)) {
                    VStack {
                        Text(planet.name)
                    }
                }
            }
            .onAppear {
                self.vm.fetchPlanetData()
            }
        }
    }
}

#Preview {
    PlanetList()
}
