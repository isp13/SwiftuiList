//
//  ContentView.swift
//  Tests
//
//  Created by n.o.kazantsev on 11.03.2022.
//

import SwiftUI

struct ContentView: View {
    let models: [BaseModel] = [
        FirstModel(sectionName: .first, name: "Nick Kazantsev"),
        SecondModel(sectionName: .second, value: 13),
        FirstModel(sectionName: .first, name: "Anas Ben Mustafa"),
        SecondModel(sectionName: .second, value: 65476),
        FirstModel(sectionName: .second, name: "Name"),
        SecondModel(sectionName: .first, value: 000000)
    ]
    
    var body: some View {
        let groupedModels = Dictionary(grouping: models, by: { $0.sectionName })

        VStack(spacing: 8) {
            GenericViewHolder(viewModels: groupedModels)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
