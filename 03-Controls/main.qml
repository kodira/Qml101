import QtQuick 2.4
import QtQuick.Window 2.2
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.1
import QtGraphicalEffects 1.0

ApplicationWindow {

    width: 800
    height: 400
    visible: true

    menuBar: MenuBar {
        Menu {
            title: "Menü 1"
            MenuItem {text: "Eins Eins"}
            MenuItem {text: "Eins Zwei"}
        }
        Menu {
            title: "Menü 2"
            MenuItem {text: "Zwei Eins"}
            MenuItem {text: "Zwei Zwei"}
        }
    }

    Item {
        id: content
        anchors.fill: parent
        anchors.margins: 20

        ColumnLayout {
            id: layout
            anchors.fill: parent

            Button {
                text: "Blur AN"
                onClicked: {
                    blur.radius = 16
                }
            }

            Button {
                text: "Blur AUS"
                onClicked: blur.radius = 0
            }

            ProgressBar {
                indeterminate: true
            }

            Rectangle {
                width: 50
                height: 50
                color: "pink"
                radius: 10
            }
        }
    }

    GaussianBlur {
        id: blur
        source: content
        radius: 0
        samples: 16
        transparentBorder: true
        anchors.fill: content
        Behavior on radius { PropertyAnimation { duration: 1000 } }
    }

}
