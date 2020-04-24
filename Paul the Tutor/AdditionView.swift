//
//  AdditionView.swift
//  Paul the Tutor
//
//  Created by Manprit Heer on 4/22/20.
//

import SwiftUI

struct AdditionView: View {
    @State var i = 0;
        @State var j = 0;
        var body: some View {
            ZStack{
                Image("images")
                Button(action: {
                        print("Tapped")
                        self.i += 1
                    }){
                        if(self.i < addition_set.count){
                            Text("\(addition_set[i].problem)")}}
                        .foregroundColor(Color.white)
                        .padding()
                  
//--------------------------first choice-----------------------------//
                Button(action: {
                    
                    if (add_answer_choices[self.i][0] == addition_set[self.i].solution){
                        Text("Correct!")
                        self.i += 1
                    } else {
                        Text("Please try again.").foregroundColor(Color.red)
                    }
                
                }) {
                    if(self.i < addition_set.count){
                    Text("\(add_answer_choices[i][0])")
                    }
                    }.foregroundColor(Color.black)
                    .padding()
                    .offset(x: -75, y:150)
                
                
//--------------------------second choice-----------------------------//
                Button(action: {
                    
               if (add_answer_choices[self.i][1] == addition_set[self.i].solution){
                   Text("Correct!")
                   self.i += 1
                              } else {
                       Text("Please try again.").foregroundColor(Color.red)
                   }   }) {
                    if(self.i < addition_set.count){
                    Text("\(add_answer_choices[i][1])")
                    } else{
                          Text("Congratulations, you finished!").foregroundColor(Color.red)
                      }
                    }.foregroundColor(Color.black)
                    .padding()
                    .offset(x:0, y:150)
                
                
//--------------------------third choice-----------------------------//
                Button(action: {
                    if (add_answer_choices[self.i][2] == addition_set[self.i].solution){
                       Text("Correct!")
                        self.i += 1
                    
                        } else {
                            Text("Please try again.").foregroundColor(Color.red)
                        }}
                ){
                    if(self.i < addition_set.count){
                            Text("\(add_answer_choices[i][2])")}
                        }       .foregroundColor(Color.black)
                                .padding()
                                .offset(x: 75, y:150)
                
            BarView().offset(x: 0, y: -280).padding(.bottom)
        }
      }
    }



    //set of problems on this page
var addition_set = [problem_add1,  problem_add2, problem_add3 , problem_add4 , problem_add5 , problem_add6, problem_add7, problem_add8 , problem_add9, problem_add10]

    let problem_add1 = Problem(id: 0, problem: "5 + 2", solution: 7)
    let problem_add2 = Problem(id: 1, problem: "13 + 6", solution: 19)
    let problem_add3 = Problem(id: 3, problem: "10 + 2", solution: 12)
    let problem_add4 = Problem(id: 4, problem: "9 + 4", solution: 13)
    let problem_add5 = Problem(id: 5, problem: "15 + 2", solution: 17)
    let problem_add6 = Problem(id: 6, problem: "11 + 5", solution: 16)
    let problem_add7 = Problem(id: 7, problem: "8 + 4", solution: 12)
    let problem_add8 = Problem(id: 8, problem: "13 + 7", solution: 20)
    let problem_add9 = Problem(id: 9, problem: "10 + 9", solution: 19)
    let problem_add10 = Problem(id: 10, problem: "12 + 6", solution: 18)


    var add_answer_choices =
    [
        [7 , 8 , 11],
        [17 , 19 , 18],
        [12 , 8 , 15],
        [12 , 13 , 15],
        [12 , 17 , 11],
        [15 , 16 , 17],
        [13 , 14 , 12],
        [17 , 21 , 20],
        [18, 19 , 20],
        [18 , 17 , 19],

    ]

struct AdditionView_Previews: PreviewProvider {
    static var previews: some View {
        AdditionView()
    }
}
