import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var locationManager: LocationManager
    
    var body: some View {
        if let location = locationManager.currentLocation {
            Text("Location: \(location.latitude), \(location.longitude)")
        } else {
            Text("Fetching location...")
        }
    }
}

#Preview {
    HomeView()
        .environmentObject(LocationManager())
}
