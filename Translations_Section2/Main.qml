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
    title: "Translations"
    header: Button {
        width: parent.width
        text: "Quit"
        onClicked: { Qt.quit() }
    }

    footer: Row {
        width: parent.width

        Repeater {
            id: repeater

            model: ListModel {
                id: languagesModel

                ListElement {
					lang: "English"
                    code: "en"
                }

                ListElement {
					lang: "Finnish"
                    code: "fi"
                }

                ListElement {
					lang: "French"
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
        title: root.countChecked(choices.buttons) + " choice(s) selected"

        Column {
            ButtonGroup {
                id: choices

                exclusive: false
            }

            CheckBox {
                text: "Choice " + root.choice1
                ButtonGroup.group: choices
            }

            CheckBox {
                text: "Choice " + root.choice2
                ButtonGroup.group: choices
            }
        }
    }
}
