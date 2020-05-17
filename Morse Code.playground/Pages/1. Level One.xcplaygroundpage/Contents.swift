/*:
# Welcome to Level 1

 &nbsp;

 ## Hi! So in this level we will be learning about those alphabets which are encoded in just one dit or dah. A dit is a dot and a dah is a dash.
  
 &nbsp;

 ## These are:
 
 ### E: . (dit)
 ### T: _ (dah)
 
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

struct LevelOneView: View {
    // Color Palette
    let lightBlack = Color(red: 19/255, green: 19/255, blue: 19/255)
    let peach = Color(red: 255/255, green: 162/255, blue: 153/255)
    let lightYellow = Color(red: 254/255, green: 226/255, blue: 179/255)
    let brown = Color(red: 86/255, green: 35/255, blue: 73/255)
    let darkGreen = Color(red: 88/255, green: 180/255, blue: 174/255)
    
    // Letter Array
    let letters = [Morse(letter: "E", code: [0]), Morse(letter: "T", code: [1])]
    
    // STATES
    @State var qID: Int = 0
    @State var showRules: Bool = true
    @State var score: Int = 0
    @State var status = Color.blue
    
    var body: some View {
        
        ZStack {
            Image(uiImage: #imageLiteral(resourceName: "Asset 2.png")).resizable().scaledToFill()
            
            if showRules {
                VStack {
                    
                    Image(uiImage: #imageLiteral(resourceName: "WWDC-text-1-01.png")).resizable().scaledToFit()
                    
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
                        
                        if qID == 0 {
                            Circle()
                                .fill(Color.blue)
                                .frame(width: 30, height: 30)
                        } else {
                            Rectangle()
                                .fill(Color.blue)
                                .frame(width: 100, height: 20)
                        }
                        
                        HStack(spacing: 60){
                            
                            // Button 1
                            Button(action: {
                                withAnimation{
                                    if self.qID == 0 {
                                        self.score += 1
                                        self.status = self.darkGreen
                                    }else {
                                        self.status = Color.red
                                    }
                                    self.qID += 1
                                }
                            }) {
                                Text(" E ")
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
                                    }else {
                                        self.status = Color.red
                                    }
                                    self.qID += 1
                                }
                            }) {
                                Text(" T ")
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
                            .padding(.vertical, 50)
                        
                    }
                    
                }
            }
        }
    }
}

PlaygroundPage.current.setLiveView(LevelOneView())

