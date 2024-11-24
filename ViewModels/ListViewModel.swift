//
//  ListViewModel.swift
//  Test
//
//  Created by ihpt on 24/11/2024.
//

import Foundation

class ListViewModel :ObservableObject{
    @Published var items: [ItemModel] = [
    ]
    init(){
        getItems()
    }
    //
    func getItems(){
        let newitems = [
            ItemModel(title: "First", isCompleted: false),
            ItemModel(title: "Second", isCompleted: true),
            ItemModel(title: "Third", isCompleted: false),
        ]
        items.append(contentsOf: newitems)
    }
    func deleteItem(indexSet:IndexSet){
        items.remove(atOffsets: indexSet)
    }
    func moveItem(from:IndexSet,to :Int){
        items.move(fromOffsets: from, toOffset: to)
    }
    func addItem(title:String){
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    func toggleComplete(item:ItemModel){
        if let index = items.firstIndex(where: { $0.id == item.id}){
            items[index] = item.updateCompletion()
        }
    }
}
