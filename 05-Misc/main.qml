import QtQuick 2.4
import QtQuick.Window 2.2

Window {
    width: 1300
    height: 800
    visible: true
    visibility: Window.FullScreen

    Rectangle {
        color: "white"
        focus: true
        Keys.onEscapePressed: Qt.quit()
        anchors.fill: parent

        Text {
            font.pixelSize: 30
            lineHeight: 1.5
            wrapMode: Text.WordWrap
            anchors.fill: parent
            anchors.margins: 50
            text: "
            <h1>Und sonst so?</h1>
            <ul>
                <li>Die Demos haben nur einen Bruchteil betrachtet. Fragen?</li>
                <li>C++ list/tree/table models können in QML verwendet werden.</li>
                <li>QML kann über Netzwerk bzw. Socket (nach)geladen werden.</li>
                <ul>
                    <li>Hauptanwendung könnte zur Laufzeit dynamischen QML code erzeugen.</li>
                    <li>Hauptanwendung könnte QML-App aktualisieren.</li>
                    <li>QML-App könnte Teile (fast alles) aus dem Internet (nach)laden.</li>
                </ul>
                <li>JSON als Austauschformat zwischen Hauptanwendung und QML-App. Web-Client möglich.</li>
                <li>Es gibt JS implementierungen von Protocol Buffers.</li>
                <li>QML bietet hervorragende Touch-Unterstützung. Neues UI-Konzept?</li>
            </ul>
            "
        }
    }
}
