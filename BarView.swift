//
//  BarView.swift
//  Paul the Tutor
//
//  Created by Manprit Heer on 4/22/20.
//

import SwiftUI

struct BarView: View {
    var body: some View {
            ZStack {
                Color(red: 42/255, green:96/255, blue:48/255)
                    .edgesIgnoringSafeArea(.all)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 100)
                Color(red: 174/255, green: 146/255, blue:73/255)
                    .edgesIgnoringSafeArea(.all)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 10)
                    .offset(x: 0, y: 45)
                        
        }

                     
        }

    }

struct BarView_Previews: PreviewProvider {
    static var previews: some View {
        BarView()
    }
}
