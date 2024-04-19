import SwiftUI
import Charts
import CoreData

struct DashboardView: View {
    @Environment(\.managedObjectContext) private var viewContext

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 2) {
                    // Greeting
                    
                        Text("Good Morning")
                            .font(.system(size: 24)) // smaller font size
                            .foregroundColor(.gray) // lighter grey color
                        
                        Text("Avay Manva👋")
                            .font(.system(size: 32, weight: .semibold)) // bigger, bolder font
                            .foregroundColor(.black) // black color
                        
                    .alignmentGuide(.leading) { _ in
                                0 // Align to the leading edge of the containing view
                            }
                    .padding(.horizontal, 20) // add padding for a better layout
                    

                    // Chart
//                    ChartView(chartData: chartData)
//                        .frame(height: 200)
//                        .padding()

                    // Metrics
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 10) {
                            MetricTile(value: "123", label: "Today's clicks", imageName: "Clicks")
                            MetricTile(value: "Delhi", label: "Top Location", imageName: "City")
                            MetricTile(value: "Instagram", label: "Top source", imageName: "Globe")
                        }
                        .padding()
                    }
                    Spacer()
                    
                    //Button
                    Button(action: {
                        // Action to perform when the button is tapped
                    }) {
                        Image("button_image")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: 300) // Adjust the maximum width as needed
                    }
                    .padding(.horizontal, 20) // Add horizontal padding of 20
                    Spacer()
//                    .frame(height: 200)
                    // Links
                    VStack(alignment: .leading) {
                        Text("Top Links")
                            .font(.headline)
                        ForEach(linkData, id: \.self) { link in
                            LinkRow(link: link)
                        }
                        NavigationLink(destination: AnalyticsView()) {
                            Text("View all Links")
                        }
                    }
                    .padding()
                }
            }
            .background(Color(red: 0.95, green: 0.95, blue: 0.95))
            .navigationBarTitle("Dashboard", displayMode: .inline)
        }
    }

}




//struct ChartData: Identifiable {
//    let id = UUID()
//    let date: Date
//    let clicks: Double
//}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
            .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
