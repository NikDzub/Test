//
//  ListView.swift
//  Test
//
//  Created by ihpt on 24/11/2024.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = ["first","second","third"]
    var body: some View {
        List{
            ForEach(items,id: \.self) { item in
                ListRowView(title: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List 📝")
        .navigationBarItems(leading: EditButton(),trailing: NavigationLink("Add",destination: AddView()))
    }
}

#Preview {
    NavigationView{
        ListView()
    }
}


