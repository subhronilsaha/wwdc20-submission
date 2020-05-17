/*:
# Welcome to Level 2

 &nbsp;

 ## Hi! In this lesson, we will be looking at the alphabets with 2 dits/dahs.
  
 &nbsp;

 ## These are:
 
 ### A:  . _ (dit dah)
 ### I:  . . (dit dit)
 ### M:  _ _ (dah dah)
 ### N:  _ . (dah dit)
 
 &nbsp;
 
 ## Run the code to play the game.

 &nbsp;

 ## After completion, move onto the next page.
 
 &nbsp;

*/


import SwiftUI
import PlaygroundSupport

struct Morse: Identifiable {
    var id = UUID()
    var letter: String
    var code: [Int]
}

struct LevelTwoView: View {
    // Color Palette
    let lightBlack = Color(red: 19/255, green: 19/255, blue: 19/255)
    let peach = Color(red: 255/255, green: 162/255, blue: 153/255)
    let lightYellow = Color(red: 254/255, green: 226/255, blue: 179/255)
    let brown = Color(red: 86/255, green: 35/255, blue: 73/255)
    let darkGreen = Color(red: 88/255, green: 180/255, blue: 174/255)
    
    // Letter Array
    let letters = [Morse(letter: "A", code: [0, 1]), Morse(letter: "I", code: [0, 0]), Morse(letter: "M", code: [1, 1]), Morse(letter: "N", code: [1, 0])]
    
    // STATES
    @State var qID: Int = 0
    @State var showRules: Bool = true
    @State var score: Int = 0
    @State var status = Color.blue
    
    var body: some View {
        ZStack {
            Image(uiImage: #imageLiteral(resourceName: "Asset 3.png")).resizable().scaledToFill()
            
            if showRules {
                // Display Rules here
                VStack {
                    Image(uiImage: #imageLiteral(resourceName: "WWDC-text-2-01.png")).resizable().scaledToFit()
                    
                    Button(action: {
                        withAnimation { 
                            self.showRules.toggle()
                        }
                    }) { 
                        Text("Start")
                            .padding()
                            .padding(.horizontal, 20)
                            .foregroundColor(Color.white)
                            .background(Color.blue)
                            .font(.title)
                            .cornerRadius(10)
                        
                    }.padding(.vertical, 40)
                    
                }.padding(.all, 60).animation(.easeInOut)
                
            } else {
                if self.qID < self.letters.count {
                    VStack {
                        Spacer()
                        
                        Text("Which letter does this imply?")
                            .font(.largeTitle)
                            .foregroundColor(self.brown)
                            .fontWeight(.bold)
                            .padding(.bottom, 30)
                        
                        // Display Morse Symbol
                        if self.qID == 0 {
                            HStack(spacing: 30) {
                                Circle()
                                    .fill(Color.blue)
                                    .frame(width: 30, height: 30)
                                Rectangle()
                                    .fill(Color.blue)
                                    .frame(width: 100, height: 20)
                            }
                        } else if self.qID == 1  {
                            HStack(spacing: 30) {
                                Circle()
                                    .fill(Color.blue)
                                    .frame(width: 30, height: 30)
                                Circle()
                                    .fill(Color.blue)
                                    .frame(width: 30, height: 30)
                            }
                        } else if self.qID == 2  {
                            HStack(spacing: 30) {
                                Rectangle()
                                    .fill(Color.blue)
                                    .frame(width: 100, height: 20)
                                
                                Rectangle()
                                    .fill(Color.blue)
                                    .frame(width: 100, height: 20)
                            }
                        } else if self.qID == 3  {
                            HStack(spacing: 30) {
                                Rectangle()
                                    .fill(Color.blue)
                                    .frame(width: 100, height: 20)
                                Circle()
                                    .fill(Color.blue)
                                    .frame(width: 30, height: 30)
                            }
                        }
                        
                        HStack(spacing: 60){
                            
                            // Button 1
                            Button(action: {
                                withAnimation{
                                    if self.qID == 0 {
                                        self.score += 1
                                        self.status = self.darkGreen
                                    } else {
                                        self.status = Color.red
                                    }
                                    self.qID += 1
                                }
                            }) {
                                Text(" A ")
                                .padding()
                                .padding(.horizontal, 20)
                                .foregroundColor(Color.white)
                                .background(Color.blue)
                                .font(.title)
                                .cornerRadius(10)
                            }
                            
                            // Button 2
                            Button(action: {
                                withAnimation{
                                    if self.qID == 1 {
                                        self.score += 1
                                        self.status = self.darkGreen
                                    } else {
                                        self.status = Color.red
                                    }
                                    self.qID += 1
                                }
                            }) {
                                Text(" I ")
                                .padding()
                                .padding(.horizontal, 20)
                                .foregroundColor(Color.white)
                                .background(Color.blue)
                                .font(.title)
                                .cornerRadius(10)
                            }
                            
                            // Button 3
                            Button(action: {
                                withAnimation{
                                    if self.qID == 2 {
                                        self.score += 1
                                        self.status = self.darkGreen
                                    } else {
                                        self.status = Color.red
                                    }
                                    self.qID += 1
                                }
                            }) {
                                Text("M ")
                                .padding()
                                .padding(.horizontal, 20)
                                .foregroundColor(Color.white)
                                .background(Color.blue)
                                .font(.title)
                                .cornerRadius(10)
                            }
                            
                            // Button 4
                            Button(action: {
                                withAnimation{
                                    if self.qID == 3 {
                                        self.score += 1
                                        self.status = self.darkGreen
                                    } else {
                                        self.status = Color.red
                                    }
                                    self.qID += 1
                                }
                            }) {
                                Text(" N ")
                                .padding()
                                .padding(.horizontal, 20)
                                .foregroundColor(Color.white)
                                .background(Color.blue)
                                .font(.title)
                                .cornerRadius(10)
                            }
                            
                        }.animation(.easeInOut).padding(.top, 30)
                        
                        Spacer()
                        
                        Text("Score: \(self.score)")
                            .padding()
                            .background(self.status)
                            .font(.system(size: 40))
                            .padding(.bottom, 30)
                        
                    }.padding(.all, 60)
                    
                } else {
                    
                    VStack {
                        Text("Level Cleared!")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(self.brown)
                            .animation(.easeInOut)
                            .padding(.bottom, 10)
                        
                        Text("Congratulations!!")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color.green)
                            .animation(.easeInOut)
                            .padding(.bottom, 50)
                        
                        Text("Final Score:")
                            .font(.largeTitle)
                            .foregroundColor(Color.blue)
                            .animation(.easeInOut)
                            .padding(.bottom, 10)
                        
                        Text("\(self.score)")
                            .font(.system(size: 60))
                            .fontWeight(.bold)
                            .foregroundColor(Color.blue)
                            .animation(.easeInOut)
                            .padding(.bottom, 30)
                        
                        Text("Great!")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(self.brown)
                            .animation(.easeInOut)
                            .padding(.bottom, 10)
                        
                        Text("Move on to the next chapter to learn more!")
                            .font(.title)
                            .foregroundColor(self.brown)
                            .animation(.easeInOut)
                            .padding(.vertical, 40)
                    }
                    
                }
            }
        }
    }
}

PlaygroundPage.current.setLiveView(LevelTwoView())


