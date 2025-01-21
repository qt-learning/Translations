pragma ComponentBehavior: Bound
import QtQuick
import QtQuick.Controls.Basic

ApplicationWindow {
    id: root

    property int choice1: 1
    property int choice2: 2

    function countChecked(buttons : var) : int {
        let res = 0
        for (let i = 0; i < buttons.length; i++) {
            if (buttons[i].checked) res ++
        }
        return res
    }

    width: 640
    height: 480
    visible: true

    //: Here "Translations" means the communication of the meaning of a source-language text by means of an equivalent target-language text.
    //~ Context We do not mean the geometric transformation that moves every point of a figure, shape or space by the same distance in a given direction.
    title: qsTr("Translations")
    header: Button {
        width: parent.width
        text: qsTr("Quit", "Close the application, not resign")
        onClicked: { Qt.quit() }
    }

    footer: Row {
        width: parent.width

        Repeater {
            id: repeater

            model: ListModel {
                id: languagesModel

                ListElement {
                    lang: qsTr("English")
                    code: "en"
                }

                ListElement {
                    lang: qsTr("Finnish")
                    code: "fi"
                }

                ListElement {
                    lang: qsTr("French")
                    code: "fr"
                }
            }

            Button {
                required property int index
                required property string lang
                required property string code

                width: root.width / repeater.count
                text: lang
                onClicked: { Qt.uiLanguage = code }
            }
        }
    }

    GroupBox {
        anchors.centerIn: parent
        title: qsTr("%n choice(s) selected", "", root.countChecked(choices.buttons))

        Column {
            ButtonGroup {
                id: choices

                exclusive: false
            }

            CheckBox {
                text: qsTr("Choice %1").arg(root.choice1)
                ButtonGroup.group: choices
            }

            CheckBox {
                text: qsTr("Choice %1").arg(root.choice2)
                ButtonGroup.group: choices
            }
        }
    }
}
