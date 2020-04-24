//
//  SubtractionView.swift
//  Paul the Tutor
//
//  Created by Manprit Heer on 4/22/20.
//

import SwiftUI


struct SubtractionView: View {
    @State var i = 0;
    @State var j = 0;
    var body: some View {
        ZStack{
            Image("images")
            Button(action: {
                    print("Tapped")
                }) {
                    if(self.i < set.count){
                        Text("\(set[i].problem)")}}
                            .foregroundColor(Color.white)
                            .padding()
              
//--------------------------first choice-----------------------------//
            Button(action: {
                
                if (answer_choices[self.i][0] == set[self.i].solution){
                    Text("Correct!").foregroundColor(Color.red)
                    self.i += 1
                } else {
                    Text("Please try again.").foregroundColor(Color.red)
                }
            
            }) {
                if(self.i < set.count){
                Text("\(answer_choices[i][0])")
                }
                }.foregroundColor(Color.black)
                .padding()
                .offset(x: -75, y:150)
            
//--------------------------second choice-----------------------------//
            
            Button(action: {
                
           if (answer_choices[self.i][1] == set[self.i].solution){
               Text("Correct!").foregroundColor(Color.red)
               self.i += 1
           } else {
                Text("Please try again.").foregroundColor(Color.red)
                }
        
            }) {
                if(self.i < set.count){
                Text("\(answer_choices[i][1])")
                } else{
                      Text("Congratulations, you finished!").foregroundColor(Color.red)
                  }
                }.foregroundColor(Color.black)
                .padding()
                .offset(x:0, y:150)
            
            
//--------------------------third choice-----------------------------//
            Button(action: {
                if (answer_choices[self.i][2] == set[self.i].solution){
                    Text("Correct!").foregroundColor(Color.red)
                    self.i += 1
                       } else {
                    Text("Please try again.").offset(x: 50, y: 170).foregroundColor(Color.red)
                            }
            }) {
                if(self.i < set.count){
                Text("\(answer_choices[i][2])")
                }

                }.foregroundColor(Color.black)
                .padding()
                .offset(x: 75, y:150)
            
        BarView().offset(x: 0, y: -280).padding(.bottom)
    }
}
}



struct Problem:Identifiable {
    let id: Int
    let problem: String
    let solution: Int
}

//set of problems on this page
var set = [problemOne, problemTwo, problemThree, problemFour, problemFive, problemSix, problemSeven, problemEight, problemNine, problemTen]

let problemOne = Problem(id: 0, problem: "5 - 2", solution: 3)
let problemTwo = Problem(id: 1, problem: "13 - 6", solution: 7)
let problemThree = Problem(id: 3, problem: "10 - 2", solution: 8)
let problemFour = Problem(id: 4, problem: "9 - 4", solution: 5)
let problemFive = Problem(id: 5, problem: "15 - 2", solution: 13)
let problemSix = Problem(id: 6, problem: "11 - 5", solution: 6)
let problemSeven = Problem(id: 7, problem: "8 - 4", solution: 4)
let problemEight = Problem(id: 8, problem: "13 - 7", solution: 6)
let problemNine = Problem(id: 9, problem: "10 - 9", solution: 1)
let problemTen = Problem(id: 10, problem: "12 - 6", solution: 6)


var answer_choices =
[
    [1 , 2 , 3],
    [7 , 5 , 6],
    [9 , 8 , 5],
    [2 , 0 , 5],
    [12 , 13 , 11],
    [5 , 6 , 7],
    [8 , 4 , 6],
    [4 , 7 , 6],
    [4 , 2 , 1],
    [6 , 1 , 4],

]

struct SubtractionView_Previews: PreviewProvider {
    static var previews: some View {
        SubtractionView()
        
    }
}
