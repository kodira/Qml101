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
            // NEW //
            text: "Button Eins"
            onClicked: console.log("Button Eins")
        }

        Button {
            x: 200
            y: 200
            // NEW //
            text: "Button Zwei"
            onClicked: console.log("Button Zwei")
        }

    }
}
