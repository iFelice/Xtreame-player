package H0;

import A1.C0026a;
import A1.C0028c;
import A1.C0030e;
import A1.C0032g;
import C0.I;
import F2.G;
import W0.C0381n;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.internal.measurement.H1;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicInteger;
import okhttp3.internal.http2.Http2;
import p094m0.C3131n;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.M;
import p094m0.N;
import p094m0.O;
import p117p0.E;
import p117p0.J;
import p141s0.C3188m;
import p141s0.InterfaceC3184i;
import z4.F;
import z4.H;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final class l extends P0.p {

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public static final AtomicInteger f3474t0 = new AtomicInteger();

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final int f3475Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final int f3476R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final Uri f3477S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final boolean f3478T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final int f3479U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public final InterfaceC3184i f3480V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public final C3188m f3481W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public final m f3482X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public final boolean f3483Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public final boolean f3484Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final J f3485a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final k f3486b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public final List f3487c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public final C3131n f3488d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final p065i1.i f3489e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public final E f3490f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public final boolean f3491g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public final boolean f3492h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public final long f3493i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public m f3494j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public t f3495k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public int f3496l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public boolean f3497m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public volatile boolean f3498n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public boolean f3499o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public H f3500p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public boolean f3501q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public long f3502r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public boolean f3503s0;

    public l(k kVar, InterfaceC3184i interfaceC3184i, C3188m c3188m, C3136t c3136t, boolean z7, InterfaceC3184i interfaceC3184i2, C3188m c3188m2, boolean z8, Uri uri, List list, int i8, Object obj, long j8, long j9, long j10, int i9, boolean z9, int i10, boolean z10, boolean z11, J j11, long j12, C3131n c3131n, m mVar, p065i1.i iVar, E e8, boolean z12, boolean z13, I i11) {
        super(interfaceC3184i, c3188m, c3136t, i8, obj, j8, j9, j10);
        this.f3491g0 = z7;
        this.f3479U = i9;
        this.f3502r0 = z9 ? j9 - j8 : -9223372036854775807L;
        this.f3476R = i10;
        this.f3481W = c3188m2;
        this.f3480V = interfaceC3184i2;
        this.f3497m0 = c3188m2 != null;
        this.f3492h0 = z8;
        this.f3477S = uri;
        this.f3483Y = z11;
        this.f3485a0 = j11;
        this.f3493i0 = j12;
        this.f3484Z = z10;
        this.f3486b0 = kVar;
        this.f3487c0 = list;
        this.f3488d0 = c3131n;
        this.f3482X = mVar;
        this.f3489e0 = iVar;
        this.f3490f0 = e8;
        this.f3503s0 = z12;
        this.f3478T = z13;
        F f8 = H.f31804H;
        this.f3500p0 = d0.f31844K;
        this.f3475Q = f3474t0.getAndIncrement();
    }

    public static byte[] d(String str) {
        if (p190y4.k.h0(str).startsWith("0x")) {
            str = str.substring(2);
        }
        byte[] byteArray = new BigInteger(str, 16).toByteArray();
        byte[] bArr = new byte[16];
        int length = byteArray.length > 16 ? byteArray.length - 16 : 0;
        System.arraycopy(byteArray, length, bArr, (16 - byteArray.length) + length, byteArray.length - length);
        return bArr;
    }

    @Override // S0.j
    public final void I() {
        this.f3498n0 = true;
    }

    @Override // P0.p
    public final boolean b() {
        throw null;
    }

    public final void c(InterfaceC3184i interfaceC3184i, C3188m c3188m, boolean z7, boolean z8) {
        C3188m c3188mC;
        boolean z9;
        long j8;
        long j9;
        if (z7) {
            z9 = this.f3496l0 != 0;
            c3188mC = c3188m;
        } else {
            c3188mC = c3188m.c(this.f3496l0);
            z9 = false;
        }
        try {
            C0381n c0381nG = g(interfaceC3184i, c3188mC, z8);
            if (z9) {
                c0381nG.d(this.f3496l0, false);
            }
            while (!this.f3498n0) {
                try {
                    try {
                        if (((b) this.f3494j0).f3431a.h(c0381nG, b.f3430f) != 0) {
                            break;
                        }
                    } catch (EOFException e8) {
                        if ((this.f5723J.f27032f & Http2.INITIAL_MAX_FRAME_SIZE) == 0) {
                            throw e8;
                        }
                        ((b) this.f3494j0).f3431a.i(0L, 0L);
                        j8 = c0381nG.f7444d;
                        j9 = c3188m.f29968f;
                    }
                } catch (Throwable th) {
                    this.f3496l0 = (int) (c0381nG.f7444d - c3188m.f29968f);
                    throw th;
                }
            }
            j8 = c0381nG.f7444d;
            j9 = c3188m.f29968f;
            this.f3496l0 = (int) (j8 - j9);
            p102n0.c.d(interfaceC3184i);
        } catch (Throwable th2) {
            p102n0.c.d(interfaceC3184i);
            throw th2;
        }
    }

    public final int e(int i8) {
        H1.i(!this.f3503s0);
        if (i8 >= this.f3500p0.size()) {
            return 0;
        }
        return ((Integer) this.f3500p0.get(i8)).intValue();
    }

    public final boolean f() {
        return this.f3502r0 != -9223372036854775807L;
    }

    /* JADX WARN: Code duplicated, block: B:128:0x029a  */
    /* JADX WARN: Code duplicated, block: B:129:0x029f  */
    /* JADX WARN: Code duplicated, block: B:132:0x02ab  */
    /* JADX WARN: Code duplicated, block: B:133:0x02ae  */
    /* JADX WARN: Code duplicated, block: B:175:0x0380  */
    /* JADX WARN: Code duplicated, block: B:177:0x038b  */
    /* JADX WARN: Code duplicated, block: B:178:0x0394  */
    /* JADX WARN: Code duplicated, block: B:17:0x004c  */
    /* JADX WARN: Code duplicated, block: B:181:0x039c  */
    /* JADX WARN: Code duplicated, block: B:183:0x03a4  */
    /* JADX WARN: Code duplicated, block: B:185:0x03ac  */
    /* JADX WARN: Code duplicated, block: B:215:0x03b1 A[SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:181:0x039c, please report this as an issue */
    public final C0381n g(InterfaceC3184i interfaceC3184i, C3188m c3188m, boolean z7) throws IOException {
        int i8;
        long jT;
        long j8;
        b bVar;
        W0.s c0026a;
        int i9;
        p126q1.k kVar;
        List list;
        p126q1.k kVar2;
        W0.s sVarB;
        t tVar;
        long jB;
        int i10;
        W0.s dVar;
        long jA = interfaceC3184i.a(c3188m);
        if (z7) {
            try {
                this.f3485a0.h(this.f5726M, this.f3493i0, this.f3483Y);
            } catch (InterruptedException unused) {
                throw new InterruptedIOException();
            } catch (TimeoutException e8) {
                throw new IOException(e8);
            }
        }
        C0381n c0381n = new C0381n(interfaceC3184i, c3188m.f29968f, jA);
        int i11 = 1;
        if (this.f3494j0 == null) {
            E e9 = this.f3490f0;
            c0381n.f7446f = 0;
            try {
                e9.I(10);
                c0381n.e(e9.f28035a, 0, 10, false);
                if (e9.C() != 4801587) {
                    jT = -9223372036854775807L;
                    break;
                }
                e9.M(3);
                int iY = e9.y();
                int i12 = iY + 10;
                byte[] bArr = e9.f28035a;
                if (i12 > bArr.length) {
                    e9.I(i12);
                    System.arraycopy(bArr, 0, e9.f28035a, 0, 10);
                }
                c0381n.e(e9.f28035a, 10, iY, false);
                N nU = this.f3489e0.u(iY, e9.f28035a);
                if (nU == null) {
                    jT = -9223372036854775807L;
                    break;
                }
                M[] mArr = nU.f26777a;
                int length = mArr.length;
                int i13 = 0;
                while (true) {
                    if (i13 >= length) {
                        jT = -9223372036854775807L;
                        break;
                    }
                    M m7 = mArr[i13];
                    if (m7 instanceof p065i1.n) {
                        p065i1.n nVar = (p065i1.n) m7;
                        if ("com.apple.streaming.transportStreamTimestamp".equals(nVar.f25547b)) {
                            System.arraycopy(nVar.f25548c, 0, e9.f28035a, 0, 8);
                            e9.L(0);
                            e9.K(8);
                            jT = e9.t() & 8589934591L;
                            break;
                        }
                    }
                    i13++;
                }
            } catch (EOFException unused2) {
            }
            c0381n.f7446f = 0;
            m mVar = this.f3482X;
            if (mVar != null) {
                b bVar2 = (b) mVar;
                W0.s sVar = bVar2.f3431a;
                W0.s sVarB2 = sVar.b();
                H1.i(!((sVarB2 instanceof A1.F) || (sVarB2 instanceof p111o1.i)));
                H1.h("Can't recreate wrapped extractors. Outer type: " + sVar.getClass(), sVar.b() == sVar);
                if (sVar instanceof w) {
                    dVar = new w(bVar2.f3432b.f27030d, bVar2.f3433c, bVar2.f3434d, bVar2.f3435e);
                } else if (sVar instanceof C0030e) {
                    dVar = new C0030e();
                } else if (sVar instanceof C0026a) {
                    dVar = new C0026a();
                } else if (sVar instanceof C0028c) {
                    dVar = new C0028c();
                } else {
                    if (!(sVar instanceof p103n1.d)) {
                        throw new IllegalStateException("Unexpected extractor type for recreation: ".concat(sVar.getClass().getSimpleName()));
                    }
                    dVar = new p103n1.d();
                }
                bVar = new b(dVar, bVar2.f3432b, bVar2.f3433c, bVar2.f3434d, bVar2.f3435e);
                j8 = jT;
            } else {
                Map mapK = interfaceC3184i.k();
                d dVar2 = (d) this.f3486b0;
                dVar2.getClass();
                C3136t c3136t = this.f5723J;
                int iK = Z3.H.k(c3136t.f27041o);
                List list2 = (List) mapK.get("Content-Type");
                int iK2 = Z3.H.k((list2 == null || list2.isEmpty()) ? null : (String) list2.get(0));
                int iL = Z3.H.l(c3188m.f29963a);
                int i14 = 7;
                ArrayList arrayList = new ArrayList(7);
                d.a(iK, arrayList);
                d.a(iK2, arrayList);
                d.a(iL, arrayList);
                int[] iArr = d.f3437f;
                for (int i15 = 0; i15 < 7; i15++) {
                    d.a(iArr[i15], arrayList);
                }
                c0381n.f7446f = 0;
                int i16 = 0;
                W0.s sVar2 = null;
                while (true) {
                    int size = arrayList.size();
                    J j9 = this.f3485a0;
                    if (i16 >= size) {
                        j8 = jT;
                        i8 = 0;
                        sVar2.getClass();
                        bVar = new b(sVar2, c3136t, j9, dVar2.f3439b, dVar2.f3440c);
                        break;
                    }
                    int iIntValue = ((Integer) arrayList.get(i16)).intValue();
                    if (iIntValue == 0) {
                        arrayList = arrayList;
                        j8 = jT;
                        c0026a = new C0026a();
                    } else if (iIntValue == i11) {
                        arrayList = arrayList;
                        j8 = jT;
                        c0026a = new C0028c();
                    } else if (iIntValue == 2) {
                        arrayList = arrayList;
                        j8 = jT;
                        c0026a = new C0030e();
                    } else if (iIntValue != i14) {
                        G g8 = p126q1.k.f29555E;
                        List listEmptyList = this.f3487c0;
                        if (iIntValue != 8) {
                            if (iIntValue == 11) {
                                p126q1.k kVar3 = dVar2.f3439b;
                                boolean z8 = dVar2.f3440c;
                                int i17 = dVar2.f3438a;
                                int i18 = i17 | 16;
                                if (listEmptyList != null) {
                                    i18 = i17 | 48;
                                } else if (dVar2.f3442e) {
                                    C3135s c3135s = new C3135s();
                                    c3135s.f26996n = O.p("application/cea-608");
                                    listEmptyList = Collections.singletonList(new C3136t(c3135s));
                                } else {
                                    listEmptyList = Collections.emptyList();
                                }
                                String str = c3136t.f27037k;
                                if (TextUtils.isEmpty(str)) {
                                    kVar2 = kVar3;
                                } else {
                                    kVar2 = kVar3;
                                    if (O.c(str, "audio/mp4a-latm") == null) {
                                        i18 |= 2;
                                    }
                                    if (O.c(str, "video/avc") == null) {
                                        i18 |= 4;
                                    }
                                }
                                c0026a = new A1.F(2, !z8 ? 1 : 0, !z8 ? g8 : kVar2, j9, new C0032g(i18, listEmptyList));
                            } else if (iIntValue != 13) {
                                arrayList = arrayList;
                                j8 = jT;
                                c0026a = null;
                            } else {
                                c0026a = new w(c3136t.f27030d, j9, dVar2.f3439b, dVar2.f3440c);
                            }
                            j8 = jT;
                        } else {
                            arrayList = arrayList;
                            p126q1.k kVar4 = dVar2.f3439b;
                            boolean z9 = dVar2.f3440c;
                            int i19 = dVar2.f3441d;
                            N n7 = c3136t.f27038l;
                            if (n7 == null) {
                                j8 = jT;
                            } else {
                                j8 = jT;
                                int i20 = 0;
                                while (true) {
                                    M[] mArr2 = n7.f26777a;
                                    N n8 = n7;
                                    if (i20 < mArr2.length) {
                                        M m8 = mArr2[i20];
                                        if (m8 instanceof v) {
                                            if (!((v) m8).f3617c.isEmpty()) {
                                                i9 = 4;
                                                break;
                                            }
                                        } else {
                                            i20++;
                                            n7 = n8;
                                        }
                                    }
                                }
                                if (z9) {
                                    kVar = kVar4;
                                } else {
                                    i9 |= 32;
                                    kVar = g8;
                                }
                                int iA = i9 | p111o1.i.a(i19);
                                if (listEmptyList != null) {
                                    list = listEmptyList;
                                } else {
                                    list = d0.f31844K;
                                }
                                c0026a = new p111o1.i(kVar, iA, j9, list, null);
                            }
                            i9 = 0;
                            if (z9) {
                                i9 |= 32;
                                kVar = g8;
                            } else {
                                kVar = kVar4;
                            }
                            int iA2 = i9 | p111o1.i.a(i19);
                            if (listEmptyList != null) {
                                list = listEmptyList;
                            } else {
                                list = d0.f31844K;
                            }
                            c0026a = new p111o1.i(kVar, iA2, j9, list, null);
                        }
                    } else {
                        arrayList = arrayList;
                        j8 = jT;
                        c0026a = new p103n1.d(0L);
                    }
                    c0026a.getClass();
                    try {
                        boolean zG = c0026a.g(c0381n);
                        c0381n.f7446f = 0;
                        if (zG) {
                            bVar = new b(c0026a, c3136t, j9, dVar2.f3439b, dVar2.f3440c);
                        } else {
                            if (sVar2 == null && (iIntValue == iK || iIntValue == iK2 || iIntValue == iL || iIntValue == 11)) {
                                sVar2 = c0026a;
                            }
                            i16++;
                            arrayList = arrayList;
                            jT = j8;
                            i11 = 1;
                            i14 = 7;
                        }
                    } catch (EOFException unused3) {
                        c0381n.f7446f = 0;
                    } catch (Throwable th) {
                        c0381n.f7446f = 0;
                        throw th;
                    }
                }
                this.f3494j0 = bVar;
                sVarB = bVar.f3431a.b();
                if (!(sVarB instanceof C0030e) || (sVarB instanceof C0026a) || (sVarB instanceof C0028c) || (sVarB instanceof p103n1.d)) {
                    tVar = this.f3495k0;
                    if (j8 != -9223372036854775807L) {
                        jB = this.f3485a0.b(j8);
                    } else {
                        jB = this.f5726M;
                    }
                    if (tVar.f3560B0 != jB) {
                        tVar.f3560B0 = jB;
                        for (s sVar3 : tVar.f3584b0) {
                            if (sVar3.f5137F != jB) {
                                sVar3.f5137F = jB;
                                sVar3.f5164z = true;
                            }
                        }
                    }
                } else {
                    t tVar2 = this.f3495k0;
                    if (tVar2.f3560B0 != 0) {
                        tVar2.f3560B0 = 0L;
                        for (s sVar4 : tVar2.f3584b0) {
                            if (sVar4.f5137F != 0) {
                                sVar4.f5137F = 0L;
                                sVar4.f5164z = true;
                            }
                        }
                    }
                }
                this.f3495k0.f3586d0.clear();
                ((b) this.f3494j0).f3431a.d(this.f3495k0);
            }
            i8 = 0;
            this.f3494j0 = bVar;
            sVarB = bVar.f3431a.b();
            if (sVarB instanceof C0030e) {
                tVar = this.f3495k0;
                if (j8 != -9223372036854775807L) {
                    jB = this.f3485a0.b(j8);
                } else {
                    jB = this.f5726M;
                }
                if (tVar.f3560B0 != jB) {
                    tVar.f3560B0 = jB;
                    while (i10 < r4) {
                        if (sVar3.f5137F != jB) {
                            sVar3.f5137F = jB;
                            sVar3.f5164z = true;
                        }
                    }
                }
            } else {
                tVar = this.f3495k0;
                if (j8 != -9223372036854775807L) {
                    jB = this.f3485a0.b(j8);
                } else {
                    jB = this.f5726M;
                }
                if (tVar.f3560B0 != jB) {
                    tVar.f3560B0 = jB;
                    while (i10 < r4) {
                        if (sVar3.f5137F != jB) {
                            sVar3.f5137F = jB;
                            sVar3.f5164z = true;
                        }
                    }
                }
            }
            this.f3495k0.f3586d0.clear();
            ((b) this.f3494j0).f3431a.d(this.f3495k0);
        } else {
            i8 = 0;
        }
        t tVar3 = this.f3495k0;
        C3131n c3131n = tVar3.f3561C0;
        C3131n c3131n2 = this.f3488d0;
        if (!Objects.equals(c3131n, c3131n2)) {
            tVar3.f3561C0 = c3131n2;
            while (true) {
                s[] sVarArr = tVar3.f3584b0;
                if (i8 >= sVarArr.length) {
                    break;
                }
                if (tVar3.f3603u0[i8]) {
                    s sVar5 = sVarArr[i8];
                    sVar5.f3557I = c3131n2;
                    sVar5.f5164z = true;
                }
                i8++;
            }
        }
        return c0381n;
    }

    @Override // S0.j
    public final void p() {
        m mVar;
        this.f3495k0.getClass();
        if (this.f3494j0 == null && (mVar = this.f3482X) != null) {
            W0.s sVarB = ((b) mVar).f3431a.b();
            if ((sVarB instanceof A1.F) || (sVarB instanceof p111o1.i)) {
                this.f3494j0 = this.f3482X;
                this.f3497m0 = false;
            }
        }
        if (this.f3497m0) {
            InterfaceC3184i interfaceC3184i = this.f3480V;
            interfaceC3184i.getClass();
            C3188m c3188m = this.f3481W;
            c3188m.getClass();
            c(interfaceC3184i, c3188m, this.f3492h0, false);
            this.f3496l0 = 0;
            this.f3497m0 = false;
        }
        if (this.f3498n0) {
            return;
        }
        if (!this.f3484Z) {
            c(this.f5728O, this.f5721H, this.f3491g0, true);
        }
        this.f3499o0 = !this.f3498n0;
    }
}
