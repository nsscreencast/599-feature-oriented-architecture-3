import ProjectDescription

let nameAttr = Template.Attribute.required("name")

let template = Template(
    description: "Creates a new Foundation Library",
    attributes: [
        nameAttr
//        .optional("bundleIDBase", default: .string("com.nsscreencast.tuist"))
    ],
    items: [
        .string(
            path: "Foundation/\(nameAttr)/Sources/\(nameAttr).swift",
            contents: """
            public enum \(nameAttr) {
                public static var version = "1.0"
            }
            """
        ),
        
        .string(
            path: "Foundation/\(nameAttr)/Tests/\(nameAttr)Tests.swift",
            contents: """
            import Testing
            @testable import \(nameAttr)
            
            @Test
            func testVersion() {
                #expect(\(nameAttr).version == "1.0")
            }
            """
        )
    ]
)
