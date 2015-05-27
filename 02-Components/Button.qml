import QtQuick 2.4

// Button
Rectangle {
    width: 200
    height: 50
    color: mouseArea.pressed ? "darkgray" : "lightgray"
    radius: 10
    border.color: "darkgray"

    Text {
        id: buttonText
        text: "Toller Button"
        color: "violet"
        font.pixelSize: 25
        style: Text.Raised
        styleColor: "darkgray"
        anchors.centerIn: parent
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onClicked: console.log("Button clicked")
    }
}
