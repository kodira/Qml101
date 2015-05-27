import QtQuick 2.4
import QtQuick.Window 2.2
import QtQuick.Controls 1.2

Window {
    width: 1300
    height: 800
    visible: true

    Rectangle {
        color: "white"
        anchors.fill: parent

        Column {
            anchors.centerIn: parent

            Text {
                id: timeText
                text: timeManager.time
                font.pixelSize: 40
            }

            Slider {
                width: timeText.width
                minimumValue: 500
                maximumValue: 2000
                stepSize: 100
                onValueChanged: timeManager.interval = value
            }

            Text {
                text: timeManager.interval + " ms"
                font.pixelSize: 40
            }
        }
    }
}
