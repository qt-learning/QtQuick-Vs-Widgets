import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts

Window {
    id: root

    width: 640
    height: 480
    visible: true
    title: qsTr("Qt Quick")

    RowLayout {
        anchors.centerIn: parent
        spacing: 5

        GroupBox {
            title: "Buttons"
            Layout.preferredHeight: root.height - 10
            Layout.preferredWidth: root.width / 3 - 10

            ColumnLayout {
                spacing: 20
                anchors.fill: parent

                Button {
                    text: "Button"
                }

                RadioButton {
                    text: "Radio Button"
                }

                CheckBox {
                    text: "CheckBox"
                }
            }
        }

        GroupBox {
            title: "Text Inputs"
            Layout.preferredHeight: root.height - 10
            Layout.preferredWidth: root.width / 3 - 10

            ColumnLayout {
                spacing: 20
                anchors.fill: parent

                TextInput {
                    Layout.preferredWidth: parent.width
                    text: "single-line text editor"
                }

                TextEdit {
                    Layout.fillHeight: true
                    text: "multi-line text editor"
                }
            }
        }

        GroupBox {
            title: "Other Inputs"
            Layout.preferredHeight: root.height - 10
            Layout.preferredWidth: root.width / 3 - 10

            ColumnLayout {
                spacing: 20
                anchors.fill: parent

                ComboBox {
                    Layout.preferredWidth: parent.width
                    model: ListModel {
                        ListElement {display: "Item 1"}
                        ListElement {display: "Item 2"}
                        ListElement {display: "Item 3"}
                    }
                }

                Dial {
                    Layout.preferredWidth: parent.width
                }

                Slider {
                    Layout.preferredWidth: parent.width
                    Layout.alignment: Qt.AlignHCenter
                }
            }
        }
    }
}

