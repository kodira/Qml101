import QtQuick 2.4
import QtQuick.Window 2.2
import QtGraphicalEffects 1.0

Window {
    visible: true
    visibility: Window.Windowed
    width: 1920
    height: 1080

    FontLoader {
        id: fontRoboto
        source: "roboto-light.ttf"
    }

    FontLoader {
        id: fontPaete
        source: "paetrb.ttf"
    }

    Image {
        id: introImage
        visible: false
        source: "intro.jpg"
        fillMode: Image.PreserveAspectCrop
        focus: true
        Keys.onEscapePressed: Qt.quit()
        anchors.fill: parent
    }

    FastBlur {
        id: introImageBlur
        source: introImage
        cached: false
        transformOrigin: Item.BottomRight
        anchors.fill: introImage
    }

    Text {
        id: titleText
        opacity: 0
        scale: 10
        text: "QML 101\n28. Mai 2015\nBei SWP"
        font.family: fontRoboto.name
        font.pixelSize: 100
        font.weight: Font.Light
        horizontalAlignment: Text.Center
        lineHeight: 1.3
        color: "white"
        anchors.centerIn: parent
        anchors.verticalCenterOffset: -100
    }

    Text {
        id: nameText
        width: 1000
        clip: true
        font.family: fontPaete.name
        font.pixelSize: 50
        font.bold: true
        color: "white"
        anchors.bottom: introImage.bottom
        anchors.horizontalCenter: introImage.horizontalCenter
        anchors.bottomMargin: 80

        Timer {
            id: textAnimTimer
            property var letters: "Und mein Name ist: Cornelius".split('')
            property int index: 0
            interval: 100
            running: false
            repeat: true
            onTriggered: {
                // Write first line
                if (index < letters.length) {
                    nameText.text = nameText.text + letters[index]
                    index++
                } else {
                    stop()
                }
            }
        }
    }

    Image {
        id: kodiraLogo
        width: 200
        height: width
        sourceSize.width: width
        sourceSize.height: height
        opacity: 0.8
        source: "kodira-logo.svg"
        anchors.right: introImage.right
        anchors.bottom: introImage.bottom
        anchors.margins: 30
    }


    SequentialAnimation {

        running: true

        ParallelAnimation {

            PropertyAnimation {
                target: introImageBlur
                property: "radius"
                from: 0
                to: 70
                duration: 10000
                easing.type: Easing.InOutQuad
            }

            PropertyAnimation {
                target: introImageBlur
                property: "scale"
                from: 1
                to: 1.2
                duration: 10000
                easing.type: Easing.InOutQuad
            }
        }

        ParallelAnimation {

            PropertyAnimation {
                target: titleText
                property: "scale"
                from: 10
                to: 1
                duration: 1000
                easing.type: Easing.InExpo
            }

            PropertyAnimation {
                target: titleText
                property: "opacity"
                from: 0
                to: 1
                duration: 1000
                easing.type: Easing.InExpo
            }

        }

        ScriptAction {
            script: textAnimTimer.start()
        }

    }
}
