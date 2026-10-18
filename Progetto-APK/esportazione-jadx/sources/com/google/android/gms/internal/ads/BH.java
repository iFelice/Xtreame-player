package com.google.android.gms.internal.ads;

import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class BH extends InputStream {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public Iterator f12305G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public ByteBuffer f12306H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f12307I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f12308J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public int f12309K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public boolean f12310L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public byte[] f12311M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public int f12312N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public long f12313O;

    public final boolean E() {
        this.f12308J++;
        Iterator it = this.f12305G;
        if (!it.hasNext()) {
            return false;
        }
        ByteBuffer byteBuffer = (ByteBuffer) it.next();
        this.f12306H = byteBuffer;
        this.f12309K = byteBuffer.position();
        if (this.f12306H.hasArray()) {
            this.f12310L = true;
            this.f12311M = this.f12306H.array();
            this.f12312N = this.f12306H.arrayOffset();
        } else {
            this.f12310L = false;
            this.f12313O = AbstractC1718nI.h(this.f12306H);
            this.f12311M = null;
        }
        return true;
    }

    public final void k(int i8) {
        int i9 = this.f12309K + i8;
        this.f12309K = i9;
        if (i9 == this.f12306H.limit()) {
            E();
        }
    }

    @Override // java.io.InputStream
    public final int read() {
        if (this.f12308J == this.f12307I) {
            return -1;
        }
        if (this.f12310L) {
            int i8 = this.f12311M[this.f12309K + this.f12312N] & 255;
            k(1);
            return i8;
        }
        int iJ = AbstractC1718nI.f20155c.J(((long) this.f12309K) + this.f12313O) & 255;
        k(1);
        return iJ;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i8, int i9) {
        if (this.f12308J == this.f12307I) {
            return -1;
        }
        int iLimit = this.f12306H.limit();
        int i10 = this.f12309K;
        int i11 = iLimit - i10;
        if (i9 > i11) {
            i9 = i11;
        }
        if (this.f12310L) {
            System.arraycopy(this.f12311M, i10 + this.f12312N, bArr, i8, i9);
            k(i9);
        } else {
            int iPosition = this.f12306H.position();
            this.f12306H.position(this.f12309K);
            this.f12306H.get(bArr, i8, i9);
            this.f12306H.position(iPosition);
            k(i9);
        }
        return i9;
    }
}
