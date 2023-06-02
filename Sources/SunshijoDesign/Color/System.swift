import SwiftUI

public extension Color {
    struct System { }
}

// MARK: - Red
public extension Color.System {
    static let red:  Color = #colorLiteral(red: 0.9096298814, green: 0.2505274117, blue: 0.2721211314, alpha: 1).color
    static let red100: Color = #colorLiteral(red: 0.8206859231, green: 0.2248354554, blue: 0.2432199419, alpha: 1).color
}

// MARK: - Green
public extension Color.System {
    static let green:  Color = #colorLiteral(red: 0, green: 0.8757768273, blue: 0, alpha: 1).color
    static let green100: Color = #colorLiteral(red: 0.01431648433, green: 0.7882282138, blue: 0.0002949601912, alpha: 1).color
}

// MARK: - Sub
public extension Color.System {
    static let sub:  Color = #colorLiteral(red: 0.1411764324, green: 0.1411764324, blue: 0.1411764324, alpha: 1).color
}
