package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.List;
import org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.pM, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1826pM {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final byte[] f20444d = {79, 103, 103, 83, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, -43, -59, -9, 1, 19, 79, 112, 117, 115, 72, 101, 97, 100, 1, 2, 56, 1, -128, -69, 0, 0, 0, 0, 0};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final byte[] f20445e = {79, 103, 103, 83, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, MqttWireMessage.MESSAGE_TYPE_UNSUBACK, -103, 87, 83, 1, 16, 79, 112, 117, 115, 84, 97, 103, 115, 0, 0, 0, 0, 0, 0, 0, 0};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ByteBuffer f20446a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f20447b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f20448c;

    public static final void b(ByteBuffer byteBuffer, long j8, int i8, int i9, boolean z7) {
        byteBuffer.put((byte) 79);
        byteBuffer.put((byte) 103);
        byteBuffer.put((byte) 103);
        byteBuffer.put((byte) 83);
        byteBuffer.put((byte) 0);
        byteBuffer.put(true != z7 ? (byte) 0 : (byte) 2);
        byteBuffer.putLong(j8);
        byteBuffer.putInt(0);
        byteBuffer.putInt(i8);
        byteBuffer.putInt(0);
        long j9 = i9;
        AbstractC2987b.C0(j9, "out of range: %s", (j9 >> 8) == 0);
        byteBuffer.put((byte) j9);
    }

    public final void a(VJ vj, List list) {
        int length;
        ByteBuffer byteBuffer = vj.f16993e;
        byteBuffer.getClass();
        if (byteBuffer.limit() - vj.f16993e.position() == 0) {
            return;
        }
        byte[] bArr = null;
        if (this.f20447b == 2 && (list.size() == 1 || list.size() == 3)) {
            bArr = (byte[]) list.get(0);
        }
        ByteBuffer byteBuffer2 = vj.f16993e;
        int iPosition = byteBuffer2.position();
        int iLimit = byteBuffer2.limit();
        int i8 = iLimit - iPosition;
        int i9 = (i8 + 255) / 255;
        int i10 = i9 + 27 + i8;
        if (this.f20447b == 2) {
            length = bArr != null ? bArr.length + 28 : 47;
            i10 += length + 44;
        } else {
            length = 0;
        }
        if (this.f20446a.capacity() < i10) {
            this.f20446a = ByteBuffer.allocate(i10).order(ByteOrder.LITTLE_ENDIAN);
        } else {
            this.f20446a.clear();
        }
        ByteBuffer byteBuffer3 = this.f20446a;
        if (this.f20447b == 2) {
            if (bArr != null) {
                b(byteBuffer3, 0L, 0, 1, true);
                int length2 = bArr.length;
                long j8 = length2;
                AbstractC2987b.C0(j8, "out of range: %s", (j8 >> 8) == 0);
                byteBuffer3.put((byte) j8);
                byteBuffer3.put(bArr);
                int i11 = length2 + 28;
                byteBuffer3.putInt(22, Et.l(byteBuffer3.arrayOffset(), byteBuffer3.array(), i11, 0));
                byteBuffer3.position(i11);
            } else {
                byteBuffer3.put(f20444d);
            }
            byteBuffer3.put(f20445e);
        } else {
            iPosition = iPosition;
        }
        int iX = this.f20448c + ((int) ((Q3.b.X(byteBuffer2.get(0), byteBuffer2.limit() > 1 ? byteBuffer2.get(1) : (byte) 0) * 48000) / 1000000));
        this.f20448c = iX;
        b(byteBuffer3, iX, this.f20447b, i9, false);
        for (int i12 = 0; i12 < i9; i12++) {
            if (i8 >= 255) {
                byteBuffer3.put((byte) -1);
                i8 -= 255;
            } else {
                byteBuffer3.put((byte) i8);
                i8 = 0;
            }
        }
        for (int i13 = iPosition; i13 < iLimit; i13++) {
            byteBuffer3.put(byteBuffer2.get(i13));
        }
        byteBuffer2.position(byteBuffer2.limit());
        byteBuffer3.flip();
        if (this.f20447b == 2) {
            byteBuffer3.putInt(length + 66, Et.l(byteBuffer3.arrayOffset() + length + 44, byteBuffer3.array(), byteBuffer3.limit() - byteBuffer3.position(), 0));
        } else {
            byteBuffer3.putInt(22, Et.l(byteBuffer3.arrayOffset(), byteBuffer3.array(), byteBuffer3.limit() - byteBuffer3.position(), 0));
        }
        this.f20447b++;
        this.f20446a = byteBuffer3;
        vj.e();
        vj.f(this.f20446a.remaining());
        vj.f16993e.put(this.f20446a);
        vj.g();
    }
}
