import SwiftUI
@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            LandmarksSplitView()
                .environment(modelData)
                .frame(minWidth: 375.0, minHeight: 375.0)
                .onGeometryChange(for: CGSize.self) { geometry in
                    geometry.size
                } action: {
                    modelData.windowSize = $0
                }
        }
    }
}
