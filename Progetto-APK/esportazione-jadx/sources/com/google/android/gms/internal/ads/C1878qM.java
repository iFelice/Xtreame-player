package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.qM, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1878qM extends AbstractC0763Hi {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f20566i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f20567j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f20568k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f20569l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f20570m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public byte[] f20571n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f20572o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f20573p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public byte[] f20574q;

    @Override // com.google.android.gms.internal.ads.InterfaceC2044ti
    public final void b(ByteBuffer byteBuffer) {
        int iLimit;
        int i8;
        int iPosition;
        while (byteBuffer.hasRemaining() && !this.f13779g.hasRemaining()) {
            if (this.f20568k != 0) {
                p113o3.r.M(this.f20572o < this.f20571n.length);
                int iLimit2 = byteBuffer.limit();
                int iPosition2 = byteBuffer.position() + 1;
                while (true) {
                    if (iPosition2 >= byteBuffer.limit()) {
                        iLimit = byteBuffer.limit();
                        break;
                    }
                    if (Math.abs((byteBuffer.get(iPosition2) << 8) | (byteBuffer.get(iPosition2 - 1) & 255)) > 1024) {
                        int i9 = this.f20566i;
                        iLimit = (iPosition2 / i9) * i9;
                        break;
                    }
                    iPosition2 += 2;
                }
                int iPosition3 = iLimit - byteBuffer.position();
                int i10 = this.f20572o;
                int i11 = this.f20573p;
                int i12 = i10 + i11;
                int length = this.f20571n.length;
                if (i12 < length) {
                    i8 = length - i12;
                } else {
                    i12 = i11 - (length - i10);
                    i8 = i10 - i12;
                }
                int iMin = Math.min(iPosition3, i8);
                byteBuffer.limit(byteBuffer.position() + iMin);
                byteBuffer.get(this.f20571n, i12, iMin);
                int i13 = this.f20573p + iMin;
                this.f20573p = i13;
                p113o3.r.M(i13 <= this.f20571n.length);
                boolean z7 = iLimit < iLimit2 && iPosition3 < i8;
                i(z7);
                if (z7) {
                    this.f20568k = 0;
                    this.f20570m = 0;
                }
                byteBuffer.limit(iLimit2);
            } else {
                int iLimit3 = byteBuffer.limit();
                byteBuffer.limit(Math.min(iLimit3, byteBuffer.position() + this.f20571n.length));
                int iLimit4 = byteBuffer.limit() - 1;
                while (true) {
                    if (iLimit4 < byteBuffer.position()) {
                        iPosition = byteBuffer.position();
                        break;
                    }
                    if (Math.abs((byteBuffer.get(iLimit4) << 8) | (byteBuffer.get(iLimit4 - 1) & 255)) > 1024) {
                        int i14 = this.f20566i;
                        iPosition = ((iLimit4 / i14) * i14) + i14;
                        break;
                    }
                    iLimit4 -= 2;
                }
                if (iPosition == byteBuffer.position()) {
                    this.f20568k = 1;
                } else {
                    byteBuffer.limit(Math.min(iPosition, byteBuffer.capacity()));
                    d(byteBuffer.remaining()).put(byteBuffer).flip();
                }
                byteBuffer.limit(iLimit3);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0763Hi
    public final C0936Th c(C0936Th c0936Th) throws C1267ei {
        if (c0936Th.f16701c == 2) {
            return c0936Th.f16699a == -1 ? C0936Th.f16698e : c0936Th;
        }
        throw new C1267ei(c0936Th);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0763Hi
    public final void e() {
        if (zzg()) {
            C0936Th c0936Th = this.f13774b;
            int i8 = c0936Th.f16700b;
            int i9 = i8 + i8;
            this.f20566i = i9;
            int i10 = ((((int) ((100000 * ((long) c0936Th.f16699a)) / 1000000)) / 2) / i9) * i9;
            int i11 = i10 + i10;
            if (this.f20571n.length != i11) {
                this.f20571n = new byte[i11];
                this.f20574q = new byte[i11];
            }
        }
        this.f20568k = 0;
        this.f20569l = 0L;
        this.f20570m = 0;
        this.f20572o = 0;
        this.f20573p = 0;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0763Hi
    public final void f() {
        if (this.f20573p > 0) {
            i(true);
            this.f20570m = 0;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0763Hi
    public final void g() {
        this.f20567j = false;
        byte[] bArr = Et.f13239f;
        this.f20571n = bArr;
        this.f20574q = bArr;
    }

    public final int h(int i8) {
        int length = ((((int) ((2000000 * ((long) this.f13774b.f16699a)) / 1000000)) - this.f20570m) * this.f20566i) - (this.f20571n.length >> 1);
        p113o3.r.M(length >= 0);
        int iMin = (int) Math.min((i8 * 0.2f) + 0.5f, length);
        int i9 = this.f20566i;
        return (iMin / i9) * i9;
    }

    public final void i(boolean z7) {
        int i8;
        int length;
        int i9 = this.f20573p;
        int length2 = this.f20571n.length;
        if (i9 != length2) {
            if (!z7) {
                return;
            } else {
                z7 = true;
            }
        }
        if (this.f20570m == 0) {
            if (z7) {
                j(i9, 3);
                length = i9;
            } else {
                p113o3.r.M(i9 >= (length2 >> 1));
                length = this.f20571n.length >> 1;
                j(length, 0);
            }
            i8 = length;
        } else {
            int i10 = length2 >> 1;
            int i11 = i9 - i10;
            if (z7) {
                int iH = h(i11) + (this.f20571n.length >> 1);
                j(iH, 2);
                int i12 = i10 + i11;
                i8 = iH;
                length = i12;
            } else {
                int iH2 = h(i11);
                j(iH2, 1);
                i8 = iH2;
                length = i11;
            }
        }
        boolean z8 = length % this.f20566i == 0;
        String strF = p000a.r.f("bytesConsumed is not aligned to frame size: %s", length);
        if (!z8) {
            throw new IllegalStateException(strF);
        }
        p113o3.r.M(i9 >= i8);
        this.f20573p -= length;
        int i13 = this.f20572o + length;
        this.f20572o = i13;
        this.f20572o = i13 % this.f20571n.length;
        int i14 = this.f20570m;
        int i15 = this.f20566i;
        this.f20570m = (i8 / i15) + i14;
        this.f20569l += (long) ((length - i8) / i15);
    }

    public final void j(int i8, int i9) {
        int i10;
        if (i8 == 0) {
            return;
        }
        p113o3.r.J(this.f20573p >= i8);
        if (i9 == 2) {
            int i11 = this.f20572o;
            int i12 = this.f20573p;
            int i13 = i11 + i12;
            byte[] bArr = this.f20571n;
            int length = bArr.length;
            if (i13 <= length) {
                System.arraycopy(bArr, i13 - i8, this.f20574q, 0, i8);
            } else {
                int i14 = i12 - (length - i11);
                if (i14 >= i8) {
                    System.arraycopy(bArr, i14 - i8, this.f20574q, 0, i8);
                } else {
                    int i15 = i8 - i14;
                    System.arraycopy(bArr, length - i15, this.f20574q, 0, i15);
                    System.arraycopy(this.f20571n, 0, this.f20574q, i15, i14);
                }
            }
        } else {
            int i16 = this.f20572o;
            int i17 = i16 + i8;
            byte[] bArr2 = this.f20571n;
            int length2 = bArr2.length;
            if (i17 <= length2) {
                System.arraycopy(bArr2, i16, this.f20574q, 0, i8);
            } else {
                int i18 = length2 - i16;
                System.arraycopy(bArr2, i16, this.f20574q, 0, i18);
                System.arraycopy(this.f20571n, 0, this.f20574q, i18, i8 - i18);
            }
        }
        p113o3.r.L(i8 % this.f20566i == 0, "sizeToOutput is not aligned to frame size: " + i8);
        p113o3.r.M(this.f20572o < this.f20571n.length);
        byte[] bArr3 = this.f20574q;
        p113o3.r.L(i8 % this.f20566i == 0, p000a.r.f("byteOutput size is not aligned to frame size ", i8));
        if (i9 != 3) {
            for (int i19 = 0; i19 < i8; i19 += 2) {
                int i20 = i19 + 1;
                int i21 = (bArr3[i20] << 8) | (bArr3[i19] & 255);
                if (i9 == 0) {
                    i10 = ((((i19 * 1000) / (i8 - 1)) * (-90)) / 1000) + 100;
                } else {
                    i10 = 10;
                    if (i9 == 2) {
                        i10 = 10 + (((90000 * i19) / (i8 - 1)) / 1000);
                    }
                }
                int i22 = (i21 * i10) / 100;
                if (i22 >= 32767) {
                    bArr3[i19] = -1;
                    bArr3[i20] = 127;
                } else if (i22 <= -32768) {
                    bArr3[i19] = 0;
                    bArr3[i20] = -128;
                } else {
                    bArr3[i19] = (byte) (i22 & 255);
                    bArr3[i20] = (byte) (i22 >> 8);
                }
            }
        }
        d(i8).put(bArr3, 0, i8).flip();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0763Hi, com.google.android.gms.internal.ads.InterfaceC2044ti
    public final boolean zzg() {
        return super.zzg() && this.f20567j;
    }
}
