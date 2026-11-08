package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.sM, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1981sM extends AbstractC0763Hi {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f20887i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f20888j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f20889k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f20890l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public byte[] f20891m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f20892n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public long f20893o;

    @Override // com.google.android.gms.internal.ads.InterfaceC2044ti
    public final void b(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        int i8 = iLimit - iPosition;
        if (i8 == 0) {
            return;
        }
        int iMin = Math.min(i8, this.f20890l);
        this.f20893o += (long) (iMin / this.f13774b.f16702d);
        this.f20890l -= iMin;
        byteBuffer.position(iPosition + iMin);
        if (this.f20890l <= 0) {
            int i9 = i8 - iMin;
            int length = (this.f20892n + i9) - this.f20891m.length;
            ByteBuffer byteBufferD = d(length);
            int iMax = Math.max(0, Math.min(length, this.f20892n));
            byteBufferD.put(this.f20891m, 0, iMax);
            int iMax2 = Math.max(0, Math.min(length - iMax, i9));
            byteBuffer.limit(byteBuffer.position() + iMax2);
            byteBufferD.put(byteBuffer);
            byteBuffer.limit(iLimit);
            int i10 = i9 - iMax2;
            int i11 = this.f20892n - iMax;
            this.f20892n = i11;
            byte[] bArr = this.f20891m;
            System.arraycopy(bArr, iMax, bArr, 0, i11);
            byteBuffer.get(this.f20891m, this.f20892n, i10);
            this.f20892n += i10;
            byteBufferD.flip();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0763Hi
    public final C0936Th c(C0936Th c0936Th) throws C1267ei {
        if (c0936Th.f16701c != 2) {
            throw new C1267ei(c0936Th);
        }
        this.f20889k = true;
        return (this.f20887i == 0 && this.f20888j == 0) ? C0936Th.f16698e : c0936Th;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0763Hi
    public final void e() {
        if (this.f20889k) {
            this.f20889k = false;
            int i8 = this.f20888j;
            int i9 = this.f13774b.f16702d;
            this.f20891m = new byte[i8 * i9];
            this.f20890l = this.f20887i * i9;
        }
        this.f20892n = 0;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0763Hi
    public final void f() {
        if (this.f20889k) {
            int i8 = this.f20892n;
            if (i8 > 0) {
                this.f20893o += (long) (i8 / this.f13774b.f16702d);
            }
            this.f20892n = 0;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0763Hi
    public final void g() {
        this.f20891m = Et.f13239f;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0763Hi, com.google.android.gms.internal.ads.InterfaceC2044ti
    public final ByteBuffer zzb() {
        int i8;
        if (super.zzh() && (i8 = this.f20892n) > 0) {
            d(i8).put(this.f20891m, 0, this.f20892n).flip();
            this.f20892n = 0;
        }
        return super.zzb();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0763Hi, com.google.android.gms.internal.ads.InterfaceC2044ti
    public final boolean zzh() {
        return super.zzh() && this.f20892n == 0;
    }
}
