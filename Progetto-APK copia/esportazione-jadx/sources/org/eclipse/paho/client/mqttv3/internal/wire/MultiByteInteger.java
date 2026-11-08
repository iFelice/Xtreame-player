package org.eclipse.paho.client.mqttv3.internal.wire;

/* JADX INFO: loaded from: classes2.dex */
public class MultiByteInteger {
    private int length;
    private int value;

    public MultiByteInteger(int i8) {
        this(i8, -1);
    }

    public int getEncodedLength() {
        return this.length;
    }

    public int getValue() {
        return this.value;
    }

    public MultiByteInteger(int i8, int i9) {
        this.value = i8;
        this.length = i9;
    }
}
