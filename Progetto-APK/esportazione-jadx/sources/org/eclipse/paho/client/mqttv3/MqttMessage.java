package org.eclipse.paho.client.mqttv3;

/* JADX INFO: loaded from: classes2.dex */
public class MqttMessage {
    private int messageId;
    private byte[] payload;
    private boolean mutable = true;
    private int qos = 1;
    private boolean retained = false;
    private boolean dup = false;

    public MqttMessage() {
        setPayload(new byte[0]);
    }

    public static void validateQos(int i8) {
        if (i8 < 0 || i8 > 2) {
            throw new IllegalArgumentException();
        }
    }

    public void checkMutable() {
        if (!this.mutable) {
            throw new IllegalStateException();
        }
    }

    public void clearPayload() {
        checkMutable();
        this.payload = new byte[0];
    }

    public int getId() {
        return this.messageId;
    }

    public byte[] getPayload() {
        return this.payload;
    }

    public int getQos() {
        return this.qos;
    }

    public boolean isDuplicate() {
        return this.dup;
    }

    public boolean isRetained() {
        return this.retained;
    }

    public void setDuplicate(boolean z7) {
        this.dup = z7;
    }

    public void setId(int i8) {
        this.messageId = i8;
    }

    public void setMutable(boolean z7) {
        this.mutable = z7;
    }

    public void setPayload(byte[] bArr) {
        checkMutable();
        bArr.getClass();
        this.payload = (byte[]) bArr.clone();
    }

    public void setQos(int i8) {
        checkMutable();
        validateQos(i8);
        this.qos = i8;
    }

    public void setRetained(boolean z7) {
        checkMutable();
        this.retained = z7;
    }

    public String toString() {
        return new String(this.payload);
    }

    public MqttMessage(byte[] bArr) {
        setPayload(bArr);
    }
}
