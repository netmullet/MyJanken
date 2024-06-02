//
//  ContentView.swift
//  MyJanken
//
//  Created by Otsuka on 2024/05/26.
//

import SwiftUI

struct ContentView: View {
    
    @State var jankenNumber: Int = 0; // @Stateを記述することで、状態変数として宣言
    @State var trialsNumber: Int = 0;
    @State var winCounter: Int = 0;
    
    
    var body: some View { // 変数名にコロンをつけることで、プロパティとして宣言
        VStack {
            
            Text("Number of Wins:\(winCounter)")
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
                .padding(.trailing)
            Text("Number of Trials:\(trialsNumber)")
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
                .padding(.trailing)
            Spacer()
            if jankenNumber == 0 {
                Text("Are you ready?")
                    .padding(.bottom)
            } else if jankenNumber == 1 {
                Image(.gu)
                    .resizable()
                    .scaledToFit()
                Spacer()
                
                Text("You won?")
                
                Button(action: {
                    winCounter += 1;
                }, label: {
                    Text("Won")
                        .bold()
                        .padding()
                        .background(.pink)
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                })
                
            } else if jankenNumber == 2 {
                Image(.choki)
                    .resizable()
                    .scaledToFit()
                Spacer()
                
                Text("You won?")
                
                Button(action: {
                    winCounter += 1;
                }, label: {
                    Text("Won")
                        .bold()
                        .padding()
                        .background(.pink)
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                })
                
            } else {
                Image(.pa)
                    .resizable()
                    .scaledToFit()
                Spacer()
                
                Text("You won?")
                
                Button(action: {
                    winCounter += 1;
                }, label: {
                    Text("Won")
                        .bold()
                        .padding()
                        .background(.pink)
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                })
            }
            
            
            
            Button(action: {
                
                var newJankenNumber: Int = 0
                // 同じ結果が連続して表示されないようにする
                repeat {
                    newJankenNumber = Int.random(in: 1...3)
                } while jankenNumber == newJankenNumber
                
                jankenNumber = newJankenNumber
                
                trialsNumber += 1
                
            }, label: {
                Text("Start!")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .frame(height: 80)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .background(.teal)
                    .foregroundColor(.white)
                
            })
        }
    }
}

#Preview {
    ContentView()
}
