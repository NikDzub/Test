//
//  ListRowView.swift
//  Test
//
//  Created by ihpt on 24/11/2024.
//

import SwiftUI

struct ListRowView: View {
    
    let item:ItemModel
    
    var body: some View {
        HStack{
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical,8)
    }
}



#Preview {
    let item1 = ItemModel(title: "First bro",isCompleted: false)
    let item2 = ItemModel(title: "Second bro",isCompleted: false)
    
    Group{
        ListRowView(item: item1)
    }
}
