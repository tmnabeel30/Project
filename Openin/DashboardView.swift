import SwiftUI
import Charts
import CoreData

struct DashboardView: View {
    @Environment(\.managedObjectContext) private var viewContext

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    // Greeting
                    Text("Good morning\nAjay Manva 👋")
                        .font(.title)
                        .padding()

                    // Chart
//                    ChartView(chartData: chartData)
//                        .frame(height: 200)
//                        .padding()

                    // Metrics
                    HStack {
                        MetricTile(value: 121, label: "Today's clicks")
                        MetricTile(value: "Delhi", label: "Top Location")
                        MetricTile(value: "Instagra", label: "Top source")
                    }
                    .padding()

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
