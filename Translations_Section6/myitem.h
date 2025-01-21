#ifndef MYITEM_H
#define MYITEM_H

#include <QPainter>
#include <QQuickPaintedItem>

class MyItem : public QQuickPaintedItem
{
    Q_OBJECT
    QML_ELEMENT
    Q_PROPERTY(QString message READ message NOTIFY messageChanged CONSTANT FINAL)

public:
    MyItem();
    bool event(QEvent *event) override;
    void paint(QPainter *painter) override;
    QString message() const;

signals:
    void messageChanged();

public slots:
    void updatePaint();
};

#endif // MYITEM_H
