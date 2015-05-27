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

        RowLayout {

            spacing: 100

            // Bluring some stuff just to show this is still a scene graph
            ColumnLayout {

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

            // Saving dialog data example
            ColumnLayout {
                id: form
                property variant dataObj : {'formName' : 'people_form'}
                //property variant dataObj : new Object() // << to create an empty object

                TextField {
                    id: lastNameField
                    placeholderText: "Nachname"
                    onTextChanged: form.dataObj.nachname = text
                }

                TextField {
                    id: firstNameField
                    placeholderText: "Vorname"
                    onTextChanged: form.dataObj.vorname = text
                }

                Slider {
                    id: ageSlider
                    minimumValue: 0
                    maximumValue: 100
                    onValueChanged: form.dataObj.alter = value
                }

                Button {
                    text: "Speichern"
                    onClicked: {
                        console.log("Now saving: " + JSON.stringify(form.dataObj))
                    }
                }

                Button {
                    text: "Speichern (alt.)"
                    onClicked: {
                        var dialogData = {}
                        dialogData.formName = "people_form"
                        dialogData.nachname = lastNameField.text
                        dialogData.vorname = firstNameField.text
                        dialogData.alter = ageSlider.value
                        console.log("Now saving: " + JSON.stringify(dialogData))
                    }
                }
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
