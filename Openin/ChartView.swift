//
//  DashboardView.swift
//  Openin
//
//  Created by Nabeel on 19/04/24.
//

import SwiftUI
import Charts
//
//struct ChartView: UIViewRepresentable {
//    var chartData: [ChartData]
//
//    // Implementation of ChartView
//}

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
