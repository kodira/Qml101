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

                // NEW //
                Behavior on color {
                    ColorAnimation { duration: 2000 }
                }
            }
        }

        // Button
        Rectangle {
            width: 200
            height: 50
            color: "lightgray"
            radius: 10
            border.color: "darkgray"
            anchors.centerIn: parent

            Text {
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
