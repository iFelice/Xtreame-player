package org.eclipse.paho.client.mqttv3.internal.wire;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import org.eclipse.paho.client.mqttv3.MqttException;

/* JADX INFO: loaded from: classes2.dex */
public class MqttUnsubscribe extends MqttWireMessage {
    private int count;
    private String[] names;

    public MqttUnsubscribe(String[] strArr) {
        super((byte) 10);
        if (strArr != null) {
            this.names = (String[]) strArr.clone();
        }
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
            for (String str : this.names) {
                MqttWireMessage.encodeUTF8(dataOutputStream, str);
            }
            dataOutputStream.flush();
            return byteArrayOutputStream.toByteArray();
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
            stringBuffer.append("\"" + this.names[i8] + "\"");
        }
        stringBuffer.append("]");
        return stringBuffer.toString();
    }

    public MqttUnsubscribe(byte b8, byte[] bArr) throws IOException {
        super((byte) 10);
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        this.msgId = dataInputStream.readUnsignedShort();
        boolean z7 = false;
        this.count = 0;
        this.names = new String[10];
        while (!z7) {
            try {
                this.names[this.count] = MqttWireMessage.decodeUTF8(dataInputStream);
            } catch (Exception unused) {
                z7 = true;
            }
        }
        dataInputStream.close();
    }
}
