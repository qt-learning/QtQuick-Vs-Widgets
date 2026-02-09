// Copyright (C) 2026 Qt Group.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

#include "mainwindow.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
{
    this->setWindowTitle("Qt Widgets");
    resize(640, 480);

    centralWidget = new QWidget(this);
    hbox = new QHBoxLayout;
    centralWidget->setLayout(hbox);
    this->setCentralWidget(centralWidget);

    buttonGroup = new QGroupBox("Button Group");
    pushButton = new QPushButton("PushButton");
    radioButton = new QRadioButton("RadioButton");
    checkBox = new QCheckBox("CheckBox");

    vboxButtonGroup = new QVBoxLayout;
    vboxButtonGroup->addWidget(pushButton);
    vboxButtonGroup->addWidget(radioButton);
    vboxButtonGroup->addWidget(checkBox);
    buttonGroup->setLayout(vboxButtonGroup);

    hbox->addWidget(buttonGroup);

    textInputGroup = new QGroupBox("Text Inputs");
    lineEdit = new QLineEdit();
    textEdit = new QTextEdit();

    vboxTextInputGroup = new QVBoxLayout;
    vboxTextInputGroup->addWidget(lineEdit);
    vboxTextInputGroup->addWidget(textEdit);
    textInputGroup->setLayout(vboxTextInputGroup);

    hbox->addWidget(textInputGroup);

    otherInputGroup = new QGroupBox("Other Inputs");
    comboBox = new QComboBox();
    comboBox->addItems({"Item 1", "Item 2", "Item 3"});
    dial = new QDial();
    slider = new QSlider();
    slider->setOrientation(Qt::Horizontal);

    vboxOtherInputGroup = new QVBoxLayout;
    vboxOtherInputGroup->addWidget(comboBox);
    vboxOtherInputGroup->addWidget(dial);
    vboxOtherInputGroup->addWidget(slider);
    otherInputGroup->setLayout(vboxOtherInputGroup);

    hbox->addWidget(otherInputGroup);
}

MainWindow::~MainWindow() {}
