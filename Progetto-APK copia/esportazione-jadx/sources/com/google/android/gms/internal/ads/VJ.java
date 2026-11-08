package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class VJ extends p125q0.e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public C1804p0 f16991c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final p171w0.c f16992d = new p171w0.c(1);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ByteBuffer f16993e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f16994f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f16995g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ByteBuffer f16996h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f16997i;

    static {
        R7.a("media3.decoder");
    }

    public VJ(int i8) {
        this.f16997i = i8;
    }

    public void e() {
        this.f29448b = 0;
        ByteBuffer byteBuffer = this.f16993e;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
        ByteBuffer byteBuffer2 = this.f16996h;
        if (byteBuffer2 != null) {
            byteBuffer2.clear();
        }
        this.f16994f = false;
    }

    public final void f(int i8) {
        ByteBuffer byteBuffer = this.f16993e;
        if (byteBuffer == null) {
            this.f16993e = h(i8);
            return;
        }
        int iCapacity = byteBuffer.capacity();
        int iPosition = byteBuffer.position();
        int i9 = i8 + iPosition;
        if (iCapacity >= i9) {
            this.f16993e = byteBuffer;
            return;
        }
        ByteBuffer byteBufferH = h(i9);
        byteBufferH.order(byteBuffer.order());
        if (iPosition > 0) {
            byteBuffer.flip();
            byteBufferH.put(byteBuffer);
        }
        this.f16993e = byteBufferH;
    }

    public final void g() {
        ByteBuffer byteBuffer = this.f16993e;
        if (byteBuffer != null) {
            byteBuffer.flip();
        }
        ByteBuffer byteBuffer2 = this.f16996h;
        if (byteBuffer2 != null) {
            byteBuffer2.flip();
        }
    }

    public final ByteBuffer h(int i8) {
        int i9 = this.f16997i;
        if (i9 == 1) {
            return ByteBuffer.allocate(i8);
        }
        if (i9 == 2) {
            return ByteBuffer.allocateDirect(i8);
        }
        ByteBuffer byteBuffer = this.f16993e;
        throw new UJ("Buffer too small (" + (byteBuffer == null ? 0 : byteBuffer.capacity()) + " < " + i8 + ")");
    }
}
