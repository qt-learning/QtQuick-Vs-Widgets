#include "mainwindow.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
{
    resize(640, 480);
    this->setWindowTitle("Qt Quick in Widgets");

    centralWidget = new QWidget(this);
    vbox = new QVBoxLayout;
    centralWidget->setLayout(vbox);
    this->setCentralWidget(centralWidget);

    quickViewButton = new QPushButton("Press this button to display a QQuickView");
    connect(quickViewButton, &QPushButton::clicked, this, &MainWindow::on_quickViewButton_clicked);
    vbox->addWidget(quickViewButton);

    quickWidgetButton = new QPushButton("Press this button to display a QQuickWidget");
    connect(quickWidgetButton, &QPushButton::clicked, this, &MainWindow::on_quickWidgetButton_clicked);
    vbox->addWidget(quickWidgetButton);

    quickWidget = new QQuickWidget;
    quickWidget->setResizeMode(QQuickWidget::ResizeMode::SizeViewToRootObject);
    vbox->addWidget(quickWidget);
}

MainWindow::~MainWindow() {}

void MainWindow::on_quickViewButton_clicked()
{
    quickView = new QQuickView;
    quickView->setSource(QUrl("qrc:PieSeries2D.qml"));
    quickView->setResizeMode(QQuickView::ResizeMode::SizeRootObjectToView);
    quickView->show();
}

void MainWindow::on_quickWidgetButton_clicked()
{
    quickWidget->setSource(QUrl("qrc:LineSeries2D.qml"));
}
