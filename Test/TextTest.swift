//
//  TextTest.swift
//  Test
//
//  Created by ihpt on 22/11/2024.
//

import SwiftUI

struct TextTest: View {
    var body: some View {
        Text("jhjhd hello world" .capitalized)
//            .font(.headline)
//            .fontWeight(.semibold)
//            .underline()
//            .font(.system(size: 54,weight: .semibold,design: .rounded))
//            .baselineOffset(30)
//            .kerning(5)
            .foregroundColor(.red)
            .multilineTextAlignment(TextAlignment.leading)
            .frame(width: 200,height: 100,alignment: .leading)
        
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    TextTest()
}
