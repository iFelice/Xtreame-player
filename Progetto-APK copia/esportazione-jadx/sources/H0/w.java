package H0;

import W0.L;
import W0.x;
import android.text.TextUtils;
import java.math.RoundingMode;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p094m0.C3135s;
import p094m0.O;
import p094m0.P;
import p117p0.E;
import p117p0.J;
import p117p0.M;
import z4.F;
import z4.H;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final class w implements W0.s {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Pattern f3618i = Pattern.compile("LOCAL:([^,]+)");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Pattern f3619j = Pattern.compile("MPEGTS:(-?\\d+)");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3620a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final J f3621b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final p126q1.k f3623d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f3624e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public W0.u f3625f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f3627h;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final E f3622c = new E();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public byte[] f3626g = new byte[1024];

    public w(String str, J j8, p126q1.k kVar, boolean z7) {
        this.f3620a = str;
        this.f3621b = j8;
        this.f3623d = kVar;
        this.f3624e = z7;
    }

    public final L a(long j8) {
        L lT = this.f3625f.t(0, 3);
        C3135s c3135s = new C3135s();
        c3135s.f26996n = O.p("text/vtt");
        c3135s.f26986d = this.f3620a;
        c3135s.f27001s = j8;
        lT.b(c3135s.a());
        this.f3625f.j();
        return lT;
    }

    @Override // W0.s
    public final void d(W0.u uVar) {
        if (this.f3624e) {
            uVar = new p126q1.n(uVar, this.f3623d);
        }
        this.f3625f = uVar;
        uVar.r(new x(-9223372036854775807L));
    }

    @Override // W0.s
    public final boolean g(W0.t tVar) {
        tVar.e(this.f3626g, 0, 6, false);
        byte[] bArr = this.f3626g;
        E e8 = this.f3622c;
        e8.J(6, bArr);
        if (p195z1.i.a(e8)) {
            return true;
        }
        tVar.e(this.f3626g, 6, 3, false);
        e8.J(9, this.f3626g);
        return p195z1.i.a(e8);
    }

    @Override // W0.s
    public final int h(W0.t tVar, W0.w wVar) throws P {
        String strM;
        this.f3625f.getClass();
        int iJ = (int) tVar.j();
        int i8 = this.f3627h;
        byte[] bArr = this.f3626g;
        if (i8 == bArr.length) {
            this.f3626g = Arrays.copyOf(bArr, ((iJ != -1 ? iJ : bArr.length) * 3) / 2);
        }
        byte[] bArr2 = this.f3626g;
        int i9 = this.f3627h;
        int iQ = tVar.q(bArr2, i9, bArr2.length - i9);
        if (iQ != -1) {
            int i10 = this.f3627h + iQ;
            this.f3627h = i10;
            if (iJ == -1 || i10 != iJ) {
                return 0;
            }
        }
        E e8 = new E(this.f3626g);
        p195z1.i.d(e8);
        String strM2 = e8.m(StandardCharsets.UTF_8);
        long jZ = 0;
        long jC = 0;
        while (true) {
            Matcher matcher = null;
            if (TextUtils.isEmpty(strM2)) {
                while (true) {
                    String strM3 = e8.m(StandardCharsets.UTF_8);
                    if (strM3 == null) {
                        break;
                    }
                    if (p195z1.i.f31749a.matcher(strM3).matches()) {
                        do {
                            strM = e8.m(StandardCharsets.UTF_8);
                            if (strM == null) {
                                break;
                            }
                        } while (!strM.isEmpty());
                    } else {
                        Matcher matcher2 = p195z1.h.f31745a.matcher(strM3);
                        if (matcher2.matches()) {
                            matcher = matcher2;
                            break;
                        }
                    }
                }
                if (matcher == null) {
                    a(0L);
                } else {
                    String strGroup = matcher.group(1);
                    strGroup.getClass();
                    long jC2 = p195z1.i.c(strGroup);
                    String str = M.f28050a;
                    long jB = this.f3621b.b(M.Z((jZ + jC2) - jC, 90000L, 1000000L, RoundingMode.DOWN) % 8589934592L);
                    L lA = a(jB - jC2);
                    byte[] bArr3 = this.f3626g;
                    int i11 = this.f3627h;
                    E e9 = this.f3622c;
                    e9.J(i11, bArr3);
                    lA.e(this.f3627h, e9);
                    lA.d(jB, 1, this.f3627h, 0, null);
                }
                return -1;
            }
            if (strM2.startsWith("X-TIMESTAMP-MAP")) {
                Matcher matcher3 = f3618i.matcher(strM2);
                if (!matcher3.find()) {
                    throw P.a("X-TIMESTAMP-MAP doesn't contain local timestamp: ".concat(strM2), null);
                }
                Matcher matcher4 = f3619j.matcher(strM2);
                if (!matcher4.find()) {
                    throw P.a("X-TIMESTAMP-MAP doesn't contain media timestamp: ".concat(strM2), null);
                }
                String strGroup2 = matcher3.group(1);
                strGroup2.getClass();
                jC = p195z1.i.c(strGroup2);
                String strGroup3 = matcher4.group(1);
                strGroup3.getClass();
                long j8 = Long.parseLong(strGroup3);
                String str2 = M.f28050a;
                jZ = M.Z(j8, 1000000L, 90000L, RoundingMode.DOWN);
            }
            strM2 = e8.m(StandardCharsets.UTF_8);
        }
    }

    @Override // W0.s
    public final void i(long j8, long j9) {
        throw new IllegalStateException();
    }

    @Override // W0.s
    public final List j() {
        F f8 = H.f31804H;
        return d0.f31844K;
    }

    @Override // W0.s
    public final W0.s b() {
        return this;
    }

    @Override // W0.s
    public final void release() {
    }
}
