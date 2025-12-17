#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QVBoxLayout>
#include <QPushButton>
#include <QQuickView>
#include <QQuickWidget>

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

public slots:
    void on_quickViewButton_clicked();
    void on_quickWidgetButton_clicked();

private:
    QWidget *centralWidget;
    QVBoxLayout *vbox;
    QPushButton *quickViewButton;
    QPushButton *quickWidgetButton;
    QQuickView *quickView;
    QQuickWidget *quickWidget;
};
#endif // MAINWINDOW_H
