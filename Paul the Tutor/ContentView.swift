//
//  ContentView.swift
//  Paul the Tutor
//
//  Created by Manprit Heer on 4/22/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
        VStack {

            BarView().offset(x: 0, y: -260).padding(.bottom)
   
            Text("Would you like to do addition or subtraction?")
                    .offset(x: 0, y: -100)
                    .allowsTightening(true)
            
            NavigationLink(destination: AdditionView()){
                Text("Addition")
                    .font(.title)
                    .foregroundColor(.black)
                    .padding()
                    .animation(.none)
            }
               
            NavigationLink(destination: SubtractionView()){
                Text("Subtraction")
                    .font(.title)
                    .foregroundColor(.black)
                    .padding()
            }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
