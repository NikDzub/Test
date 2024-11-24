//
//  AddView.swift
//  Test
//
//  Created by ihpt on 24/11/2024.
//

import SwiftUI

struct AddView: View {
    
    @State var textFieldText:String = ""
    
    var body: some View {
        ScrollView{
            VStack{
                TextField("Add new Todo", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    
                    
                Button(action:{
                    
                },label:{
                    Text("Save".uppercased())
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
            }
            .padding(14)
        }
        .navigationTitle("Add an Item ✍️")
    }
}

#Preview {
    NavigationView{
        AddView()
    }
    
}
