import QtQuick 2.4
import QtQuick.Window 2.2

Window {
    width: 1300
    height: 800
    visible: true

    Rectangle {
        color: "white"
        anchors.fill: parent

        // Text input
        Rectangle {
            y: 0
            height: 50
            color: "lightgray"
            anchors.left: parent.left
            anchors.right: parent.right

            Row {
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 10

                Text {
                    text: "Bitte Text eingeben: "
                }

                TextInput {
                    id: textInput
                    color: "blue"
                    text: "Button"
                    width: 500
                }
            }

            Rectangle {
                width: parent.height
                height: width
                color: textInput.text
                anchors.right: parent.right

                Behavior on color {
                    ColorAnimation { duration: 2000 }
                }
            }
        }

        // Button
        Rectangle {
            width: buttonText.width + 20
            height: 50
            color: "lightgray"
            radius: 10
            border.color: "darkgray"
            anchors.centerIn: parent

            // NEW //
            Behavior on width {
                PropertyAnimation { duration: 200 }
            }

            Text {
                id: buttonText
                text: "Toller " + textInput.text
                color: "violet"
                font.pixelSize: 25
                style: Text.Raised
                styleColor: "darkgray"
                anchors.centerIn: parent
            }
        }
    }
}
