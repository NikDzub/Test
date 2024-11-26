//
//  NoItemsView.swift
//  Test
//
//  Created by ihpt on 26/11/2024.
//

import SwiftUI

struct NoItemsView: View {
    
    @State var animate: Bool = false
    var body: some View {
        ScrollView{
            VStack (spacing: 10){
                Text("There are no items 😱").font(.title).fontWeight(.semibold)
                Text("Are you a productive person? I think you should add some items to the todo list bro")
                NavigationLink(destination: AddView(), label: {Text("Add Something 🚀")})
                    .foregroundColor(.white)
                    .font(.headline)
                    .frame(height: 50)
                    .frame(maxWidth: .infinity)
                    .background(animate ? Color.red : Color.accentColor)
                    .cornerRadius(10)
                    .padding(.horizontal, animate ? 10: 40)
//                    .scaleEffect(animate ? 1.1 : 1.0)
            }.multilineTextAlignment(.center)
                .padding(40)
                .onAppear(perform: addAnimation)
        }.frame(maxWidth: .infinity,maxHeight: .infinity)
    }
    
    func addAnimation (){
        guard !animate else {return}
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5){
            withAnimation(
                Animation
                    .easeInOut(duration: 2.0)
                    .repeatForever()
            ){
                animate.toggle()
            }
        }
    }
}

#Preview {
    NavigationView{
        NoItemsView()
            .navigationTitle("Title")
         }
    
    
}
