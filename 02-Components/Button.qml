import QtQuick 2.4

// Button
Rectangle {
    // NEW //
    id: root
    property string text
    signal clicked

    width: 200
    height: 50
    color: mouseArea.pressed ? "darkgray" : "lightgray"
    radius: 10
    border.color: "darkgray"

    Text {
        id: buttonText
        // NEW //
        text: root.text
        color: "violet"
        font.pixelSize: 25
        style: Text.Raised
        styleColor: "darkgray"
        anchors.centerIn: parent
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        // NEW //
        onClicked: root.clicked()
    }
}
