package com.google.protobuf;

import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Locale;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes2.dex */
public abstract class r implements Iterable, Serializable {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final C2939q f24491H = new C2939q(AbstractC2960v1.f24525b);

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final C2927n f24492I;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f24493G;

    static {
        int i8 = 0;
        f24492I = AbstractC2887d.a() ? new C2927n(1, i8) : new C2927n(i8, i8);
    }

    public static int c(int i8, int i9, int i10) {
        int i11 = i9 - i8;
        if ((i8 | i9 | i11 | (i10 - i9)) >= 0) {
            return i11;
        }
        if (i8 < 0) {
            throw new IndexOutOfBoundsException(A0.O.y("Beginning index: ", i8, " < 0"));
        }
        if (i9 < i8) {
            throw new IndexOutOfBoundsException(U2.j("Beginning index larger than ending index: ", i8, ", ", i9));
        }
        throw new IndexOutOfBoundsException(U2.j("End index: ", i9, " >= ", i10));
    }

    public static C2939q i(int i8, byte[] bArr, int i9) {
        byte[] bArrCopyOfRange;
        int i10 = i8 + i9;
        c(i8, i10, bArr.length);
        switch (f24492I.f24478G) {
            case 0:
                bArrCopyOfRange = Arrays.copyOfRange(bArr, i8, i10);
                break;
            default:
                bArrCopyOfRange = new byte[i9];
                System.arraycopy(bArr, i8, bArrCopyOfRange, 0, i9);
                break;
        }
        return new C2939q(bArrCopyOfRange);
    }

    public static C2939q l(String str) {
        return new C2939q(str.getBytes(AbstractC2960v1.f24524a));
    }

    public abstract byte b(int i8);

    public final int hashCode() {
        int iQ = this.f24493G;
        if (iQ == 0) {
            int size = size();
            iQ = q(size, size);
            if (iQ == 0) {
                iQ = 1;
            }
            this.f24493G = iQ;
        }
        return iQ;
    }

    public abstract byte n(int i8);

    public abstract boolean o();

    public abstract AbstractC2961w p();

    public abstract int q(int i8, int i9);

    public abstract r r(int i8);

    public abstract String s(Charset charset);

    public abstract int size();

    public final String t() {
        return size() == 0 ? HttpUrl.FRAGMENT_ENCODE_SET : s(AbstractC2960v1.f24524a);
    }

    public final String toString() {
        String strR;
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        int size = size();
        if (size() <= 50) {
            strR = AbstractC2907i.R(this);
        } else {
            strR = AbstractC2907i.R(r(47)) + "...";
        }
        StringBuilder sb = new StringBuilder("<ByteString@");
        sb.append(hexString);
        sb.append(" size=");
        sb.append(size);
        sb.append(" contents=\"");
        return p000a.r.j(sb, strR, "\">");
    }

    public abstract void u(AbstractC2907i abstractC2907i);
}
