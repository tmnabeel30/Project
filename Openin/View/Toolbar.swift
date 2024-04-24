import SwiftUI

struct Toolbar: View {
    var body: some View {
        VStack {
            Spacer()
            
            VStack{
                HStack {
                    
                    
                    Button(action: {
                        // Handle "Links" action
                    }) {
                        Image( "links")
                            .font(.system(size: 20))
                    }
                    .frame(width: 72, height: 61)
                   
                    
                    Button(action: {
                        // Handle "Courses" action
                    }) {
                        Image("course")
                            .font(.system(size: 20))
                    }
                    .frame(width: 72, height: 61)
                  
                    
                    VStack{
//                        Image("Union")
                        Button(action: {
                            // Handle "Add" action
                        }) {
                            Image("TabBar-item")
                                .font(.system(size: 30))
                                .foregroundColor(.blue)
                        }
                    }.frame(width: 72, height: 61)
                        .offset(x:0,y:-12)
                    
                    
                    Button(action: {
                        // Handle "Campaigns" action
                    }) {
                        Image("campaingn")
                            .font(.system(size: 20))
                    }
                    .frame(width: 72, height: 72)
                    
                    Button(action: {
                        // Handle "Profile" action
                    }) {
                        Image("profile")
                            .font(.system(size: 20))
                    }
                    .frame(width: 72, height: 61)
                    
                    
                }
                .padding(.horizontal)
                .background(Color.white)
 
            }
            .background(Color.blue)

            
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
