import QtQuick 2.4
import QtQuick.Window 2.2

Window {
    width: 1300
    height: 800
    visible: true

    Rectangle {
        color: "White"
        anchors.fill: parent

        // Button
        Rectangle {
            width: 200
            height: 50
            color: "lightgray"
            radius: 10
            border.color: "darkgray"
            anchors.centerIn: parent

            Text {
                id: buttonText
                text: "Toller Button"
                color: "violet"
                font.pixelSize: 25
                style: Text.Raised
                styleColor: "darkgray"
                anchors.centerIn: parent
            }
        }
    }
}
