package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public final class N3 extends AbstractC2238xJ {

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public int f14869O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public Date f14870P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public Date f14871Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public long f14872R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public long f14873S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public double f14874T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public float f14875U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public DJ f14876V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public long f14877W;

    @Override // com.google.android.gms.internal.ads.AbstractC2238xJ
    public final void b(ByteBuffer byteBuffer) {
        int i8 = byteBuffer.get();
        if (i8 < 0) {
            i8 += 256;
        }
        this.f14869O = i8;
        byteBuffer.get();
        byteBuffer.get();
        byteBuffer.get();
        if (!this.f21871H) {
            c();
        }
        if (this.f14869O == 1) {
            this.f14870P = Cw.S(U2.m.q(byteBuffer));
            this.f14871Q = Cw.S(U2.m.q(byteBuffer));
            this.f14872R = U2.m.o(byteBuffer);
            this.f14873S = U2.m.q(byteBuffer);
        } else {
            this.f14870P = Cw.S(U2.m.o(byteBuffer));
            this.f14871Q = Cw.S(U2.m.o(byteBuffer));
            this.f14872R = U2.m.o(byteBuffer);
            this.f14873S = U2.m.o(byteBuffer);
        }
        this.f14874T = U2.m.g(byteBuffer);
        byte[] bArr = new byte[2];
        byteBuffer.get(bArr);
        this.f14875U = ((short) ((bArr[1] & 255) | ((short) (65280 & (bArr[0] << 8))))) / 256.0f;
        byteBuffer.get();
        byteBuffer.get();
        U2.m.o(byteBuffer);
        U2.m.o(byteBuffer);
        this.f14876V = new DJ(U2.m.g(byteBuffer), U2.m.g(byteBuffer), U2.m.g(byteBuffer), U2.m.g(byteBuffer), U2.m.c(byteBuffer), U2.m.c(byteBuffer), U2.m.c(byteBuffer), U2.m.g(byteBuffer), U2.m.g(byteBuffer));
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        this.f14877W = U2.m.o(byteBuffer);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("MovieHeaderBox[creationTime=");
        sb.append(this.f14870P);
        sb.append(";modificationTime=");
        sb.append(this.f14871Q);
        sb.append(";timescale=");
        sb.append(this.f14872R);
        sb.append(";duration=");
        sb.append(this.f14873S);
        sb.append(";rate=");
        sb.append(this.f14874T);
        sb.append(";volume=");
        sb.append(this.f14875U);
        sb.append(";matrix=");
        sb.append(this.f14876V);
        sb.append(";nextTrackId=");
        return p000a.r.i(sb, this.f14877W, "]");
    }
}
