package com.google.android.gms.internal.pal;

import java.io.Serializable;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public abstract class r implements Iterable, Serializable {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final C2796q f23990H = new C2796q(J.f23561b);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f23991G;

    static {
        int i8 = AbstractC2756l.f23917a;
    }

    public static int n(int i8, int i9, int i10) {
        int i11 = i9 - i8;
        if ((i8 | i9 | i11 | (i10 - i9)) >= 0) {
            return i11;
        }
        if (i8 < 0) {
            throw new IndexOutOfBoundsException(A0.O.y("Beginning index: ", i8, " < 0"));
        }
        if (i9 < i8) {
            throw new IndexOutOfBoundsException(com.google.protobuf.U2.j("Beginning index larger than ending index: ", i8, ", ", i9));
        }
        throw new IndexOutOfBoundsException(com.google.protobuf.U2.j("End index: ", i9, " >= ", i10));
    }

    public static C2796q o(int i8, byte[] bArr, int i9) {
        n(i8, i8 + i9, bArr.length);
        byte[] bArr2 = new byte[i9];
        System.arraycopy(bArr, i8, bArr2, 0, i9);
        return new C2796q(bArr2);
    }

    public abstract byte b(int i8);

    public abstract byte c(int i8);

    public final int hashCode() {
        int i8 = this.f23991G;
        if (i8 != 0) {
            return i8;
        }
        int i9 = i();
        C2796q c2796q = (C2796q) this;
        int i10 = i9;
        for (int i11 = 0; i11 < i9; i11++) {
            i10 = (i10 * 31) + c2796q.f23982I[i11];
        }
        if (i10 == 0) {
            i10 = 1;
        }
        this.f23991G = i10;
        return i10;
    }

    public abstract int i();

    @Override // java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new C2764m(this);
    }

    public abstract void l(byte[] bArr, int i8);

    public final byte[] p() {
        int i8 = i();
        if (i8 == 0) {
            return J.f23561b;
        }
        byte[] bArr = new byte[i8];
        l(bArr, i8);
        return bArr;
    }

    public final String toString() {
        String strConcat;
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        int i8 = i();
        if (i() <= 50) {
            strConcat = AbstractC2864y4.n(this);
        } else {
            C2796q c2796q = (C2796q) this;
            int iN = n(0, 47, c2796q.i());
            strConcat = AbstractC2864y4.n(iN == 0 ? f23990H : new C2788p(c2796q.f23982I, iN)).concat("...");
        }
        StringBuilder sb = new StringBuilder("<ByteString@");
        sb.append(hexString);
        sb.append(" size=");
        sb.append(i8);
        sb.append(" contents=\"");
        return p000a.r.j(sb, strConcat, "\">");
    }
}
