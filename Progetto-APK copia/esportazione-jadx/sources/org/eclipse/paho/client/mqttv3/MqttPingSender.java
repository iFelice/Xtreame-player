package org.eclipse.paho.client.mqttv3;

import org.eclipse.paho.client.mqttv3.internal.ClientComms;

/* JADX INFO: loaded from: classes2.dex */
public interface MqttPingSender {
    void init(ClientComms clientComms);

    void schedule(long j8);

    void start();

    void stop();
}
