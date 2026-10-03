package p180x1;

import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import com.google.android.gms.internal.ads.AbstractC2073uA;
import com.google.android.gms.internal.ads.AbstractC2113uz;
import com.google.android.gms.internal.ads.C1063ak;
import com.google.android.gms.internal.ads.C1534jr;
import com.google.android.gms.internal.ads.C1969sA;
import com.google.android.gms.internal.ads.PA;
import com.google.android.gms.internal.ads.S1;
import com.google.android.gms.internal.ads.W1;
import com.google.android.gms.internal.ads.Zo;
import com.google.android.gms.internal.measurement.H1;
import com.google.protobuf.U2;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.List;
import okhttp3.HttpUrl;
import p000a.r;
import p110o0.b;
import p117p0.E;
import p117p0.InterfaceC3172j;
import p117p0.M;
import p117p0.x;
import p126q1.d;
import p126q1.l;
import p126q1.m;
import z4.F;
import z4.H;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final class a implements m, W1 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final boolean f31185G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f31186H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f31187I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final String f31188J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final float f31189K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final int f31190L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final Object f31191M;

    public a(int i8, List list) {
        boolean z7;
        if (i8 == 1) {
            this.f31191M = new C1534jr();
            if (list.size() != 1 || (((byte[]) list.get(0)).length != 48 && ((byte[]) list.get(0)).length != 53)) {
                this.f31186H = 0;
                this.f31187I = -1;
                this.f31188J = "sans-serif";
                this.f31185G = false;
                this.f31189K = 0.85f;
                this.f31190L = -1;
                return;
            }
            byte[] bArr = (byte[]) list.get(0);
            this.f31186H = bArr[24];
            this.f31187I = ((bArr[26] & 255) << 24) | ((bArr[27] & 255) << 16) | ((bArr[28] & 255) << 8) | (bArr[29] & 255);
            this.f31188J = true != "Serif".equals(new String(bArr, 43, bArr.length + (-43), StandardCharsets.UTF_8)) ? "sans-serif" : "serif";
            int i9 = bArr[25] * 20;
            this.f31190L = i9;
            z7 = (bArr[0] & 32) != 0;
            this.f31185G = z7;
            this.f31189K = z7 ? Math.max(0.0f, Math.min(((bArr[11] & 255) | ((bArr[10] & 255) << 8)) / i9, 0.95f)) : 0.85f;
            return;
        }
        this.f31191M = new E();
        if (list.size() != 1 || (((byte[]) list.get(0)).length != 48 && ((byte[]) list.get(0)).length != 53)) {
            this.f31186H = 0;
            this.f31187I = -1;
            this.f31188J = "sans-serif";
            this.f31185G = false;
            this.f31189K = 0.85f;
            this.f31190L = -1;
            return;
        }
        byte[] bArr2 = (byte[]) list.get(0);
        this.f31186H = bArr2[24];
        this.f31187I = ((bArr2[26] & 255) << 24) | ((bArr2[27] & 255) << 16) | ((bArr2[28] & 255) << 8) | (bArr2[29] & 255);
        this.f31188J = "Serif".equals(new String(bArr2, 43, bArr2.length - 43, StandardCharsets.UTF_8)) ? "serif" : "sans-serif";
        int i10 = bArr2[25] * 20;
        this.f31190L = i10;
        z7 = (bArr2[0] & 32) != 0;
        this.f31185G = z7;
        if (z7) {
            this.f31189K = M.h(((bArr2[11] & 255) | ((bArr2[10] & 255) << 8)) / i10, 0.0f, 0.95f);
        } else {
            this.f31189K = 0.85f;
        }
    }

    public static void e(SpannableStringBuilder spannableStringBuilder, int i8, int i9, int i10, int i11, int i12) {
        if (i8 != i9) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan((i8 >>> 8) | ((i8 & 255) << 24)), i10, i11, i12 | 33);
        }
    }

    public static void f(SpannableStringBuilder spannableStringBuilder, int i8, int i9, int i10, int i11, int i12) {
        if (i8 != i9) {
            int i13 = i12 | 33;
            boolean z7 = (i8 & 1) != 0;
            boolean z8 = (i8 & 2) != 0;
            if (z7) {
                if (z8) {
                    spannableStringBuilder.setSpan(new StyleSpan(3), i10, i11, i13);
                } else {
                    spannableStringBuilder.setSpan(new StyleSpan(1), i10, i11, i13);
                }
            } else if (z8) {
                spannableStringBuilder.setSpan(new StyleSpan(2), i10, i11, i13);
            }
            boolean z9 = (i8 & 4) != 0;
            if (z9) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), i10, i11, i13);
            }
            if (z9 || z7 || z8) {
                return;
            }
            spannableStringBuilder.setSpan(new StyleSpan(0), i10, i11, i13);
        }
    }

    public static void h(SpannableStringBuilder spannableStringBuilder, int i8, int i9, int i10, int i11, int i12) {
        if (i8 != i9) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan((i8 >>> 8) | ((i8 & 255) << 24)), i10, i11, i12 | 33);
        }
    }

    public static void i(SpannableStringBuilder spannableStringBuilder, int i8, int i9, int i10, int i11, int i12) {
        if (i8 != i9) {
            int i13 = i12 | 33;
            int i14 = i8 & 1;
            int i15 = i8 & 2;
            boolean z7 = true;
            if (i14 != 0) {
                if (i15 != 0) {
                    spannableStringBuilder.setSpan(new StyleSpan(3), i10, i11, i13);
                } else {
                    spannableStringBuilder.setSpan(new StyleSpan(1), i10, i11, i13);
                    z7 = false;
                }
            } else if (i15 != 0) {
                spannableStringBuilder.setSpan(new StyleSpan(2), i10, i11, i13);
            } else {
                z7 = false;
            }
            if ((i8 & 4) != 0) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), i10, i11, i13);
            } else {
                if (i14 != 0 || z7) {
                    return;
                }
                spannableStringBuilder.setSpan(new StyleSpan(0), i10, i11, i13);
            }
        }
    }

    @Override // p126q1.m
    public final void b(byte[] bArr, int i8, int i9, l lVar, InterfaceC3172j interfaceC3172j) {
        String strX;
        E e8 = (E) this.f31191M;
        e8.J(i8 + i9, bArr);
        e8.L(i8);
        int i10 = 1;
        int i11 = 2;
        H1.d(e8.a() >= 2);
        int iF = e8.F();
        if (iF == 0) {
            strX = HttpUrl.FRAGMENT_ENCODE_SET;
        } else {
            int i12 = e8.f28036b;
            Charset charsetH = e8.H();
            int i13 = iF - (e8.f28036b - i12);
            if (charsetH == null) {
                charsetH = StandardCharsets.UTF_8;
            }
            strX = e8.x(i13, charsetH);
        }
        if (strX.isEmpty()) {
            F f8 = H.f31804H;
            interfaceC3172j.accept(new p126q1.a(d0.f31844K, -9223372036854775807L, -9223372036854775807L));
            return;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(strX);
        f(spannableStringBuilder, this.f31186H, 0, 0, spannableStringBuilder.length(), 16711680);
        e(spannableStringBuilder, this.f31187I, -1, 0, spannableStringBuilder.length(), 16711680);
        int length = spannableStringBuilder.length();
        String str = this.f31188J;
        if (str != "sans-serif") {
            spannableStringBuilder.setSpan(new TypefaceSpan(str), 0, length, 16711713);
        }
        float fH = this.f31189K;
        while (e8.a() >= 8) {
            int i14 = e8.f28036b;
            int iL = e8.l();
            int iL2 = e8.l();
            if (iL2 == 1937013100) {
                H1.d(e8.a() >= i11);
                int iF2 = e8.F();
                int i15 = 0;
                while (i15 < iF2) {
                    H1.d(e8.a() >= 12);
                    int iF3 = e8.F();
                    int iF4 = e8.F();
                    e8.M(i11);
                    int iZ = e8.z();
                    e8.M(i10);
                    int iL3 = e8.l();
                    if (iF4 > spannableStringBuilder.length()) {
                        StringBuilder sbK = r.k("Truncating styl end (", iF4, ") to cueText.length() (");
                        sbK.append(spannableStringBuilder.length());
                        sbK.append(").");
                        x.f("Tx3gParser", sbK.toString());
                        iF4 = spannableStringBuilder.length();
                    }
                    if (iF3 >= iF4) {
                        x.f("Tx3gParser", "Ignoring styl with start (" + iF3 + ") >= end (" + iF4 + ").");
                    } else {
                        int i16 = iF4;
                        f(spannableStringBuilder, iZ, this.f31186H, iF3, i16, 0);
                        e(spannableStringBuilder, iL3, this.f31187I, iF3, i16, 0);
                    }
                    i15++;
                    i10 = 1;
                    i11 = 2;
                }
            } else {
                if (iL2 == 1952608120 && this.f31185G) {
                    H1.d(e8.a() >= 2);
                    fH = M.h(e8.F() / this.f31190L, 0.0f, 0.95f);
                }
                e8.L(i14 + iL);
                i10 = 1;
                i11 = 2;
            }
            e8.L(i14 + iL);
            i10 = 1;
            i11 = 2;
        }
        interfaceC3172j.accept(new p126q1.a(H.x(new b(spannableStringBuilder, null, null, null, fH, 0, 0, -3.4028235E38f, Integer.MIN_VALUE, Integer.MIN_VALUE, -3.4028235E38f, -3.4028235E38f, -3.4028235E38f, false, -16777216, Integer.MIN_VALUE, 0.0f, 0)), -9223372036854775807L, -9223372036854775807L));
    }

    @Override // p126q1.m
    public final /* synthetic */ d c(int i8, byte[] bArr, int i9) {
        return U2.b(this, bArr, i8, i9);
    }

    @Override // com.google.android.gms.internal.ads.W1
    public final void d(byte[] bArr, int i8, int i9, p149t0.d dVar) {
        String strB;
        C1534jr c1534jr = (C1534jr) this.f31191M;
        c1534jr.h(i8 + i9, bArr);
        c1534jr.j(i8);
        int i10 = 1;
        int i11 = 2;
        p113o3.r.J(c1534jr.o() >= 2);
        int iA = c1534jr.A();
        if (iA == 0) {
            strB = HttpUrl.FRAGMENT_ENCODE_SET;
        } else {
            int i12 = c1534jr.f19516b;
            Charset charsetC = c1534jr.c();
            int i13 = c1534jr.f19516b - i12;
            if (charsetC == null) {
                charsetC = AbstractC2113uz.f21413c;
            }
            strB = c1534jr.b(iA - i13, charsetC);
        }
        if (strB.isEmpty()) {
            C1969sA c1969sA = AbstractC2073uA.f21207H;
            dVar.mo4zza(new S1(PA.f15340K, -9223372036854775807L, -9223372036854775807L));
            return;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(strB);
        i(spannableStringBuilder, this.f31186H, 0, 0, spannableStringBuilder.length(), 16711680);
        h(spannableStringBuilder, this.f31187I, -1, 0, spannableStringBuilder.length(), 16711680);
        int length = spannableStringBuilder.length();
        String str = this.f31188J;
        if (str != "sans-serif") {
            spannableStringBuilder.setSpan(new TypefaceSpan(str), 0, length, 16711713);
        }
        float fMax = this.f31189K;
        while (c1534jr.o() >= 8) {
            int i14 = c1534jr.f19516b;
            int iR = c1534jr.r();
            int iR2 = c1534jr.r();
            if (iR2 == 1937013100) {
                p113o3.r.J(c1534jr.o() >= i11);
                int iA2 = c1534jr.A();
                int i15 = 0;
                while (i15 < iA2) {
                    p113o3.r.J(c1534jr.o() >= 12);
                    int iA3 = c1534jr.A();
                    int iA4 = c1534jr.A();
                    c1534jr.k(i11);
                    int iW = c1534jr.w();
                    c1534jr.k(i10);
                    int iR3 = c1534jr.r();
                    if (iA4 > spannableStringBuilder.length()) {
                        Zo.f("Tx3gParser", "Truncating styl end (" + iA4 + ") to cueText.length() (" + spannableStringBuilder.length() + ").");
                        iA4 = spannableStringBuilder.length();
                    }
                    if (iA3 >= iA4) {
                        Zo.f("Tx3gParser", "Ignoring styl with start (" + iA3 + ") >= end (" + iA4 + ").");
                    } else {
                        int i16 = iA4;
                        i(spannableStringBuilder, iW, this.f31186H, iA3, i16, 0);
                        h(spannableStringBuilder, iR3, this.f31187I, iA3, i16, 0);
                    }
                    i15++;
                    iA2 = iA2;
                    i10 = 1;
                    i11 = 2;
                }
            } else {
                if (iR2 == 1952608120 && this.f31185G) {
                    p113o3.r.J(c1534jr.o() >= 2);
                    fMax = Math.max(0.0f, Math.min(c1534jr.A() / this.f31190L, 0.95f));
                }
                c1534jr.j(i14 + iR);
                i10 = 1;
                i11 = 2;
            }
            c1534jr.j(i14 + iR);
            i10 = 1;
            i11 = 2;
        }
        dVar.mo4zza(new S1(AbstractC2073uA.w(new C1063ak(spannableStringBuilder, null, null, null, fMax, 0, 0, -3.4028235E38f, Integer.MIN_VALUE, Integer.MIN_VALUE, -3.4028235E38f, -3.4028235E38f, -3.4028235E38f, Integer.MIN_VALUE, 0.0f)), -9223372036854775807L, -9223372036854775807L));
    }

    @Override // p126q1.m
    public final int g() {
        return 2;
    }

    @Override // p126q1.m
    public final /* synthetic */ void a() {
    }
}
