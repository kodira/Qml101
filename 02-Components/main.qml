import QtQuick 2.4
import QtQuick.Window 2.2

Window {
    width: 1300
    height: 800
    visible: true

    Rectangle {
        color: "White"
        anchors.fill: parent

        Button {
            x: 50
            y: 50
            text: "Mehr Buttons"
            onClicked: {
                // NEW //
                var comp = Qt.createComponent("Button.qml")
                var button = comp.createObject(column)
                button.text = Math.round((Math.random() * 10))

                // Connect signals if needed
                button.clicked.connect(function() {console.log("Dynamischer Button " + button.text + " geklickt")})
            }
        }

        Button {
            x: 200
            y: 200
            text: "Button Laden"
            onClicked: loader.source = "Button.qml"
        }

        Loader {
            id: loader
            x: 500
            y: 200
            onLoaded: item.text = "Frischer Button"
        }

        // NEW //
        Column {
            id: column
            x: 200
            y: 300
            spacing: 10
        }

    }
}
