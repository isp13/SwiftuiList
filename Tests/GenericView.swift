//
//  GenericView.swift
//  Tests
//
//  Created by n.o.kazantsev on 11.03.2022.
//

import SwiftUI

struct GenericViewHolder: View {
    var viewModels: [SectionType: [BaseModel]]
    
    private let feedViewFactory = FeedViewFactory()
    
    var body: some View {
        ForEach(Array(viewModels.keys.enumerated()), id:\.element) { _, key in
            Section(header: Text(key.stringValue)) { 
                let models = viewModels[key]!
                
                ForEach(0 ..< models.count) { index in
                    feedViewFactory.getView(vm: models[index])
                }
            }
        }
    }
}


class FeedViewFactory {
    @ViewBuilder
    func getView(vm: BaseModel) -> some View {
        switch vm {
        case let model as FirstModel:
            FirstModelView(vm: model)
        case let model as SecondModel:
            SecondModelView(vm: model)
        default:
            EmptyView()
        }
    }
}


