package org.eclipse.paho.client.mqttv3.internal.wire;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class CountingInputStream extends InputStream {
    private int counter = 0;
    private InputStream in;

    public CountingInputStream(InputStream inputStream) {
        this.in = inputStream;
    }

    public int getCounter() {
        return this.counter;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int i8 = this.in.read();
        if (i8 != -1) {
            this.counter++;
        }
        return i8;
    }

    public void resetCounter() {
        this.counter = 0;
    }
}
