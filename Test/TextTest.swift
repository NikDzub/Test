//
//  TextTest.swift
//  Test
//
//  Created by ihpt on 22/11/2024.
//

import SwiftUI

struct TextTest: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .font(.headline)
            .fontWeight(.semibold)
            .underline()
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    TextTest()
}
