package org.eclipse.paho.client.mqttv3.internal.wire;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import org.eclipse.paho.client.mqttv3.MqttException;
import org.eclipse.paho.client.mqttv3.MqttMessage;

/* JADX INFO: loaded from: classes2.dex */
public class MqttSubscribe extends MqttWireMessage {
    private int count;
    private String[] names;
    private int[] qos;

    public MqttSubscribe(byte b8, byte[] bArr) throws IOException {
        super((byte) 8);
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        this.msgId = dataInputStream.readUnsignedShort();
        boolean z7 = false;
        this.count = 0;
        this.names = new String[10];
        this.qos = new int[10];
        while (!z7) {
            try {
                this.names[this.count] = MqttWireMessage.decodeUTF8(dataInputStream);
                int[] iArr = this.qos;
                int i8 = this.count;
                this.count = i8 + 1;
                iArr[i8] = dataInputStream.readByte();
            } catch (Exception unused) {
                z7 = true;
            }
        }
        dataInputStream.close();
    }

    @Override // org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage
    public byte getMessageInfo() {
        return (byte) ((this.duplicate ? 8 : 0) | 2);
    }

    @Override // org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage
    public byte[] getPayload() throws MqttException {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            int i8 = 0;
            while (true) {
                String[] strArr = this.names;
                if (i8 >= strArr.length) {
                    dataOutputStream.flush();
                    return byteArrayOutputStream.toByteArray();
                }
                MqttWireMessage.encodeUTF8(dataOutputStream, strArr[i8]);
                dataOutputStream.writeByte(this.qos[i8]);
                i8++;
            }
        } catch (IOException e8) {
            throw new MqttException(e8);
        }
    }

    @Override // org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage
    public byte[] getVariableHeader() throws MqttException {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            dataOutputStream.writeShort(this.msgId);
            dataOutputStream.flush();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e8) {
            throw new MqttException(e8);
        }
    }

    @Override // org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage
    public boolean isRetryable() {
        return true;
    }

    @Override // org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(super.toString());
        stringBuffer.append(" names:[");
        for (int i8 = 0; i8 < this.count; i8++) {
            if (i8 > 0) {
                stringBuffer.append(", ");
            }
            stringBuffer.append("\"");
            stringBuffer.append(this.names[i8]);
            stringBuffer.append("\"");
        }
        stringBuffer.append("] qos:[");
        for (int i9 = 0; i9 < this.count; i9++) {
            if (i9 > 0) {
                stringBuffer.append(", ");
            }
            stringBuffer.append(this.qos[i9]);
        }
        stringBuffer.append("]");
        return stringBuffer.toString();
    }

    public MqttSubscribe(String[] strArr, int[] iArr) {
        super((byte) 8);
        if (strArr != null && iArr != null) {
            this.names = (String[]) strArr.clone();
            int[] iArr2 = (int[]) iArr.clone();
            this.qos = iArr2;
            if (this.names.length == iArr2.length) {
                this.count = strArr.length;
                for (int i8 : iArr) {
                    MqttMessage.validateQos(i8);
                }
                return;
            }
            throw new IllegalArgumentException();
        }
        throw new IllegalArgumentException();
    }
}
