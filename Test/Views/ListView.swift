//
//  ListView.swift
//  Test
//
//  Created by ihpt on 24/11/2024.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [ItemModel] = [
        ItemModel(title: "First", isCompleted: false),
        ItemModel(title: "Second", isCompleted: true),
        ItemModel(title: "Third", isCompleted: false),
    ]
    var body: some View {
        List{
            ForEach(items) { item in
                
                ListRowView(item: item)
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


