/*:
 # Learn the Morse Code!
 
 &nbsp;
 
 #### Hi! I am Subhronil Saha, and this is my submission for WWDC20 Swift Student Challenge.
 
 #### As 2020 marks the 100th anniversary of the launch of the first radio station in the US, the KDKA in Pittsburgh, I thought of teaching people how to interpret Morse Code, used primarily in the early days of radio communication.
 
 #### This playground will teach you Morse Code!
 
 &nbsp;
 
 ## How will this playground help you learn?
 
 &nbsp;
 
 * #### There are four levels in the learning process.
 * #### Each level will provide you a quick reference to the code initially.
 * #### A quiz will be followed by each level which will let assess yourself.
 
 &nbsp;
 
 ## ## That's all! Hope you have a great time learning!
 
 &nbsp;
 
 */

//#-hidden-code

import SwiftUI
import PlaygroundSupport


struct ContentView: View {
    // Color Palette
    let lightBlack = Color(red: 19/255, green: 19/255, blue: 19/255)
    let peach = Color(red: 255/255, green: 162/255, blue: 153/255)
    let lightYellow = Color(red: 254/255, green: 226/255, blue: 179/255)
    let brown = Color(red: 86/255, green: 35/255, blue: 73/255)
    let darkGreen = Color(red: 88/255, green: 180/255, blue: 174/255)
        
    var body: some View {
        ZStack {
            Image(uiImage: #imageLiteral(resourceName: "Asset 0-01.png"))
                .resizable()
                .scaledToFill()
            
            VStack {
                Spacer()
                
                Image(uiImage: #imageLiteral(resourceName: "Color-logo.png"))
                    .resizable()
                    .frame(width: 100, height: 80)
                    .padding(.bottom, 20)
                
                Text("Morse Code")
                    .font(.system(size: 50))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding(.bottom, 40)
                
                VStack(alignment: .leading) {
                    
                    Text("2020 marks the 100th anniversary of the launch of the first commercial radio station in the US, KDKA, Pittsburgh!")
                        .foregroundColor(Color.white)
                        .font(.title)
                        .padding(.bottom, 20)
                    
                    Text("Much before that and even until the mid 90's, Morse Code was used extensively for data communication and transmission via radio")
                        .foregroundColor(Color.white)
                        .font(.title)
                        .padding(.bottom, 20)
                    
                    Text("In this playground, we will attempt to learn Morse Code, step by step")
                        .foregroundColor(Color.white)
                        .font(.title)
                        .padding(.bottom, 60)
                    
                }
                
                Text("Go to the next page to begin")
                    .foregroundColor(self.darkGreen)
                    .font(.title)
                    .padding(.bottom, 20)
                
                Spacer()
                
            }.padding(.all, 60)
        }
    }
}

PlaygroundPage.current.setLiveView(ContentView())

//#-end-hidden-code
