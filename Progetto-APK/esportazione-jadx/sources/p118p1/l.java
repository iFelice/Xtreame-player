package p118p1;

import B1.e;
import F.d;
import W0.N;
import com.google.android.gms.internal.measurement.H1;
import java.util.ArrayList;
import java.util.Arrays;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.O;
import p094m0.P;
import p096m2.c;
import p117p0.D;
import p117p0.E;
import p117p0.x;
import z4.H;

/* JADX INFO: loaded from: classes.dex */
public final class l extends j {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public k f28189n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f28190o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f28191p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public e f28192q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public d f28193r;

    @Override // p118p1.j
    public final void a(long j8) {
        this.f28173c = j8;
        this.f28191p = j8 != 0;
        e eVar = this.f28192q;
        this.f28190o = eVar != null ? eVar.f1190e : 0;
    }

    @Override // p118p1.j
    public final long b(E e8) {
        byte b8 = e8.f28035a[0];
        if ((b8 & 1) == 1) {
            return -1L;
        }
        k kVar = this.f28189n;
        H1.j(kVar);
        boolean z7 = kVar.f28187d[(b8 >> 1) & (255 >>> (8 - kVar.f28188e))].f7347a;
        e eVar = kVar.f28184a;
        int i8 = !z7 ? eVar.f1190e : eVar.f1191f;
        long j8 = this.f28191p ? (this.f28190o + i8) / 4 : 0;
        byte[] bArr = e8.f28035a;
        int length = bArr.length;
        int i9 = e8.f28037c + 4;
        if (length < i9) {
            byte[] bArrCopyOf = Arrays.copyOf(bArr, i9);
            e8.J(bArrCopyOf.length, bArrCopyOf);
        } else {
            e8.K(i9);
        }
        byte[] bArr2 = e8.f28035a;
        int i10 = e8.f28037c;
        bArr2[i10 - 4] = (byte) (j8 & 255);
        bArr2[i10 - 3] = (byte) ((j8 >>> 8) & 255);
        bArr2[i10 - 2] = (byte) ((j8 >>> 16) & 255);
        bArr2[i10 - 1] = (byte) ((j8 >>> 24) & 255);
        this.f28191p = true;
        this.f28190o = i8;
        return j8;
    }

    @Override // p118p1.j
    public final boolean c(E e8, long j8, c cVar) throws P {
        e eVar;
        int i8;
        if (this.f28189n != null) {
            ((C3136t) cVar.f27210H).getClass();
            return false;
        }
        e eVar2 = this.f28192q;
        k kVar = null;
        int i9 = 4;
        if (eVar2 == null) {
            H1.A(1, e8, false);
            e8.r();
            int iZ = e8.z();
            int iR = e8.r();
            int iN = e8.n();
            int i10 = iN <= 0 ? -1 : iN;
            int iN2 = e8.n();
            int i11 = iN2 <= 0 ? -1 : iN2;
            e8.n();
            int iZ2 = e8.z();
            int iPow = (int) Math.pow(2.0d, iZ2 & 15);
            int iPow2 = (int) Math.pow(2.0d, (iZ2 & 240) >> 4);
            e8.z();
            this.f28192q = new e(iZ, iR, i10, i11, iPow, iPow2, Arrays.copyOf(e8.f28035a, e8.f28037c));
        } else {
            d dVar = this.f28193r;
            if (dVar == null) {
                this.f28193r = H1.u(e8, true, true);
            } else {
                int i12 = e8.f28037c;
                byte[] bArr = new byte[i12];
                System.arraycopy(e8.f28035a, 0, bArr, 0, i12);
                int i13 = 5;
                H1.A(5, e8, false);
                int iZ3 = e8.z() + 1;
                int i14 = 2;
                D d6 = new D(e8.f28035a, 2, (Object) null);
                d6.u(e8.f28036b * 8);
                int i15 = 0;
                while (true) {
                    int i16 = 16;
                    if (i15 >= iZ3) {
                        e eVar3 = eVar2;
                        int i17 = 6;
                        int i18 = d6.i(6) + 1;
                        for (int i19 = 0; i19 < i18; i19++) {
                            if (d6.i(16) != 0) {
                                throw P.a("placeholder of time domain transforms not zeroed out", null);
                            }
                        }
                        int i20 = d6.i(6) + 1;
                        int i21 = 0;
                        while (true) {
                            int i22 = 3;
                            if (i21 >= i20) {
                                int i23 = d6.i(i17) + 1;
                                int i24 = 0;
                                while (i24 < i23) {
                                    if (d6.i(16) > 2) {
                                        throw P.a("residueType greater than 2 is not decodable", null);
                                    }
                                    d6.u(24);
                                    d6.u(24);
                                    d6.u(24);
                                    int i25 = d6.i(i17) + 1;
                                    int i26 = 8;
                                    d6.u(8);
                                    int[] iArr = new int[i25];
                                    for (int i27 = 0; i27 < i25; i27++) {
                                        iArr[i27] = ((d6.h() ? d6.i(5) : 0) * 8) + d6.i(3);
                                    }
                                    int i28 = 0;
                                    while (i28 < i25) {
                                        int i29 = 0;
                                        while (i29 < i26) {
                                            if ((iArr[i28] & (1 << i29)) != 0) {
                                                d6.u(i26);
                                            }
                                            i29++;
                                            i26 = 8;
                                        }
                                        i28++;
                                        i26 = 8;
                                    }
                                    i24++;
                                    i17 = 6;
                                }
                                int i30 = d6.i(i17) + 1;
                                int i31 = 0;
                                while (i31 < i30) {
                                    int i32 = d6.i(16);
                                    if (i32 != 0) {
                                        x.c("VorbisUtil", "mapping type other than 0 not supported: " + i32);
                                        eVar = eVar3;
                                    } else {
                                        int i33 = d6.h() ? d6.i(4) + 1 : 1;
                                        boolean zH = d6.h();
                                        eVar = eVar3;
                                        int i34 = eVar.f1186a;
                                        if (zH) {
                                            int i35 = d6.i(8) + 1;
                                            for (int i36 = 0; i36 < i35; i36++) {
                                                int i37 = i34 - 1;
                                                d6.u(H1.r(i37));
                                                d6.u(H1.r(i37));
                                            }
                                        }
                                        if (d6.i(2) != 0) {
                                            throw P.a("to reserved bits must be zero after mapping coupling steps", null);
                                        }
                                        if (i33 > 1) {
                                            for (int i38 = 0; i38 < i34; i38++) {
                                                d6.u(4);
                                            }
                                        }
                                        for (int i39 = 0; i39 < i33; i39++) {
                                            d6.u(8);
                                            d6.u(8);
                                            d6.u(8);
                                        }
                                    }
                                    i31++;
                                    eVar3 = eVar;
                                }
                                e eVar4 = eVar3;
                                int i40 = d6.i(6);
                                int i41 = i40 + 1;
                                N[] nArr = new N[i41];
                                for (int i42 = 0; i42 < i41; i42++) {
                                    boolean zH2 = d6.h();
                                    d6.i(16);
                                    d6.i(16);
                                    d6.i(8);
                                    nArr[i42] = new N(zH2);
                                }
                                if (!d6.h()) {
                                    throw P.a("framing bit after modes not set as expected", null);
                                }
                                kVar = new k(eVar4, dVar, bArr, nArr, H1.r(i40));
                                break;
                            }
                            int i43 = d6.i(i16);
                            if (i43 == 0) {
                                i8 = i20;
                                int i44 = 8;
                                d6.u(8);
                                d6.u(16);
                                d6.u(16);
                                d6.u(6);
                                d6.u(8);
                                int i45 = d6.i(4) + 1;
                                int i46 = 0;
                                while (i46 < i45) {
                                    d6.u(i44);
                                    i46++;
                                    i44 = 8;
                                }
                            } else {
                                if (i43 != 1) {
                                    throw P.a("floor type greater than 1 not decodable: " + i43, null);
                                }
                                int i47 = d6.i(i13);
                                int[] iArr2 = new int[i47];
                                int i48 = -1;
                                for (int i49 = 0; i49 < i47; i49++) {
                                    int i50 = d6.i(4);
                                    iArr2[i49] = i50;
                                    if (i50 > i48) {
                                        i48 = i50;
                                    }
                                }
                                int i51 = i48 + 1;
                                int[] iArr3 = new int[i51];
                                int i52 = 0;
                                while (i52 < i51) {
                                    iArr3[i52] = d6.i(i22) + 1;
                                    int i53 = d6.i(i14);
                                    int i54 = 8;
                                    if (i53 > 0) {
                                        d6.u(8);
                                    }
                                    int i55 = i20;
                                    int i56 = 0;
                                    while (i56 < (1 << i53)) {
                                        d6.u(i54);
                                        i56++;
                                        i54 = 8;
                                    }
                                    i52++;
                                    i20 = i55;
                                    i22 = 3;
                                    i14 = 2;
                                }
                                i8 = i20;
                                d6.u(2);
                                int i57 = d6.i(4);
                                int i58 = 0;
                                int i59 = 0;
                                for (int i60 = 0; i60 < i47; i60++) {
                                    i58 += iArr3[iArr2[i60]];
                                    while (i59 < i58) {
                                        d6.u(i57);
                                        i59++;
                                    }
                                }
                            }
                            i21++;
                            i20 = i8;
                            i17 = 6;
                            i16 = 16;
                            i13 = 5;
                            i14 = 2;
                        }
                    } else {
                        if (d6.i(24) != 5653314) {
                            throw P.a("expected code book to start with [0x56, 0x43, 0x42] at " + d6.g(), null);
                        }
                        int i61 = d6.i(16);
                        int i62 = d6.i(24);
                        if (d6.h()) {
                            d6.u(5);
                            for (int i63 = 0; i63 < i62; i63 += d6.i(H1.r(i62 - i63))) {
                            }
                        } else {
                            boolean zH3 = d6.h();
                            for (int i64 = 0; i64 < i62; i64++) {
                                if (!zH3) {
                                    d6.u(5);
                                } else if (d6.h()) {
                                    d6.u(5);
                                }
                            }
                        }
                        int i65 = d6.i(i9);
                        if (i65 > 2) {
                            throw P.a("lookup type greater than 2 not decodable: " + i65, null);
                        }
                        if (i65 == 1 || i65 == 2) {
                            d6.u(32);
                            d6.u(32);
                            int i66 = d6.i(i9) + 1;
                            d6.u(1);
                            d6.u((int) ((i65 == 1 ? i61 != 0 ? (long) Math.floor(Math.pow(i62, 1.0d / ((double) i61))) : 0L : ((long) i62) * ((long) i61)) * ((long) i66)));
                        } else {
                            eVar2 = eVar2;
                        }
                        i15++;
                        eVar2 = eVar2;
                        i9 = 4;
                    }
                }
            }
        }
        this.f28189n = kVar;
        if (kVar == null) {
            return true;
        }
        ArrayList arrayList = new ArrayList();
        e eVar5 = kVar.f28184a;
        arrayList.add(eVar5.f1192g);
        arrayList.add(kVar.f28186c);
        p094m0.N nT = H1.t(H.t((String[]) kVar.f28185b.f2963J));
        C3135s c3135s = new C3135s();
        c3135s.f26995m = O.p("audio/ogg");
        c3135s.f26996n = O.p("audio/vorbis");
        c3135s.f26990h = eVar5.f1189d;
        c3135s.f26991i = eVar5.f1188c;
        c3135s.f26973F = eVar5.f1186a;
        c3135s.f26974G = eVar5.f1187b;
        c3135s.f26999q = arrayList;
        c3135s.f26993k = nT;
        cVar.f27210H = new C3136t(c3135s);
        return true;
    }

    @Override // p118p1.j
    public final void d(boolean z7) {
        super.d(z7);
        if (z7) {
            this.f28189n = null;
            this.f28192q = null;
            this.f28193r = null;
        }
        this.f28190o = 0;
        this.f28191p = false;
    }
}
