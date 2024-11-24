//
//  ItemModel.swift
//  Test
//
//  Created by ihpt on 24/11/2024.
//

import Foundation

struct ItemModel: Identifiable {
    let id:String = UUID().uuidString
    let title:String
    let isCompleted:Bool
}
