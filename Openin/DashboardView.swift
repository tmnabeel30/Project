import SwiftUI
import Charts
import CoreData

var jsonData: JSONData?

struct DashboardView: View {
    @Environment(\.managedObjectContext) private var viewContext
    let data: [Double] = [25, 30, 45, 60, 70, 55, 65, 80] // Replace with your actual data
    let months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug"]
    
    init() {
 fetchData()
       }


    var body: some View {
        
        ScrollView {
        VStack {
            
            ZStack{
                // Blue background
                Color(red: 0.06274509803921569, green: 0.4235294117647059, blue: 0.9882352941176471).edgesIgnoringSafeArea(.all)
                
                

                
                
                // Text at the top (white)
            VStack{
                HStack{
                    Text("Dashboard")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.bottom, 10)
                        .padding()
//                    //                                       .padding(.bottom, 5)
//                    //                                       .padding(.top, 5)
//                        .padding(.all, 20)
                    Spacer()
                    Image("SettingButton")
                    
                        .padding(.bottom, 10)
                        .padding()
                            
                }
                .frame(height: 30)
                
                
                VStack{

                    VStack(alignment: .leading, spacing: 2) {
                        // Greeting
                        VStack(alignment: .leading){
                            Text("Good Morning")
                                .font(.system(size: 24)) // smaller font size
                                .foregroundColor(.gray) // lighter grey color
                                .padding(.top, 15)
                            Text("Avay Manva👋")
                                .font(.system(size: 32, weight: .semibold)) // bigger, bolder font
                                .foregroundColor(.black) // black color
                            // add padding for a better layout
                            ChartView(data: data)
                                .frame(height: 200)
                                .padding()
                                .background(.white)
                                .cornerRadius(10)
                        }
                        
                        .padding(.horizontal, 20)
                        .padding(.vertical, 20)
                        
                        // Metrics
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 10) {
                                MetricTile(value: "123", label: "Today's clicks", imageName: "Clicks")
                                MetricTile(value: "Delhi", label: "Top Location", imageName: "City")
                                MetricTile(value: "Instagram", label: "Top source", imageName: "Globe")
                            }
                            .padding()
                            
                        }
                        
                    }
                    
                    
                    
                    
                    VStack{
                        Button(action: {
                            // Action to perform when the button is tapped
                        }) {
                            Image("Button")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(maxWidth: 350) // Adjust the maximum width as needed
                        }
                        
                        Spacer()
                        
                        
                        
                        
                        VStack(alignment: .leading, spacing: 20) {
                            SubBar()
                            
                            ForEach(linkData, id: \.self) { link in
                                LinkRow(samplelinkName: "Nabeel", productLink: link)
                                    .frame(width: 328)
                                
                            }
                            
                        }
                        .padding()
                        
                        Button(action: {
                            // Action to perform when the button is tapped
                        }) {
                            Image("ViewLinkButton")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(maxWidth: 328) // Adjust the maximum width as needed
                        }
                        
                        
                    }
                    VStack{
                        Button(action: {
                            // Action to perform when the button is tapped
                        }) {
                            Image("Whatsapp")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(maxWidth: 328) // Adjust the maximum width as needed
                        }
                        
                        Button(action: {
                            // Action to perform when the button is tapped
                        }) {
                            Image("Questions")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(maxWidth: 328) // Adjust the maximum width as needed
                        }
                    }
                    
                }
                .background(Color(red: 0.95, green: 0.95, blue: 0.95))
                    .clipShape(.rect(cornerRadius: 16))
            }
                
            }
            }
            
            

            
            

            
            
        }
        .background(Color(red: 0.06274509803921569, green: 0.4235294117647059, blue: 0.9882352941176471))
     
        
        
    }
    
    
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
            .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
