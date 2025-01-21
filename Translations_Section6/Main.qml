pragma ComponentBehavior: Bound
import QtQuick
import QtQuick.Controls.Basic
import Translations

ApplicationWindow {
    id: root

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

    MyItem {
        anchors.fill: parent
    }
}
