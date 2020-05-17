/*:
# Welcome to Level 3

 &nbsp;

 ## Hey, We're almost done! Here we look at alphabets with 3 dits/dahs.
  
 &nbsp;

 ## These are:
 
 ### D:  _ . . (dah dit dit)
 ### G:  _ _ . (dah dah dit)
 ### K:  _ . _ (dah dit dah)
 ### O:  _ _ _ (dah dah dah)
 ### R:  . _ . (dit dah dit)
 ### S:  . . . (dit dit dit)
 ### U:  . . _ (dit dit dah)
 ### W:  . _ _ (dit dah dah)
 
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

struct LevelThreeView: View {
    // Color Palette
    let lightBlack = Color(red: 19/255, green: 19/255, blue: 19/255)
    let peach = Color(red: 255/255, green: 162/255, blue: 153/255)
    let lightYellow = Color(red: 254/255, green: 226/255, blue: 179/255)
    let brown = Color(red: 86/255, green: 35/255, blue: 73/255)
    let darkGreen = Color(red: 4/255, green: 153/255, blue: 175/255)
    
    // Letter Array
    let letters = [Morse(letter: "D", code: [1, 0, 0]), Morse(letter: "G", code: [1, 1, 0]), Morse(letter: "K", code: [1, 0, 1]), Morse(letter: "O", code: [1, 1, 1]), Morse(letter: "R", code: [0, 1, 0]), Morse(letter: "S", code: [0, 0, 0]), Morse(letter: "U", code: [0, 0, 1]), Morse(letter: "W", code: [0, 1, 1])]
    
    // STATES
    @State var qID: Int = 0
    @State var showRules: Bool = true
    @State var score: Int = 0
    @State var status = Color.blue
    
    var body: some View {
        ZStack {
            Image(uiImage: #imageLiteral(resourceName: "Asset 5.png")).resizable().scaledToFill()
            
            if showRules {
                // Display Rules here
                VStack {
                    Image(uiImage: #imageLiteral(resourceName: "WWDC-text-3-01.png")).resizable().scaledToFill()
                    
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
                            .foregroundColor(self.brown)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding(.bottom, 30)
                        
                        // Display Morse Symbol
                        if self.qID == 0 {
                            HStack(spacing: 30) {
                                Rectangle()
                                    .fill(Color.blue)
                                    .frame(width: 100, height: 20)
                                Circle()
                                    .fill(Color.blue)
                                    .frame(width: 30, height: 30)
                                Circle()
                                    .fill(Color.blue)
                                    .frame(width: 30, height: 30)
                            }
                        } else if self.qID == 1  {
                            HStack(spacing: 30) {
                                Rectangle()
                                    .fill(Color.blue)
                                    .frame(width: 100, height: 20)
                                Rectangle()
                                    .fill(Color.blue)
                                    .frame(width: 100, height: 20)
                                Circle()
                                    .fill(Color.blue)
                                    .frame(width: 30, height: 30)
                            }
                        } else if self.qID == 2  {
                            HStack(spacing: 30) {
                                Rectangle()
                                    .fill(Color.blue)
                                    .frame(width: 100, height: 20)
                                Circle()
                                    .fill(Color.blue)
                                    .frame(width: 30, height: 30)
                                Rectangle()
                                    .fill(Color.blue)
                                    .frame(width: 100, height: 20)
                            }
                        } else if self.qID == 3  {
                            HStack(spacing: 30) {
                                Rectangle()
                                    .fill(Color.blue)
                                    .frame(width: 100, height: 20)
                                Rectangle()
                                    .fill(Color.blue)
                                    .frame(width: 100, height: 20)
                                Rectangle()
                                    .fill(Color.blue)
                                    .frame(width: 100, height: 20)
                                
                            } 
                        } else if self.qID == 4 {
                            HStack(spacing: 30) {
                                Circle()
                                    .fill(Color.blue)
                                    .frame(width: 30, height: 30)
                                Rectangle()
                                    .fill(Color.blue)
                                    .frame(width: 100, height: 20)
                                Circle()
                                    .fill(Color.blue)
                                    .frame(width: 30, height: 30)
                            }
                        } else if self.qID == 5  {
                            HStack(spacing: 30) {
                                Circle()
                                    .fill(Color.blue)
                                    .frame(width: 30, height: 30)
                                Circle()
                                    .fill(Color.blue)
                                    .frame(width: 30, height: 30)
                                Circle()
                                    .fill(Color.blue)
                                    .frame(width: 30, height: 30)
                            }
                        } else if self.qID == 6  {
                            HStack(spacing: 30) {
                                Circle()
                                    .fill(Color.blue)
                                    .frame(width: 30, height: 30)
                                Circle()
                                    .fill(Color.blue)
                                    .frame(width: 30, height: 30)
                                Rectangle()
                                    .fill(Color.blue)
                                    .frame(width: 100, height: 20)
                            }
                        } else if self.qID == 7  {
                            HStack(spacing: 30) {
                                Circle()
                                    .fill(Color.blue)
                                    .frame(width: 30, height: 30)
                                Rectangle()
                                    .fill(Color.blue)
                                    .frame(width: 100, height: 20)
                                Rectangle()
                                    .fill(Color.blue)
                                    .frame(width: 100, height: 20)
                            }
                        }
                        
                        VStack(spacing: 30) {
                            
                            HStack(spacing: 30) {
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
                                    Text("D ")
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
                                    Text("G ")
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
                                    Text("K ")
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
                                    Text("O ")
                                        .padding()
                                        .padding(.horizontal, 20)
                                        .foregroundColor(Color.white)
                                        .background(Color.blue)
                                        .font(.title)
                                        .cornerRadius(10)
                                }
                            }
                            
                            HStack(spacing: 30) {
                                // Button 5
                                Button(action: {
                                    withAnimation{
                                        if self.qID == 4 {
                                            self.score += 1
                                            self.status = self.darkGreen
                                        } else {
                                            self.status = Color.red
                                        }
                                        self.qID += 1
                                    }
                                }) {
                                    Text("R ")
                                        .padding()
                                        .padding(.horizontal, 20)
                                        .foregroundColor(Color.white)
                                        .background(Color.blue)
                                        .font(.title)
                                        .cornerRadius(10)
                                }
                                
                                // Button 6
                                Button(action: {
                                    withAnimation{
                                        if self.qID == 5 {
                                            self.score += 1
                                            self.status = self.darkGreen
                                        } else {
                                            self.status = Color.red
                                        }
                                        self.qID += 1
                                    }
                                }) {
                                    Text("S ")
                                        .padding()
                                        .padding(.horizontal, 20)
                                        .foregroundColor(Color.white)
                                        .background(Color.blue)
                                        .font(.title)
                                        .cornerRadius(10)
                                }
                                
                                // Button 7
                                Button(action: {
                                    withAnimation{
                                        if self.qID == 6 {
                                            self.score += 1
                                            self.status = self.darkGreen
                                        } else {
                                            self.status = Color.red
                                        }
                                        self.qID += 1
                                    }
                                }) {
                                    Text("U ")
                                        .padding()
                                        .padding(.horizontal, 20)
                                        .foregroundColor(Color.white)
                                        .background(Color.blue)
                                        .font(.title)
                                        .cornerRadius(10)
                                }
                                
                                // Button 8
                                Button(action: {
                                    withAnimation{
                                        if self.qID == 7 {
                                            self.score += 1
                                            self.status = self.darkGreen
                                        } else {
                                            self.status = Color.red
                                        }
                                        self.qID += 1
                                    }
                                }) {
                                    Text("W ")
                                        .padding()
                                        .padding(.horizontal, 20)
                                        .foregroundColor(Color.white)
                                        .background(Color.blue)
                                        .font(.title)
                                        .cornerRadius(10)
                                }
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
                            .foregroundColor(Color.white)
                            .animation(.easeInOut)
                            .padding(.bottom, 50)
                        
                        Text("Final Score:")
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                            .animation(.easeInOut)
                            .padding(.bottom, 10)
                        
                        Text("\(self.score)")
                            .font(.system(size: 60))
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
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

PlaygroundPage.current.setLiveView(LevelThreeView())



