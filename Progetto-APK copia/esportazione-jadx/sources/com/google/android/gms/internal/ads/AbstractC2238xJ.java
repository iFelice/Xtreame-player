package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.xJ, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2238xJ implements K3 {

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public static final C2342zJ f21869N = Q3.b.G(AbstractC2238xJ.class);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f21870G;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public ByteBuffer f21873J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public long f21874K;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public C1003Ye f21876M;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public long f21875L = -1;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public boolean f21872I = true;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public boolean f21871H = true;

    public AbstractC2238xJ(String str) {
        this.f21870G = str;
    }

    public final synchronized void a() {
        try {
            if (this.f21872I) {
                return;
            }
            try {
                C2342zJ c2342zJ = f21869N;
                String str = this.f21870G;
                c2342zJ.g0(str.length() != 0 ? "mem mapping ".concat(str) : new String("mem mapping "));
                C1003Ye c1003Ye = this.f21876M;
                long j8 = this.f21874K;
                long j9 = this.f21875L;
                int i8 = (int) j8;
                ByteBuffer byteBuffer = c1003Ye.f17625G;
                int iPosition = byteBuffer.position();
                byteBuffer.position(i8);
                ByteBuffer byteBufferSlice = byteBuffer.slice();
                byteBufferSlice.limit((int) j9);
                byteBuffer.position(iPosition);
                this.f21873J = byteBufferSlice;
                this.f21872I = true;
            } catch (IOException e8) {
                throw new RuntimeException(e8);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public abstract void b(ByteBuffer byteBuffer);

    public final synchronized void c() {
        try {
            a();
            C2342zJ c2342zJ = f21869N;
            String str = this.f21870G;
            c2342zJ.g0(str.length() != 0 ? "parsing details of ".concat(str) : new String("parsing details of "));
            ByteBuffer byteBuffer = this.f21873J;
            if (byteBuffer != null) {
                this.f21871H = true;
                byteBuffer.rewind();
                b(byteBuffer);
                if (byteBuffer.remaining() > 0) {
                    byteBuffer.slice();
                }
                this.f21873J = null;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.K3
    public final void k(C1003Ye c1003Ye, ByteBuffer byteBuffer, long j8, I3 i8) {
        this.f21874K = c1003Ye.E();
        byteBuffer.remaining();
        this.f21875L = j8;
        this.f21876M = c1003Ye;
        c1003Ye.f17625G.position((int) (c1003Ye.E() + j8));
        this.f21872I = false;
        this.f21871H = false;
        c();
    }
}
