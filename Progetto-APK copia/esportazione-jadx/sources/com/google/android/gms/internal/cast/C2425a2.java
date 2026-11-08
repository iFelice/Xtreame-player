package com.google.android.gms.internal.cast;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.a2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public class C2425a2 extends Z1 {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final byte[] f22626I;

    public C2425a2(byte[] bArr) {
        this.f22596G = 0;
        bArr.getClass();
        this.f22626I = bArr;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Z1) || n() != ((Z1) obj).n()) {
            return false;
        }
        if (n() == 0) {
            return true;
        }
        if (!(obj instanceof C2425a2)) {
            return obj.equals(this);
        }
        C2425a2 c2425a2 = (C2425a2) obj;
        int i8 = this.f22596G;
        int i9 = c2425a2.f22596G;
        if (i8 != 0 && i9 != 0 && i8 != i9) {
            return false;
        }
        int iN = n();
        if (iN > c2425a2.n()) {
            throw new IllegalArgumentException("Length too large: " + iN + n());
        }
        if (iN > c2425a2.n()) {
            throw new IllegalArgumentException(com.google.protobuf.U2.j("Ran off end of other: 0, ", iN, ", ", c2425a2.n()));
        }
        int i10 = 0;
        int i11 = 0;
        while (i10 < iN) {
            if (this.f22626I[i10] != c2425a2.f22626I[i11]) {
                return false;
            }
            i10++;
            i11++;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.cast.Z1
    public byte i(int i8) {
        return this.f22626I[i8];
    }

    @Override // com.google.android.gms.internal.cast.Z1
    public byte l(int i8) {
        return this.f22626I[i8];
    }

    @Override // com.google.android.gms.internal.cast.Z1
    public int n() {
        return this.f22626I.length;
    }
}
