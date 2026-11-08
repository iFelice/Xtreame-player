package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.ads.Cw;
import java.io.Serializable;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.i2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2576i2 implements Iterable, Serializable {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final C2582j2 f23165H = new C2582j2(AbstractC2666z2.f23417b);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f23166G;

    static {
        int i8 = AbstractC2552e2.f23119a;
    }

    public static int o(int i8, int i9, int i10) {
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

    public static C2582j2 p(int i8, byte[] bArr, int i9) {
        o(i8, i8 + i9, bArr.length);
        byte[] bArr2 = new byte[i9];
        System.arraycopy(bArr, i8, bArr2, 0, i9);
        return new C2582j2(bArr2);
    }

    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final int hashCode() {
        int i8 = this.f23166G;
        if (i8 != 0) {
            return i8;
        }
        int iN = n();
        C2582j2 c2582j2 = (C2582j2) this;
        int i9 = iN;
        for (int i10 = 0; i10 < iN; i10++) {
            i9 = (i9 * 31) + c2582j2.f23170I[i10];
        }
        if (i9 == 0) {
            i9 = 1;
        }
        this.f23166G = i9;
        return i9;
    }

    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final String toString() {
        String strConcat;
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        int iN = n();
        if (n() <= 50) {
            strConcat = Cw.O(this);
        } else {
            C2582j2 c2582j2 = (C2582j2) this;
            int iO = o(0, 47, c2582j2.n());
            strConcat = Cw.O(iO == 0 ? f23165H : new C2564g2(c2582j2.f23170I, iO)).concat("...");
        }
        StringBuilder sb = new StringBuilder("<ByteString@");
        sb.append(hexString);
        sb.append(" size=");
        sb.append(iN);
        sb.append(" contents=\"");
        return p000a.r.j(sb, strConcat, "\">");
    }

    public abstract byte i(int i8);

    @Override // java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new C2558f2(this);
    }

    public abstract byte l(int i8);

    public abstract int n();
}
