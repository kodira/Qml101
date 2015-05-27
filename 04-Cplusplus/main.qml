import QtQuick 2.4
import QtQuick.Window 2.2
import QtQuick.Controls 1.2
// NEW //
import de.kodira.models 1.0

Window {
    width: 1300
    height: 800
    visible: true

    // NEW //
    Contact {
        id: contactObj
        firstName: "Cornelius"
        lastName: "Hald"
        age: 25
    }

    Rectangle {
        color: "white"
        anchors.fill: parent

        Column {
            spacing: 10
            width: 500
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

            // Spacer
            Item {
                height: 100
                width: 10
            }

            Text {
                text: "First name: " + contactObj.firstName + "\nLast name: " + contactObj.lastName + "\nAge: " + contactObj.age
                font.pixelSize: 40
            }

            Button {
                text: "Alter korrigieren"
                onClicked: contactObj.age = 36
            }

            Button {
                text: "RESET"
                onClicked: contactObj.reset()
            }
        }
    }
}
