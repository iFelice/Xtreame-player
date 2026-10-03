package org.eclipse.paho.client.mqttv3.internal.wire;

/* JADX INFO: loaded from: classes2.dex */
public abstract class MqttAck extends MqttWireMessage {
    public MqttAck(byte b8) {
        super(b8);
    }

    @Override // org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage
    public byte getMessageInfo() {
        return (byte) 0;
    }

    @Override // org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage
    public String toString() {
        return String.valueOf(super.toString()) + " msgId " + this.msgId;
    }
}
