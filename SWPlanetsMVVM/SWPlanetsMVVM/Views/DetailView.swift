//
//  DetailView.swift
//  SWPlanetsMVVM
//
//  Created by Sean Murphy on 8/11/23.
//

import SwiftUI

struct DetailView: View {
    
    let planet: Results
    
    var body: some View {
        VStack {
            Text(planet.name)
            Text(planet.climate)
            Text(planet.gravity)
        }
    }
}

#Preview {
    DetailView(planet: Results(name: "Deven", rotationPeriod: "1 Gannon Butt", orbitalPeriod: "1", diameter: "aasdf", climate: "BigBooty", gravity: "1", terrain: "Swampy"))
}
