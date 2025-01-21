#include "myitem.h"

MyItem::MyItem() {}

bool MyItem::event(QEvent *event)
{
    if (event->type() == QEvent::LanguageChange) {
        emit messageChanged();
        update();
    }
    return QQuickItem::event(event);
}

void MyItem::paint(QPainter *painter)
{
    QSizeF itemSize = this->size();
    QRect rect(0, 0, itemSize.width(), itemSize.height());

    painter->setFont(QFont("Arial", 30));
    painter->drawText(rect, Qt::AlignCenter, message());
}

QString MyItem::message() const
{
    return tr("Hello world");
}

void MyItem::updatePaint()
{
    this->update();
}
