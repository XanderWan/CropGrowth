import SwiftUI

@main
struct CropGrowthApp: App {
    
    //instance of locationmanager at app level, stores current location
    @StateObject private var locationManager = LocationManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(locationManager)
                .onAppear {
                    locationManager.requestLocation() //fetch location once
                }
        }
    }
}
