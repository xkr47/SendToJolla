/*
  Copyright (C) 2015 Michal Kosciesza <michal@mkiol.net>

  This file is part of SendToJolla application.

  This Source Code Form is subject to the terms of
  the Mozilla Public License, v.2.0. If a copy of
  the MPL was not distributed with this file, You can
  obtain one at http://mozilla.org/MPL/2.0/.
*/

#ifndef SERVER_H
#define SERVER_H

#include <QObject>
#include <QString>
#include <QNetworkConfigurationManager>

#ifdef SAILFISH
#include <QClipboard>
#endif

#include "qhttpserver/qhttpserver.h"
#include "qhttpserver/qhttprequest.h"
#include "qhttpserver/qhttpresponse.h"

class Server : public QObject
{
    Q_OBJECT

    Q_PROPERTY (bool running READ isRunning NOTIFY runningChanged)

public:
    explicit Server(QObject *parent = 0);
    ~Server();

    Q_INVOKABLE QString getServerUrl();
    Q_INVOKABLE void startServer();

public slots:
    void handle(QHttpRequest *req, QHttpResponse *resp);

private slots:
    void bodyReceived();
#ifdef SAILFISH
    void clipboardChanged(QClipboard::Mode);
#endif
    void onlineStateChanged(bool state);

signals:
    void newEvent(QString text);
    void runningChanged();

private:
    QHttpServer *server;
    QNetworkConfigurationManager ncm;
#ifdef SAILFISH
    QClipboard *clipboard;
#endif
    QString clipboardData;

    bool isListening;
    void launchBrowser(QString data);
    void setClipboard(QString data);
    QString getClipboard();
    bool isRunning();
    void stopServer();
};

#endif // SERVER_H