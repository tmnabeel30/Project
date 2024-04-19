import SwiftUI
import Charts
import CoreData
//struct ChartView: UIViewRepresentable {
//    var chartData: [ChartData]
//
//    func makeUIView(context: Context) -> LineChartView {
//        let chartView = LineChartView()
//        return chartView
//    }
//
//    func updateUIView(_ uiView: LineChartView, context: Context) {
//        let dataSet = createDataSet()
//        let data = LineChartData(dataSet: dataSet)
//        uiView.data = data
//    }
//
//    private func createDataSet() -> LineChartDataSet {
//        var entries: [ChartDataEntry] = []
//
//        for data in chartData {
//            entries.append(ChartDataEntry(x: data.date.timeIntervalSince1970, y: data.clicks))
//        }
//
//        let dataSet = LineChartDataSet(entries: entries, label: "Clicks")
//        dataSet.colors = [NSUIColor.blue] // Customize the line color
//        dataSet.circleColors = [NSUIColor.blue] // Customize the circle color
//        dataSet.circleHoleColor = NSUIColor.blue // Customize the circle hole color
//
//        return dataSet
//    }
//}
struct ChartData: Identifiable {
    let id = UUID()
    let date: Date
    let clicks: Double
}

//// Sample data
//let sampleChartData: [ChartData] = [
//    ChartData(date: Date().addingTimeInterval(-604800), clicks: 20),
//    // Add more data points as needed
//]
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ChartView(chartData: sampleChartData)
//    }
//}
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
                        MetricTile(value: 123, label: "Today's clicks")
                        MetricTile(value: "Ahmedab...", label: "Top Location")
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

    // Sample data
    let chartData: [ChartData] = [
        ChartData(date: Date().addingTimeInterval(-604800), clicks: 20),
        ChartData(date: Date().addingTimeInterval(-518400), clicks: 50),
        ChartData(date: Date().addingTimeInterval(-432000), clicks: 70),
        ChartData(date: Date().addingTimeInterval(-345600), clicks: 40),
        ChartData(date: Date().addingTimeInterval(-259200), clicks: 80),
        ChartData(date: Date().addingTimeInterval(-172800), clicks: 60),
        ChartData(date: Date().addingTimeInterval(-86400), clicks: 75)
    ]

    let linkData = [
        "https://samplelinkoia.bio/ashd...",
        "https://samplelinkoia.bio/ashd...",
        "https://samplelinkoia.bio/ashd...",
        "https://samplelinkoia.bio/ashd..."
    ]
}

struct MetricTile: View {
    let value: Any
    let label: String

    var body: some View {
        VStack {
            Text("\(value)")
                .font(.title)
            Text(label)
                .font(.caption)
        }
        .padding()
        .background(Color.gray.opacity(0.2))
        .cornerRadius(10)
    }
}

struct LinkRow: View {
    let link: String

    var body: some View {
        HStack {
            Image(systemName: "link")
            Text("Sample link name...")
            Spacer()
            Text("2323\nClicks")
                .multilineTextAlignment(.trailing)
        }
        .padding()
    }
}

//struct ChartData: Identifiable {
//    let id = UUID()
//    let date: Date
//    let clicks: Double
//}

struct AnalyticsView: View {
    var body: some View {
        Text("Analytics View")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
            .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
