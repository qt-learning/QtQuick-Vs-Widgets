// Copyright (C) 2026 Qt Group.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

import QtQuick
import QtQuick.Controls.Basic
import QtGraphs

Item {
    anchors.fill: parent

    GraphsView {
        anchors.fill: parent

        axisX: ValueAxis {
            max: 3
            titleText: "X Axis Title"
            titleVisible: true
        }
        axisY: ValueAxis {
            max: 3
            titleText: "Y Axis Title"
            titleVisible: true
        }

        LineSeries {
            color: "#00ff00"
            XYPoint { x: 0.5; y: 0.5 }
            XYPoint { x: 1; y: 1 }
            XYPoint { x: 2; y: 2 }
            XYPoint { x: 2.5; y: 1.5 }
        }

        LineSeries {
            color: "#ff0000"
            XYPoint { x: 0.5; y: 3 }
            XYPoint { x: 1; y: 2 }
            XYPoint { x: 2; y: 2.5 }
            XYPoint { x: 2.5; y: 1 }
        }
    }
}

