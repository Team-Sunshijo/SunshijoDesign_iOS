import Foundation

struct DropdownItem: Identifiable {
    let id: Int
    let title: String
    let onSelect: () -> Void
}
