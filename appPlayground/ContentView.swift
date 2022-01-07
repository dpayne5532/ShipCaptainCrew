//
//  ContentView.swift
//  appPlayground
//
//  Created by Dan Payne on 1/5/22.
//

import SwiftUI

struct ContentView: View {
    
   
    @State var isDone = false
    
    @State var diceOne = 3
    @State var diceTwo = 2
    @State var diceThree = 3
    @State var diceFour = 4
    @State var diceFive = 5
    
    @State var rollDiceOne = true
    @State var rollDiceTwo = true
    @State var rollDiceThree = true
    @State var rollDiceFour = true
    @State var rollDiceFive = true
    
    
    var body: some View {
   
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
        HStack {
        VStack {

            DiceView(n: diceOne)
            DiceView(n: diceTwo)
            DiceView(n: diceThree)
            DiceView(n: diceFour)
            DiceView(n: diceFive)
          
            

            
           Spacer()
            
            
            
            
            
        }
        .padding()
            
            Spacer()
            
            
            VStack {
               
                
                Button {self.rollDiceOne.toggle()}
                label: {
                RoundedRectangle(cornerRadius: 25)
                        .fill(rollDiceOne ? Color("dutchGreen") : Color("diceRed"))
                        .padding(.all)
                    .frame(width: 150, height: 105)
                    .shadow(color: .black, radius: 10, x: 3, y: 3   )
                    .overlay(HStack {

                        Text(rollDiceOne ? "Hold?" : "HELD!")

                            .font(Font.custom("PaytoneOne-Regular", size: 20))
                            .foregroundColor(.black)
                            .navigationBarTitle("")
                            .navigationBarHidden(true)
                    })

                }
                
                
                Button {self.rollDiceTwo.toggle()}
                label: {
                RoundedRectangle(cornerRadius: 25)
                        .fill(rollDiceTwo ? Color("dutchGreen") : Color("diceRed"))
                    .padding(.all)
                    .frame(width: 150, height: 105)
                    .shadow(color: .black, radius: 10, x: 3, y: 3   )
                    .overlay(HStack {

                        Text(rollDiceTwo ? "Hold?" : "HELD!")

                            .font(Font.custom("PaytoneOne-Regular", size: 20))
                            .foregroundColor(.black)
                            .navigationBarTitle("")
                            .navigationBarHidden(true)
                    })

                }
              
                
                Button {self.rollDiceThree.toggle()}
                label: {
                RoundedRectangle(cornerRadius: 25)
                        .fill(rollDiceThree ? Color("dutchGreen") : Color("diceRed"))
                    .padding(.all)
                    .frame(width: 150, height: 105)
                    .shadow(color: .black, radius: 10, x: 3, y: 3   )
                    .overlay(HStack {

                        Text(rollDiceThree ? "Hold?" : "HELD!")

                            .font(Font.custom("PaytoneOne-Regular", size: 20))
                            .foregroundColor(.black)
                            .navigationBarTitle("")
                            .navigationBarHidden(true)
                    })

                }
           
                Button {self.rollDiceFour.toggle()}
                label: {
                RoundedRectangle(cornerRadius: 25)
                        .fill(rollDiceFour ? Color("dutchGreen") : Color("diceRed"))
                    .padding(.all)
                    .frame(width: 150, height: 105)
                    .shadow(color: .black, radius: 10, x: 3, y: 3   )
                    .overlay(HStack {

                        Text(rollDiceFour ? "Hold?" : "HELD!")

                            .font(Font.custom("PaytoneOne-Regular", size: 20))
                            .foregroundColor(.black)
                            .navigationBarTitle("")
                            .navigationBarHidden(true)
                    })

                }
             
                Button {self.rollDiceFive.toggle()}
                label: {
                RoundedRectangle(cornerRadius: 25)
                        .fill(rollDiceFive ? Color("dutchGreen") : Color("diceRed"))
                    .padding(.all)
                    .frame(width: 150, height: 105)
                    .shadow(color: .black, radius: 10, x: 3, y: 3   )
                    .overlay(HStack {

                        Text(rollDiceFive ? "Hold?" : "HELD!")

                            .font(Font.custom("PaytoneOne-Regular", size: 20))
                            .foregroundColor(.black)
                            .navigationBarTitle("")
                            .navigationBarHidden(true)
                    })

                }
                
                
                
          
                
                
             Spacer()
                
            
                
                Button {
                    if rollDiceOne {
                    self.diceOne = Int.random(in: 1...6)
                    }
                    if rollDiceTwo {
                        self.diceTwo = Int.random(in: 1...6)
                    }
                    if rollDiceThree {
                        self.diceThree = Int.random(in: 1...6)
                    }
                    if rollDiceFour {
                        self.diceFour = Int.random(in: 1...6)
                    }
                    if rollDiceFive {
                        self.diceFive = Int.random(in: 1...6)
                    }
                
                
                
                }
                
            
            
            
            label: {
                RoundedRectangle(cornerRadius: 25)
                        .fill(Color("dutchGreen"))
                    .padding(.all)
                    .frame(width: 130, height: 80)
                    .shadow(color: .black, radius: 10, x: 3, y: 3   )
                    .overlay(HStack {

                        Text("ROLL!")

                            .font(Font.custom("PaytoneOne-Regular", size: 20))
                            .foregroundColor(.black)
                            .navigationBarTitle("")
                            .navigationBarHidden(true)
                    })

                }
            
            }
            
        
        
        
        
        }
        
        }
        
    }
    
    
}




struct DiceView: View {
    let n: Int
    
    var body: some View {
        Image("dice\(n)")
                      
          
    }
    
}






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}






