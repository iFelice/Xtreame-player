package org.eclipse.paho.client.mqttv3.internal.wire;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import org.eclipse.paho.client.mqttv3.MqttException;
import org.eclipse.paho.client.mqttv3.internal.ClientState;
import org.eclipse.paho.client.mqttv3.logging.Logger;
import org.eclipse.paho.client.mqttv3.logging.LoggerFactory;

/* JADX INFO: loaded from: classes2.dex */
public class MqttOutputStream extends OutputStream {
    private static final String CLASS_NAME = "org.eclipse.paho.client.mqttv3.internal.wire.MqttOutputStream";
    private ClientState clientState;
    private Logger log = LoggerFactory.getLogger(LoggerFactory.MQTT_CLIENT_MSG_CAT, CLASS_NAME);
    private BufferedOutputStream out;

    public MqttOutputStream(ClientState clientState, OutputStream outputStream) {
        this.clientState = clientState;
        this.out = new BufferedOutputStream(outputStream);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.out.close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        this.out.flush();
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        this.out.write(bArr);
        this.clientState.notifySentBytes(bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i8, int i9) throws IOException {
        this.out.write(bArr, i8, i9);
        this.clientState.notifySentBytes(i9);
    }

    @Override // java.io.OutputStream
    public void write(int i8) throws IOException {
        this.out.write(i8);
    }

    public void write(MqttWireMessage mqttWireMessage) throws MqttException, IOException {
        byte[] header = mqttWireMessage.getHeader();
        byte[] payload = mqttWireMessage.getPayload();
        this.out.write(header, 0, header.length);
        this.clientState.notifySentBytes(header.length);
        int i8 = 0;
        while (i8 < payload.length) {
            int iMin = Math.min(1024, payload.length - i8);
            this.out.write(payload, i8, iMin);
            i8 += 1024;
            this.clientState.notifySentBytes(iMin);
        }
        this.log.fine(CLASS_NAME, "write", "529", new Object[]{mqttWireMessage});
    }
}
