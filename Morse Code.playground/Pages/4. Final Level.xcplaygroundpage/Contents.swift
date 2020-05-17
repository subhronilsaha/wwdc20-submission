/*:
# Welcome to Level 4

 &nbsp;

 ## Finally, the moment of truth! Here we look at alphabets with 4 dits/dahs.
  
 &nbsp;

 ## These are:
 
 ### B:  _ . . . (dah dit dit dit)
 ### C:  _ . _ . (dah dit dah dit)
 ### F:  . . _ . (dit dit dah dit)
 ### H:  . . . . (dit dit dit dit)
 ### J:  . _ _ _ (dit dah dah dah)
 ### L:  . _ . . (dit dah dit dit)
 ### P:  . _ _ . (dit dah dah dit)
 ### Q:  _ _ . _ (dah dah dit dah)
 ### V:  . . . _ (dit dit dit dah)
 ### X:  _ . . _ (dah dit dit dah)
 ### Y:  _ . _ _ (dah dit dah dah)
 ### Z:  _ _ . . (dah dah dit dit)
 
 &nbsp;
 
 ## Run the code to play the game.

 &nbsp;

 ## That's it! Hopefully, you have learnt Morse Code.
 
 &nbsp;

*/

import SwiftUI
import PlaygroundSupport

struct Morse: Identifiable {
    var id = UUID()
    var letter: String
    var code: [Int]
}

struct LevelFourView: View {
    // Color Palette
    let lightBlack = Color(red: 19/255, green: 19/255, blue: 19/255)
    let peach = Color(red: 255/255, green: 162/255, blue: 153/255)
    let lightYellow = Color(red: 254/255, green: 226/255, blue: 179/255)
    let brown = Color(red: 86/255, green: 35/255, blue: 73/255)
    let darkGreen = Color(red: 88/255, green: 180/255, blue: 174/255)
    
    // Letter Array
    let letters = [Morse(letter: "B", code: [1, 0, 0, 0]), Morse(letter: "C", code: [1, 0, 1, 0]), Morse(letter: "F", code: [0, 0, 1, 0]), Morse(letter: "H", code: [0, 0, 0, 0]), Morse(letter: "J", code: [0, 1, 1, 1]), Morse(letter: "L", code: [0, 1, 0, 0]), Morse(letter: "P", code: [0, 1, 1, 0]), Morse(letter: "Q", code: [1, 1, 0, 1]), Morse(letter: "V", code: [0, 0, 0, 1]), Morse(letter: "X", code: [1, 0, 0, 1]), Morse(letter: "Y", code: [1, 0, 1, 1]), Morse(letter: "Z", code: [1, 1, 0, 0])]
    
    // STATES
    @State var qID: Int = 0
    @State var showRules: Bool = true
    @State var score: Int = 0
    @State var status = Color.blue
    
    var body: some View {
        
        ZStack {
            
            Image(uiImage: #imageLiteral(resourceName: "Asset 7.png")).resizable().scaledToFill()
            
            if showRules {
                // Display Rules here
                VStack {
                    Image(uiImage: #imageLiteral(resourceName: "WWDC-text-4-01.png")).resizable().scaledToFill()

                    // START Button
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
                        
                    }.padding(.vertical, 20)
                    
                }.padding(.all, 60)
                    .animation(.easeInOut)
                
            } else {
                // Game Start
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
                                Circle()
                                    .fill(Color.blue)
                                    .frame(width: 30, height: 30)
                            }
                        } else if self.qID == 1  {
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
                                Circle()
                                    .fill(Color.blue)
                                    .frame(width: 30, height: 30)
                            }
                        } else if self.qID == 2  {
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
                                Circle()
                                    .fill(Color.blue)
                                    .frame(width: 30, height: 30)
                            }
                        } else if self.qID == 3  {
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
                                Circle()
                                    .fill(Color.blue)
                                    .frame(width: 30, height: 30)
                                
                            } 
                        } else if self.qID == 4 {
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
                                Rectangle()
                                    .fill(Color.blue)
                                    .frame(width: 100, height: 20)
                            }
                        } else if self.qID == 5  {
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
                                Circle()
                                    .fill(Color.blue)
                                    .frame(width: 30, height: 30)
                            }
                        } else if self.qID == 6  {
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
                                Circle()
                                    .fill(Color.blue)
                                    .frame(width: 30, height: 30)
                            }
                        } else if self.qID == 7  {
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
                                Rectangle()
                                    .fill(Color.blue)
                                    .frame(width: 100, height: 20)
                            }
                        } else if self.qID == 8 {
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
                                Rectangle()
                                    .fill(Color.blue)
                                    .frame(width: 100, height: 20)
                            }
                        } else if self.qID == 9  {
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
                                Rectangle()
                                    .fill(Color.blue)
                                    .frame(width: 100, height: 20)
                            }
                        } else if self.qID == 10  {
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
                                Rectangle()
                                    .fill(Color.blue)
                                    .frame(width: 100, height: 20)
                            }
                        } else if self.qID == 11  {
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
                                Circle()
                                    .fill(Color.blue)
                                    .frame(width: 30, height: 30)
                            }
                        }
                        
                        VStack(spacing: 30) {
                            HStack(spacing: 30){
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
                                    Text("B ")
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
                                    Text("C ")
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
                                    Text("F ")
                                    .padding()
                                    .padding(.horizontal, 20)
                                    .foregroundColor(Color.white)
                                    .background(Color.blue)
                                    .font(.title)
                                    .cornerRadius(10)
                                }
                                
                            }.animation(.easeInOut).padding(.top, 30)
                            
                            HStack(spacing: 30) {
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
                                    Text("H ")
                                    .padding()
                                    .padding(.horizontal, 20)
                                    .foregroundColor(Color.white)
                                    .background(Color.blue)
                                    .font(.title)
                                    .cornerRadius(10)
                                }
                                
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
                                    Text("J ")
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
                                    Text("L ")
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
                                    Text("P ")
                                    .padding()
                                    .padding(.horizontal, 20)
                                    .foregroundColor(Color.white)
                                    .background(Color.blue)
                                    .font(.title)
                                    .cornerRadius(10)
                                }
                            }.animation(.easeInOut).padding(.top, 30)
                            
                            HStack(spacing: 30) {
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
                                    Text("Q ")
                                    .padding()
                                    .padding(.horizontal, 20)
                                    .foregroundColor(Color.white)
                                    .background(Color.blue)
                                    .font(.title)
                                    .cornerRadius(10)
                                }
                                
                                // Button 9
                                Button(action: {
                                    withAnimation{
                                        if self.qID == 8 {
                                            self.score += 1
                                            self.status = self.darkGreen
                                        } else {
                                            self.status = Color.red
                                            
                                        }
                                        self.qID += 1
                                    }
                                }) {
                                    Text("V ")
                                    .padding()
                                    .padding(.horizontal, 20)
                                    .foregroundColor(Color.white)
                                    .background(Color.blue)
                                    .font(.title)
                                    .cornerRadius(10)
                                }
                                
                                // Button 10
                                Button(action: {
                                    withAnimation{
                                        if self.qID == 9 {
                                            self.score += 1
                                            self.status = self.darkGreen
                                        } else {
                                            self.status = Color.red
                                            
                                        }
                                        self.qID += 1
                                    }
                                }) {
                                    Text("X ")
                                    .padding()
                                    .padding(.horizontal, 20)
                                    .foregroundColor(Color.white)
                                    .background(Color.blue)
                                    .font(.title)
                                    .cornerRadius(10)
                                }
                                
                                // Button 11
                                Button(action: {
                                    withAnimation{
                                        if self.qID == 10 {
                                            self.score += 1
                                            self.status = self.darkGreen
                                        } else {
                                            self.status = Color.red
                                            
                                        }
                                        self.qID += 1
                                    }
                                }) {
                                    Text("Y ")
                                    .padding()
                                    .padding(.horizontal, 20)
                                    .foregroundColor(Color.white)
                                    .background(Color.blue)
                                    .font(.title)
                                    .cornerRadius(10)
                                }
                                
                                // Button 12
                                Button(action: {
                                    withAnimation{
                                        if self.qID == 11 {
                                            self.score += 1
                                            self.status = self.darkGreen
                                        } else {
                                            self.status = Color.red
                                        }
                                        self.qID += 1
                                    }
                                }) {
                                    Text("Z ")
                                    .padding()
                                    .padding(.horizontal, 20)
                                    .foregroundColor(Color.white)
                                    .background(Color.blue)
                                    .font(.title)
                                    .cornerRadius(10)
                                }
                            }.animation(.easeInOut).padding(.top, 30)
                        }
                        
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
                        
                        Text("Amazing! You know Morse Code now.")
                            .font(.title)
                            .foregroundColor(self.brown)
                            .animation(.easeInOut)
                            .padding(.top, 30)
                        
                        Text("Thank You for Playing.")
                        .font(.title)
                            .foregroundColor(Color.white)
                        .animation(.easeInOut)
                        .padding(.vertical, 20)
                    }
                    
                }
            }
        }
    }
}

PlaygroundPage.current.setLiveView(LevelFourView())




