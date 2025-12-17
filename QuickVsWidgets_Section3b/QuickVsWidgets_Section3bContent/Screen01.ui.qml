

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick
import QtQuick.Controls
import QuickVsWidgets_Section3b
import QtQuick.Layouts

Rectangle {
    id: rectangle
    width: Constants.width
    height: Constants.height

    color: Constants.backgroundColor

    RowLayout {
        id: rowLayout
        anchors.fill: parent

        GroupBox {
            id: groupBox
            width: 400
            height: 600
            Layout.preferredHeight: rectangle.height - 10
            Layout.preferredWidth: rectangle.width / 3 - 10
            title: qsTr("Buttons")

            ColumnLayout {
                id: columnLayout
                anchors.fill: parent

                Button {
                    id: button
                    text: qsTr("Button")
                }

                RadioButton {
                    id: radioButton
                    text: qsTr("Radio Button")
                }

                CheckBox {
                    id: checkBox
                    text: qsTr("Check Box")
                }
            }
        }

        GroupBox {
            id: groupBox2
            width: 400
            height: 600
            Layout.preferredHeight: rectangle.height - 10
            Layout.preferredWidth: rectangle.width / 3 - 10
            title: qsTr("Text Inputs")

            ColumnLayout {
                id: columnLayout1
                anchors.fill: parent
                spacing: 20

                TextInput {
                    id: textInput
                    width: 200
                    height: 50
                    text: qsTr("single-line text editor")
                    font.pixelSize: 20
                    Layout.preferredWidth: parent.width
                }

                TextEdit {
                    id: textEdit
                    width: 200
                    height: 400
                    text: qsTr("multi-line text editor")
                    font.pixelSize: 20
                    Layout.fillHeight: true
                    Layout.preferredHeight: parent.height - 200
                    Layout.preferredWidth: parent.width
                }
            }
        }

        GroupBox {
            id: groupBox1
            width: 400
            height: 600
            Layout.preferredHeight: rectangle.height - 10
            Layout.preferredWidth: rectangle.width / 3 - 10
            title: qsTr("Other Inputs")

            ColumnLayout {
                id: columnLayout2
                anchors.fill: parent
                spacing: 20

                ComboBox {
                    id: comboBox
                    Layout.preferredWidth: parent.width
                    displayText: "Item 1"
                }

                Dial {
                    id: dial
                    width: 200
                    Layout.preferredHeight: 500
                    Layout.preferredWidth: parent.width
                }

                Slider {
                    id: slider
                    value: 0.5
                    Layout.preferredWidth: parent.width
                }
            }
        }
    }
}
