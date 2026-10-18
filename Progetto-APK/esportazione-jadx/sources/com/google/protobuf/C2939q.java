package com.google.protobuf;

import java.nio.charset.Charset;

/* JADX INFO: renamed from: com.google.protobuf.q, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public class C2939q extends AbstractC2935p {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final byte[] f24490J;

    public C2939q(byte[] bArr) {
        bArr.getClass();
        this.f24490J = bArr;
    }

    @Override // com.google.protobuf.r
    public byte b(int i8) {
        return this.f24490J[i8];
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof r) || size() != ((r) obj).size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        if (!(obj instanceof C2939q)) {
            return obj.equals(this);
        }
        C2939q c2939q = (C2939q) obj;
        int i8 = this.f24493G;
        int i9 = c2939q.f24493G;
        if (i8 != 0 && i9 != 0 && i8 != i9) {
            return false;
        }
        int size = size();
        if (size > c2939q.size()) {
            throw new IllegalArgumentException("Length too large: " + size + size());
        }
        if (size > c2939q.size()) {
            StringBuilder sbK = p000a.r.k("Ran off end of other: 0, ", size, ", ");
            sbK.append(c2939q.size());
            throw new IllegalArgumentException(sbK.toString());
        }
        int iV = v() + size;
        int iV2 = v();
        int iV3 = c2939q.v();
        while (iV2 < iV) {
            if (this.f24490J[iV2] != c2939q.f24490J[iV3]) {
                return false;
            }
            iV2++;
            iV3++;
        }
        return true;
    }

    @Override // com.google.protobuf.r
    public byte n(int i8) {
        return this.f24490J[i8];
    }

    @Override // com.google.protobuf.r
    public final boolean o() {
        int iV = v();
        return K2.f24269a.b0(this.f24490J, iV, size() + iV) == 0;
    }

    @Override // com.google.protobuf.r
    public final AbstractC2961w p() {
        return AbstractC2961w.h(this.f24490J, v(), size(), true);
    }

    @Override // com.google.protobuf.r
    public final int q(int i8, int i9) {
        int iV = v();
        Charset charset = AbstractC2960v1.f24524a;
        for (int i10 = iV; i10 < iV + i9; i10++) {
            i8 = (i8 * 31) + this.f24490J[i10];
        }
        return i8;
    }

    @Override // com.google.protobuf.r
    public final r r(int i8) {
        int iC = r.c(0, i8, size());
        if (iC == 0) {
            return r.f24491H;
        }
        return new C2931o(this.f24490J, v(), iC);
    }

    @Override // com.google.protobuf.r
    public final String s(Charset charset) {
        return new String(this.f24490J, v(), size(), charset);
    }

    @Override // com.google.protobuf.r
    public int size() {
        return this.f24490J.length;
    }

    @Override // com.google.protobuf.r
    public final void u(AbstractC2907i abstractC2907i) {
        abstractC2907i.X(v(), this.f24490J, size());
    }

    public int v() {
        return 0;
    }
}
