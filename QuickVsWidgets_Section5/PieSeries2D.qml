import QtQuick
import QtQuick.Controls.Basic
import QtGraphs

Item {
    width: 500
    height: 400

    GraphsView {
        width: parent.width
        height: parent.height

        PieSeries {
            pieSize: .7
            holeSize: .2

            PieSlice {
                value: .5
                color: "red"
                borderColor: "black"
                borderWidth: 2
                label: "Python"
                labelVisible: true
                labelFont.pointSize: 20
                labelColor: "black"
                labelPosition: PieSlice.LabelPosition.InsideTangential
            }

            PieSlice {
                value: .5
                color: "blue"
                borderColor: "black"
                borderWidth: 2
                label: "Java"
                labelVisible: true
                labelFont.pointSize: 20
                labelColor: "black"
                labelPosition: PieSlice.LabelPosition.InsideHorizontal
            }

            PieSlice {
                value: .2
                color: "yellow"
                borderColor: "black"
                borderWidth: 2
                label: "C#"
                labelVisible: true
                labelFont.pointSize: 20
                labelColor: "black"
                labelPosition: PieSlice.LabelPosition.InsideHorizontal
            }

            PieSlice {
                value: .3
                color: "green"
                borderColor: "black"
                borderWidth: 2
                label: "C++"
                labelVisible: true
                labelFont.pointSize: 20
                labelColor: "black"
                exploded: true
                labelPosition: PieSlice.LabelPosition.Outside
            }
        }
    }
}
