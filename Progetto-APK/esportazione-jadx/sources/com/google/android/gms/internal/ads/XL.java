package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class XL extends AbstractC0763Hi {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[] f17409i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int[] f17410j;

    @Override // com.google.android.gms.internal.ads.InterfaceC2044ti
    public final void b(ByteBuffer byteBuffer) {
        int[] iArr = this.f17410j;
        iArr.getClass();
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        ByteBuffer byteBufferD = d(((iLimit - iPosition) / this.f13774b.f16702d) * this.f13775c.f16702d);
        while (iPosition < iLimit) {
            for (int i8 : iArr) {
                byteBufferD.putShort(byteBuffer.getShort(i8 + i8 + iPosition));
            }
            iPosition += this.f13774b.f16702d;
        }
        byteBuffer.position(iLimit);
        byteBufferD.flip();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0763Hi
    public final C0936Th c(C0936Th c0936Th) throws C1267ei {
        int[] iArr = this.f17409i;
        if (iArr == null) {
            return C0936Th.f16698e;
        }
        if (c0936Th.f16701c != 2) {
            throw new C1267ei(c0936Th);
        }
        int length = iArr.length;
        int i8 = c0936Th.f16700b;
        boolean z7 = i8 != length;
        int i9 = 0;
        while (true) {
            int length2 = iArr.length;
            if (i9 >= length2) {
                return z7 ? new C0936Th(c0936Th.f16699a, length2, 2) : C0936Th.f16698e;
            }
            int i10 = iArr[i9];
            if (i10 >= i8) {
                throw new C1267ei(c0936Th);
            }
            z7 |= i10 != i9;
            i9++;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0763Hi
    public final void e() {
        this.f17410j = this.f17409i;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0763Hi
    public final void g() {
        this.f17410j = null;
        this.f17409i = null;
    }
}
