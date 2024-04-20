import Foundation


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
            let decodedData = try JSONDecoder().decode(JSONData.self, from: responseData)
            // Update the UI on the main thread
            DispatchQueue.main.async {
                jsonData = decodedData
                
            }
        } catch {
            print("Error parsing JSON: \(error)")
        }

    }

    // Start the data task
    task.resume()
}

