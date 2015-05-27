import QtQuick 2.4
import QtQuick.Window 2.2

Window {
    width: 1300
    height: 800
    visible: true

    Rectangle {
        color: "white"
        anchors.fill: parent


        Text {
            text: timeManager.time
            font.pixelSize: 40
            anchors.centerIn: parent
        }

    }
}
