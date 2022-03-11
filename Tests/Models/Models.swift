//
//  Models.swift
//  Tests
//
//  Created by n.o.kazantsev on 11.03.2022.
//

import SwiftUI

struct FirstModel: BaseModel {
    var sectionName: SectionType
    var name: String
}


struct FirstModelView: View {
    var vm : FirstModel
    
    var body: some View {
        VStack{
            HStack {
                Image(systemName: "person")
                VStack {
                    Text("Person name: ")
                        .bold()
                    Text(vm.name)
                }
            }
        }
        .background(.red)
        .cornerRadius(13)
    }
}


struct SecondModel: BaseModel {
    var sectionName: SectionType
    var value: Int
}

struct SecondModelView: View {
    var vm : SecondModel
    
    var body: some View {
        VStack{
            Text(String(vm.value))
        }
        .background(.yellow)
        .cornerRadius(13)
    }
}
