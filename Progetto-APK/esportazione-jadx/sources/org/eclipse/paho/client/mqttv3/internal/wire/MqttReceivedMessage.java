package org.eclipse.paho.client.mqttv3.internal.wire;

import org.eclipse.paho.client.mqttv3.MqttMessage;

/* JADX INFO: loaded from: classes2.dex */
public class MqttReceivedMessage extends MqttMessage {
    public int getMessageId() {
        return super.getId();
    }

    @Override // org.eclipse.paho.client.mqttv3.MqttMessage
    public void setDuplicate(boolean z7) {
        super.setDuplicate(z7);
    }

    public void setMessageId(int i8) {
        super.setId(i8);
    }
}
