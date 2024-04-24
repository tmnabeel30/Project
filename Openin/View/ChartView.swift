//
//  DashboardView.swift
//  Openin
//
//  Created by Nabeel on 19/04/24.
//

import SwiftUI
import Charts

struct ChartView: View {
    var data: [Double]
    var maxValue: Double {
        return data.max() ?? 0
    }

    var body: some View {
//            HStack{
//                Text("OverView")
//                    .font(.system(size: 24, weight: .bold))
//                Text("22nd Aug - 23Aug")
//                    .font(.system(size: 24, weight: .bold))
//
//            }
            ZStack{

                GeometryReader { geometry in
                    Path { path in
                        for index in data.indices {
                            let x = geometry.size.width * CGFloat(Double(index) / Double(data.count - 1))
                            let y = geometry.size.height - CGFloat(data[index]) / CGFloat(maxValue) * geometry.size.height
                            
    print(x,y)
                            if index == 0 {
                                path.move(to: CGPoint(x: x, y: y))
                            } else {
                                path.addLine(to: CGPoint(x: x, y: y))
                            }
                        }
                    }
                    .stroke(Color.blue, lineWidth: 2)
                    // Draw the x-axis
                       Path { path in
                           path.move(to: CGPoint(x: 0, y: geometry.size.height))
                           path.addLine(to: CGPoint(x: geometry.size.width, y: geometry.size.height))
                       }
                       .stroke(Color.gray.opacity(0.5), lineWidth: 0.5)

                    // Draw vertical lines and months
                    let months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
                      ForEach(0..<months.count, id: \.self) { index in
                          let x = geometry.size.width * CGFloat(Double(index) / Double(months.count - 1))
                          Path { path in
                              path.move(to: CGPoint(x: x, y: 0))
                              path.addLine(to: CGPoint(x: x, y: geometry.size.height))
                          }
                          .stroke(Color.gray.opacity(0.3), lineWidth: 0.5)

                          Text(months[index])
                              .font(.caption)
                              .foregroundColor(.gray)
                              .offset(x: x, y: geometry.size.height + 10)
                      }
                    // Draw Horuzontak lines

                    @State var textValues: [Int] = Array(repeating: 0, count: data.count)

                    // Draw Horizontal lines
                    ForEach(0..<data.count, id: \.self) { index in
                        let y = (geometry.size.height) * CGFloat(Double(index) / Double(data.count - 1))
                        Path { path in
                            path.move(to: CGPoint(x: 0, y: y))
                            path.addLine(to: CGPoint(x: geometry.size.width, y: y))
                        }
                        .stroke(Color.gray.opacity(0.5), lineWidth: 0.5)

                        Text("h")
                            .font(.caption)
                            .foregroundColor(.gray)
                            .offset(x: -10, y: y)
                    }
                    
                }
            }
            .frame(height: 136)
            .padding()

        }
}
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
