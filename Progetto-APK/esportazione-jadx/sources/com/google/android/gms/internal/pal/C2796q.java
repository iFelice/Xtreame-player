package com.google.android.gms.internal.pal;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.q, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public class C2796q extends r {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final byte[] f23982I;

    public C2796q(byte[] bArr) {
        this.f23991G = 0;
        bArr.getClass();
        this.f23982I = bArr;
    }

    @Override // com.google.android.gms.internal.pal.r
    public byte b(int i8) {
        return this.f23982I[i8];
    }

    @Override // com.google.android.gms.internal.pal.r
    public byte c(int i8) {
        return this.f23982I[i8];
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof r) || i() != ((r) obj).i()) {
            return false;
        }
        if (i() == 0) {
            return true;
        }
        if (!(obj instanceof C2796q)) {
            return obj.equals(this);
        }
        C2796q c2796q = (C2796q) obj;
        int i8 = this.f23991G;
        int i9 = c2796q.f23991G;
        if (i8 != 0 && i9 != 0 && i8 != i9) {
            return false;
        }
        int i10 = i();
        if (i10 > c2796q.i()) {
            throw new IllegalArgumentException("Length too large: " + i10 + i());
        }
        if (i10 > c2796q.i()) {
            throw new IllegalArgumentException(com.google.protobuf.U2.j("Ran off end of other: 0, ", i10, ", ", c2796q.i()));
        }
        int i11 = 0;
        int i12 = 0;
        while (i11 < i10) {
            if (this.f23982I[i11] != c2796q.f23982I[i12]) {
                return false;
            }
            i11++;
            i12++;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.pal.r
    public int i() {
        return this.f23982I.length;
    }

    @Override // com.google.android.gms.internal.pal.r
    public void l(byte[] bArr, int i8) {
        System.arraycopy(this.f23982I, 0, bArr, 0, i8);
    }
}
