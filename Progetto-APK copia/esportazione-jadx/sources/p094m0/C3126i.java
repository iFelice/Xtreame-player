package p094m0;

import com.google.protobuf.U2;
import java.util.Arrays;
import p000a.r;
import p117p0.M;

/* JADX INFO: renamed from: m0.i, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3126i {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final C3126i f26870h = new C3126i(1, 2, 3, null, -1, -1);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final C3126i f26871i = new C3126i(1, 1, 2, null, -1, -1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f26872a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f26873b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f26874c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final byte[] f26875d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f26876e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f26877f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f26878g;

    static {
        U2.r(0, 1, 2, 3, 4);
        M.L(5);
    }

    public C3126i(int i8, int i9, int i10, byte[] bArr, int i11, int i12) {
        this.f26872a = i8;
        this.f26873b = i9;
        this.f26874c = i10;
        this.f26875d = bArr;
        this.f26876e = i11;
        this.f26877f = i12;
    }

    public static String b(int i8) {
        if (i8 == -1) {
            return "Unset color range";
        }
        if (i8 != 1) {
            return i8 != 2 ? r.f("Undefined color range ", i8) : "Limited range";
        }
        return "Full range";
    }

    public static String c(int i8) {
        if (i8 == -1) {
            return "Unset color space";
        }
        if (i8 == 6) {
            return "BT2020";
        }
        if (i8 != 1) {
            return i8 != 2 ? r.f("Undefined color space ", i8) : "BT601";
        }
        return "BT709";
    }

    public static String d(int i8) {
        if (i8 == -1) {
            return "Unset color transfer";
        }
        if (i8 == 10) {
            return "Gamma 2.2";
        }
        if (i8 == 1) {
            return "Linear";
        }
        if (i8 == 2) {
            return "sRGB";
        }
        if (i8 == 3) {
            return "SDR SMPTE 170M";
        }
        if (i8 != 6) {
            return i8 != 7 ? r.f("Undefined color transfer ", i8) : "HLG";
        }
        return "ST2084 PQ";
    }

    public static boolean f(C3126i c3126i) {
        int i8;
        int i9;
        int i10;
        int i11;
        if (c3126i == null) {
            return true;
        }
        int i12 = c3126i.f26872a;
        return (i12 == -1 || i12 == 1 || i12 == 2) && ((i8 = c3126i.f26873b) == -1 || i8 == 2) && (((i9 = c3126i.f26874c) == -1 || i9 == 3) && c3126i.f26875d == null && (((i10 = c3126i.f26877f) == -1 || i10 == 8) && ((i11 = c3126i.f26876e) == -1 || i11 == 8)));
    }

    public static boolean g(C3126i c3126i) {
        int i8;
        return c3126i != null && ((i8 = c3126i.f26874c) == 7 || i8 == 6);
    }

    public static int h(int i8) {
        if (i8 == 1) {
            return 1;
        }
        if (i8 != 9) {
            return (i8 == 4 || i8 == 5 || i8 == 6 || i8 == 7) ? 2 : -1;
        }
        return 6;
    }

    public static int i(int i8) {
        if (i8 == 1) {
            return 3;
        }
        if (i8 == 4) {
            return 10;
        }
        if (i8 == 13) {
            return 2;
        }
        if (i8 == 16) {
            return 6;
        }
        if (i8 != 18) {
            return (i8 == 6 || i8 == 7) ? 3 : -1;
        }
        return 7;
    }

    public final C3125h a() {
        C3125h c3125h = new C3125h();
        c3125h.f26862a = this.f26872a;
        c3125h.f26863b = this.f26873b;
        c3125h.f26864c = this.f26874c;
        c3125h.f26867f = this.f26875d;
        c3125h.f26865d = this.f26876e;
        c3125h.f26866e = this.f26877f;
        return c3125h;
    }

    public final boolean e() {
        return (this.f26872a == -1 || this.f26873b == -1 || this.f26874c == -1) ? false : true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C3126i.class != obj.getClass()) {
            return false;
        }
        C3126i c3126i = (C3126i) obj;
        return this.f26872a == c3126i.f26872a && this.f26873b == c3126i.f26873b && this.f26874c == c3126i.f26874c && Arrays.equals(this.f26875d, c3126i.f26875d) && this.f26876e == c3126i.f26876e && this.f26877f == c3126i.f26877f;
    }

    public final int hashCode() {
        if (this.f26878g == 0) {
            this.f26878g = ((((Arrays.hashCode(this.f26875d) + ((((((527 + this.f26872a) * 31) + this.f26873b) * 31) + this.f26874c) * 31)) * 31) + this.f26876e) * 31) + this.f26877f;
        }
        return this.f26878g;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("ColorInfo(");
        sb.append(c(this.f26872a));
        sb.append(", ");
        sb.append(b(this.f26873b));
        sb.append(", ");
        sb.append(d(this.f26874c));
        sb.append(", ");
        sb.append(this.f26875d != null);
        sb.append(", ");
        String str2 = "NA";
        int i8 = this.f26876e;
        if (i8 != -1) {
            str = i8 + "bit Luma";
        } else {
            str = "NA";
        }
        sb.append(str);
        sb.append(", ");
        int i9 = this.f26877f;
        if (i9 != -1) {
            str2 = i9 + "bit Chroma";
        }
        return r.j(sb, str2, ")");
    }
}
