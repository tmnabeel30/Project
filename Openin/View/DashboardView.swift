import SwiftUI
import Charts
import CoreData



struct DashboardView: View {
    @Environment(\.managedObjectContext) private var viewContext
    let data: [Double] = [25, 30, 45, 60, 70, 55, 65, 80] // Replace with your actual data
    let months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug"]
    @State var jsonData: Root?
    var x = 0



    var body: some View {
        VStack{
            ScrollView {
                VStack {
                    
                    ZStack{
                        // Blue background
                        Color(red: 0.06274509803921569, green: 0.4235294117647059, blue: 0.9882352941176471).edgesIgnoringSafeArea(.all)

                        VStack{
                            TopBar()//Makes Dashboard and setting Button
                            .frame(height: 30)
                            .padding(.top, 20)
                            
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
                                            MetricTile(value: "\(jsonData?.today_clicks ?? 0)", label: "Today's clicks", imageName: "Clicks")
                                            MetricTile(value: (jsonData?.top_location) ?? "N/A" , label: "Top Location", imageName: "City")
                                            MetricTile(value: (jsonData?.top_source) ?? "N/A", label: "Top source", imageName: "Globe")
                                            MetricTile(value: "11:00pm - 12:00am", label: "Best Time", imageName: "time")                                        }
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
                                        
                                        ForEach(linkDataArray) { linkData in
                                            LinkRow(samplelinkName: linkData.smartLink, productLink: linkData.productLink, TotalClicks: linkData.totalClicks)
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
                                        let url = "whatsapp://send?phone=+916360481897&abid=12354&text=Hello "
                                        let whatUpUrl = NSURL(string: url)
                                        if UIApplication.shared.canOpenURL(whatUpUrl! as URL){
                                            UIApplication.shared.openURL(whatUpUrl! as URL)
                                        } else {
                                            //redirect to safari because the user doesn't have Whatsapp installed
                                            UIApplication.shared.openURL(NSURL(string: "http://whatsapp.com/")! as URL)
                                        }
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
                                .padding(.bottom,25)
                                
                            }
                            .background(Color(red: 0.95, green: 0.95, blue: 0.95))
                            .clipShape(.rect(cornerRadius: 16))
                        }
                        
                    }
                }
                
                
                
                
                
                
                
            }
            .onAppear(perform: fetchData)
            .background(Color(red: 0.06274509803921569, green: 0.4235294117647059, blue: 0.9882352941176471))
            
            
           
            Toolbar()
                .frame(height: 50)
        }
        
    }
    
    
    //Fetching Data From API
    func fetchData() {
        // Define the URL of the API endpoint
        let url = URL(string: "https://api.inopenapp.com/api/v1/dashboardNew")!

        // Create a URLRequest
        var request = URLRequest(url: url)

        // Set the HTTP method to GET
        request.httpMethod = "GET"

        // Add the Authorization header with the bearer token
        let token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjU5MjcsImlhdCI6MTY3NDU1MDQ1MH0.dCkW0ox8tbjJA2GgUx2UEwNlbTZ7Rr38PVFJevYcXFI"
        request.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")

        // Create a URLSession
        let session = URLSession.shared

        // Create a data task to make the request
        let task = session.dataTask(with: request) { data, response, error in
            // Check for errors
            if let error = error {
                print("Error: \(error)")
                return
            }
         
            // Check for a successful response
            guard let httpResponse = response as? HTTPURLResponse,
                  (200...299).contains(httpResponse.statusCode) else {
                print("Error: Invalid response")
                return
            }
            
            // Check if data is available
            guard let responseData = data else {
                print("Error: No data received")
                return
            }
            
            // Parse the JSON data
           
            do {
                let root = try JSONDecoder().decode(Root.self, from: responseData)
                // Update the UI on the main thread
                DispatchQueue.main.async {
                    jsonData = root
                    print(jsonData)
//                    var x = 0;
                        //To append SmartLinks
//                    if let topLinks = jsonData?.top_links, !topLinks.isEmpty {
//                        if linkDataArray.isEmpty {
//                            // If linkDataArray is empty, create a new instance from the first element of top_links
//                            if let firstElement = topLinks.first {
//                                linkDataArray.append(LinkData(smartLink: firstElement.smart_link,
//                                                              productLink: firstElement.web_link,
//                                                              thumbnailLink: firstElement.original_image,
//                                                              totalClicks: firstElement.total_clicks,
//                                                              createdAt: firstElement.created_at))
//                            }
//                        } else {
//                            // If linkDataArray is not empty, override the first element with the data from the API
//                            if let firstElement = topLinks.first {
//                                linkDataArray[0] = LinkData(smartLink: firstElement.smart_link,
//                                                            productLink: firstElement.web_link,
//                                                            thumbnailLink: firstElement.original_image,
//                                                            totalClicks: firstElement.total_clicks,
//                                                            createdAt: firstElement.created_at)
//                            }
//                        }
//
//                        // Append the remaining elements from top_links
//                        let remainingLinks = topLinks.dropFirst()
//                        if !remainingLinks.isEmpty {
//                            for element in remainingLinks {
//                                linkDataArray.append(LinkData(smartLink: element.smart_link,
//                                                              productLink: element.web_link,
//                                                              thumbnailLink: element.original_image,
//                                                              totalClicks: element.total_clicks,
//                                                              createdAt: element.created_at))
//                            }
//                        }
//                    }
                  
                    
                }
            } catch {
                print("Error parsing JSON: \(error)")
            }

        }

        // Start the data task
        task.resume()
    }

    
    
    
    
    
    


    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
            .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
