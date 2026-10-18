package com.google.android.gms.internal.cast;

import com.google.android.gms.internal.ads.Cw;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public abstract class Z1 implements Iterable, Serializable {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final C2425a2 f22595H = new C2425a2(AbstractC2481o2.f22764b);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f22596G;

    static {
        int i8 = W1.f22548a;
    }

    public static void o(int i8) {
        if (((i8 - 47) | 47) < 0) {
            throw new IndexOutOfBoundsException(p000a.r.f("End index: 47 >= ", i8));
        }
    }

    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final int hashCode() {
        int i8 = this.f22596G;
        if (i8 != 0) {
            return i8;
        }
        int iN = n();
        C2425a2 c2425a2 = (C2425a2) this;
        Charset charset = AbstractC2481o2.f22763a;
        int i9 = iN;
        for (int i10 = 0; i10 < iN; i10++) {
            i9 = (i9 * 31) + c2425a2.f22626I[i10];
        }
        if (i9 == 0) {
            i9 = 1;
        }
        this.f22596G = i9;
        return i9;
    }

    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final String toString() {
        String strConcat;
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        int iN = n();
        if (n() <= 50) {
            strConcat = Cw.N(this);
        } else {
            C2425a2 c2425a2 = (C2425a2) this;
            o(c2425a2.n());
            strConcat = Cw.N(new Y1(c2425a2.f22626I)).concat("...");
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
        return new X1(this);
    }

    public abstract byte l(int i8);

    public abstract int n();
}
