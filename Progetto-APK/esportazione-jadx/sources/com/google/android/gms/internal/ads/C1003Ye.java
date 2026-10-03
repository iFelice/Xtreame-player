package com.google.android.gms.internal.ads;

import java.io.Closeable;
import java.nio.ByteBuffer;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Ye, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1003Ye implements Closeable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final ByteBuffer f17625G;

    public C1003Ye(ByteBuffer byteBuffer) {
        this.f17625G = byteBuffer.duplicate();
    }

    public final long E() {
        return this.f17625G.position();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    public final int k(ByteBuffer byteBuffer) {
        ByteBuffer byteBuffer2 = this.f17625G;
        if (byteBuffer2.remaining() == 0 && byteBuffer.remaining() > 0) {
            return -1;
        }
        int iMin = Math.min(byteBuffer.remaining(), byteBuffer2.remaining());
        byte[] bArr = new byte[iMin];
        byteBuffer2.get(bArr);
        byteBuffer.put(bArr);
        return iMin;
    }
}
