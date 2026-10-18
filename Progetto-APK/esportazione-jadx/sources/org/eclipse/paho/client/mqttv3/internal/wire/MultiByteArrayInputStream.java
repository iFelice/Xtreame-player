package org.eclipse.paho.client.mqttv3.internal.wire;

import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class MultiByteArrayInputStream extends InputStream {
    private byte[] bytesA;
    private byte[] bytesB;
    private int lengthA;
    private int lengthB;
    private int offsetA;
    private int offsetB;
    private int pos = 0;

    public MultiByteArrayInputStream(byte[] bArr, int i8, int i9, byte[] bArr2, int i10, int i11) {
        this.bytesA = (byte[]) bArr.clone();
        this.bytesB = (byte[]) bArr2.clone();
        this.offsetA = i8;
        this.offsetB = i10;
        this.lengthA = i9;
        this.lengthB = i11;
    }

    @Override // java.io.InputStream
    public int read() {
        int i8;
        int i9 = this.pos;
        int i10 = this.lengthA;
        if (i9 < i10) {
            i8 = this.bytesA[this.offsetA + i9];
        } else {
            if (i9 >= this.lengthB + i10) {
                return -1;
            }
            i8 = this.bytesB[(this.offsetB + i9) - i10];
        }
        if (i8 < 0) {
            i8 += 256;
        }
        this.pos = i9 + 1;
        return i8;
    }
}
