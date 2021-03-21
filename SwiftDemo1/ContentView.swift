//
//  ContentView.swift
//  SwiftDemo1
//
//  Created by Charlie Caquias on 3/15/21.
//

import SwiftUI

struct ContentView: View {
    @State var showIcon = false
    var body: some View {
        VStack(spacing: 50) {
            if showIcon {
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 170, height: 170)
                .clipped()
                .padding(.top, 180)
            }
            Spacer()
            VStack(alignment: .leading, spacing: 10) {
                Text("I love SwiftUI!")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                Text("SwiftUI makes developing iOS apps fun and easy!")
                
            }
            .frame(width: 300, height: 150)
                Button(action: {showIcon.toggle()}, label: {
                Text("Show me the logo")
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                
            })
            
            }
        .padding(.bottom, 130)
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

