package p111o1;

import B0.C0073x;
import B0.K0;
import B0.w0;
import E3.f;
import F2.G;
import W0.A;
import W0.AbstractC0368a;
import W0.C0379l;
import W0.L;
import W0.s;
import W0.t;
import W0.u;
import W0.w;
import android.util.Pair;
import android.util.SparseArray;
import com.google.android.gms.internal.measurement.H1;
import com.google.api.Endpoint;
import com.google.protobuf.U2;
import java.math.RoundingMode;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.PriorityQueue;
import java.util.UUID;
import org.videolan.libvlc.interfaces.IMediaList;
import p000a.r;
import p049g1.a;
import p086l.C3051s;
import p094m0.C3130m;
import p094m0.C3131n;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.N;
import p094m0.O;
import p094m0.P;
import p117p0.E;
import p117p0.J;
import p117p0.M;
import p117p0.x;
import p125q0.c;
import p125q0.d;
import p125q0.p;
import p126q1.k;
import p126q1.n;
import z4.F;
import z4.H;
import z4.d0;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class i implements s {

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public static final byte[] f27710O = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public static final C3136t f27711P;

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public long f27712A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public long f27713B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public h f27714C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public int f27715D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public int f27716E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public int f27717F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public boolean f27718G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public boolean f27719H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public u f27720I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public L[] f27721J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public L[] f27722K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public boolean f27723L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public boolean f27724M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public long f27725N;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k f27726a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f27727b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f27728c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final SparseArray f27729d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final E f27730e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final E f27731f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final E f27732g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final byte[] f27733h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final E f27734i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final J f27735j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final F.i f27736k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final E f27737l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final ArrayDeque f27738m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final ArrayDeque f27739n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final C3051s f27740o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final L f27741p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final p032e0.u f27742q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public d0 f27743r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f27744s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f27745t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public long f27746u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f27747v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public E f27748w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public long f27749x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f27750y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public long f27751z;

    static {
        C3135s c3135s = new C3135s();
        c3135s.f26996n = O.p("application/x-emsg");
        f27711P = c3135s.a();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public i(int i8, G g8) {
        this(g8, i8, null, d0.f31844K, null);
        F f8 = H.f31804H;
    }

    public static int a(int i8) {
        int i9 = (i8 & 1) != 0 ? 64 : 0;
        return (i8 & 2) != 0 ? i9 | 128 : i9;
    }

    public static C3131n e(ArrayList arrayList) {
        int size = arrayList.size();
        ArrayList arrayList2 = null;
        for (int i8 = 0; i8 < size; i8++) {
            d dVar = (d) arrayList.get(i8);
            if (dVar.f29448b == 1886614376) {
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList();
                }
                byte[] bArr = dVar.f29446c.f28035a;
                w0 w0VarW = f.w(bArr);
                UUID uuid = w0VarW == null ? null : (UUID) w0VarW.f1121I;
                if (uuid == null) {
                    x.f("FragmentedMp4Extractor", "Skipped pssh atom (failed to extract uuid)");
                } else {
                    arrayList2.add(new C3130m(uuid, null, "video/mp4", bArr));
                }
            }
        }
        if (arrayList2 == null) {
            return null;
        }
        return new C3131n(null, false, (C3130m[]) arrayList2.toArray(new C3130m[0]));
    }

    public static void f(E e8, int i8, r rVar) throws P {
        e8.L(i8 + 8);
        int iL = e8.l();
        byte[] bArr = e.f27689a;
        if ((iL & 1) != 0) {
            throw P.c("Overriding TrackEncryptionBox parameters is unsupported.");
        }
        boolean z7 = (iL & 2) != 0;
        int iD = e8.D();
        if (iD == 0) {
            Arrays.fill(rVar.f27826l, 0, rVar.f27819e, false);
            return;
        }
        if (iD != rVar.f27819e) {
            StringBuilder sbK = r.k("Senc sample count ", iD, " is different from fragment sample count");
            sbK.append(rVar.f27819e);
            throw P.a(sbK.toString(), null);
        }
        Arrays.fill(rVar.f27826l, 0, iD, z7);
        int iA = e8.a();
        E e9 = rVar.f27828n;
        e9.I(iA);
        rVar.f27825k = true;
        rVar.f27829o = true;
        e8.j(0, e9.f28035a, e9.f28037c);
        e9.L(0);
        rVar.f27829o = false;
    }

    public static Pair k(long j8, E e8) throws P {
        long jE;
        long jE2;
        e8.L(8);
        int iE = e.e(e8.l());
        e8.M(4);
        long jB = e8.B();
        if (iE == 0) {
            jE = e8.B();
            jE2 = e8.B();
        } else {
            jE = e8.E();
            jE2 = e8.E();
        }
        long j9 = jE;
        long j10 = jE2 + j8;
        String str = M.f28050a;
        long jZ = M.Z(j9, 1000000L, jB, RoundingMode.DOWN);
        e8.M(2);
        int iF = e8.F();
        int[] iArr = new int[iF];
        long[] jArr = new long[iF];
        long[] jArr2 = new long[iF];
        long[] jArr3 = new long[iF];
        long j11 = j9;
        long j12 = jZ;
        int i8 = 0;
        while (i8 < iF) {
            int iL = e8.l();
            if ((Integer.MIN_VALUE & iL) != 0) {
                throw P.a("Unhandled indirect reference", null);
            }
            long jB2 = e8.B();
            iArr[i8] = iL & com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
            jArr[i8] = j10;
            jArr3[i8] = j12;
            long j13 = j11 + jB2;
            long[] jArr4 = jArr3;
            long[] jArr5 = jArr2;
            int i9 = iF;
            int[] iArr2 = iArr;
            long jZ2 = M.Z(j13, 1000000L, jB, RoundingMode.DOWN);
            jArr5[i8] = jZ2 - jArr4[i8];
            e8.M(4);
            j10 += (long) iArr2[i8];
            i8++;
            iArr = iArr2;
            jArr3 = jArr4;
            jArr2 = jArr5;
            jArr = jArr;
            iF = i9;
            j11 = j13;
            j12 = jZ2;
        }
        return Pair.create(Long.valueOf(jZ), new C0379l(iArr, jArr, jArr2, jArr3));
    }

    public final void c() {
        this.f27744s = 0;
        this.f27747v = 0;
    }

    @Override // W0.s
    public final void d(u uVar) {
        int i8;
        int i9 = this.f27727b;
        if ((i9 & 32) == 0) {
            uVar = new n(uVar, this.f27726a);
        }
        this.f27720I = uVar;
        c();
        L[] lArr = new L[2];
        this.f27721J = lArr;
        int i10 = 0;
        L l4 = this.f27741p;
        if (l4 != null) {
            lArr[0] = l4;
            i8 = 1;
        } else {
            i8 = 0;
        }
        int i11 = 100;
        if ((i9 & 4) != 0) {
            lArr[i8] = this.f27720I.t(100, 5);
            i11 = Endpoint.TARGET_FIELD_NUMBER;
            i8++;
        }
        L[] lArr2 = (L[]) M.T(i8, this.f27721J);
        this.f27721J = lArr2;
        for (L l8 : lArr2) {
            l8.b(f27711P);
        }
        List list = this.f27728c;
        this.f27722K = new L[list.size()];
        while (i10 < this.f27722K.length) {
            L lT = this.f27720I.t(i11, 3);
            lT.b((C3136t) list.get(i10));
            this.f27722K[i10] = lT;
            i10++;
            i11++;
        }
    }

    @Override // W0.s
    public final boolean g(t tVar) {
        d0 d0VarX;
        W0.J jB = o.b(tVar, true, false);
        if (jB != null) {
            d0VarX = H.x(jB);
        } else {
            F f8 = H.f31804H;
            d0VarX = d0.f31844K;
        }
        this.f27743r = d0VarX;
        return jB == null;
    }

    /* JADX WARN: Code duplicated, block: B:115:0x020d  */
    /* JADX WARN: Code duplicated, block: B:133:0x0262  */
    /* JADX WARN: Code duplicated, block: B:137:0x0272  */
    /* JADX WARN: Code duplicated, block: B:522:0x028b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:524:0x027f A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    @Override // W0.s
    public final int h(t tVar, w wVar) throws P {
        C3051s c3051s;
        E e8;
        ArrayDeque arrayDeque;
        J j8;
        int i8;
        h hVar;
        h hVar2;
        ArrayDeque arrayDeque2;
        J j9;
        h hVar3;
        int i9;
        ArrayDeque arrayDeque3;
        p pVar;
        int iF;
        int i10;
        int iL;
        int i11;
        int i12;
        String str;
        long jZ;
        long jB;
        String str2;
        long j10;
        long jA;
        while (true) {
            int i13 = this.f27744s;
            ArrayDeque arrayDeque4 = this.f27738m;
            SparseArray sparseArray = this.f27729d;
            c3051s = this.f27740o;
            e8 = this.f27734i;
            p032e0.u uVar = this.f27742q;
            if (i13 != 0) {
                arrayDeque = this.f27739n;
                j8 = this.f27735j;
                i8 = this.f27727b;
                if (i13 != 1) {
                    long j11 = Long.MAX_VALUE;
                    if (i13 != 2) {
                        hVar = this.f27714C;
                        if (hVar != null) {
                            break;
                        }
                        int size = sparseArray.size();
                        h hVar4 = null;
                        int i14 = 0;
                        while (i14 < size) {
                            h hVar5 = (h) sparseArray.valueAt(i14);
                            boolean z7 = hVar5.f27709m;
                            if (z7 || hVar5.f27702f != hVar5.f27700d.f27833b) {
                                r rVar = hVar5.f27698b;
                                if (z7) {
                                    i12 = size;
                                    if (hVar5.f27704h == rVar.f27818d) {
                                    }
                                } else {
                                    i12 = size;
                                }
                                long j12 = !z7 ? hVar5.f27700d.f27834c[hVar5.f27702f] : rVar.f27820f[hVar5.f27704h];
                                if (j12 < j11) {
                                    hVar4 = hVar5;
                                    j11 = j12;
                                }
                            } else {
                                i12 = size;
                            }
                            i14++;
                            size = i12;
                        }
                        if (hVar4 != null) {
                            int iR = (int) ((!hVar4.f27709m ? hVar4.f27700d.f27834c[hVar4.f27702f] : hVar4.f27698b.f27820f[hVar4.f27704h]) - tVar.r());
                            if (iR < 0) {
                                x.f("FragmentedMp4Extractor", "Ignoring negative offset to sample data.");
                                iR = 0;
                            }
                            tVar.n(iR);
                            this.f27714C = hVar4;
                            hVar = hVar4;
                            break;
                        }
                        int iR2 = (int) (this.f27749x - tVar.r());
                        if (iR2 < 0) {
                            throw P.a("Offset to end of mdat was negative.", null);
                        }
                        tVar.n(iR2);
                        c();
                    } else {
                        int size2 = sparseArray.size();
                        h hVar6 = null;
                        for (int i15 = 0; i15 < size2; i15++) {
                            r rVar2 = ((h) sparseArray.valueAt(i15)).f27698b;
                            if (rVar2.f27829o) {
                                long j13 = rVar2.f27817c;
                                if (j13 < j11) {
                                    hVar6 = (h) sparseArray.valueAt(i15);
                                    j11 = j13;
                                }
                            }
                        }
                        if (hVar6 == null) {
                            this.f27744s = 3;
                        } else {
                            int iR3 = (int) (j11 - tVar.r());
                            if (iR3 < 0) {
                                throw P.a("Offset to encryption data was negative.", null);
                            }
                            tVar.n(iR3);
                            r rVar3 = hVar6.f27698b;
                            E e9 = rVar3.f27828n;
                            tVar.readFully(e9.f28035a, 0, e9.f28037c);
                            e9.L(0);
                            rVar3.f27829o = false;
                        }
                    }
                } else {
                    int i16 = (int) (this.f27746u - ((long) this.f27747v));
                    E e10 = this.f27748w;
                    if (e10 != null) {
                        tVar.readFully(e10.f28035a, 8, i16);
                        d dVar = new d(this.f27745t, e10);
                        if (arrayDeque4.isEmpty()) {
                            int i17 = dVar.f29448b;
                            if (i17 == 1936286840) {
                                Pair pairK = k(tVar.r(), e10);
                                uVar.a((C0379l) pairK.second);
                                if (!this.f27723L) {
                                    this.f27713B = ((Long) pairK.first).longValue();
                                    this.f27720I.r((W0.F) pairK.second);
                                    this.f27723L = true;
                                } else if ((i8 & 256) != 0 && !this.f27724M && uVar.f24776a.size() > 1) {
                                    this.f27725N = tVar.r();
                                }
                            } else if (i17 == 1701671783 && this.f27721J.length != 0) {
                                e10.L(8);
                                int iE = e.e(e10.l());
                                if (iE == 0) {
                                    String strU = e10.u();
                                    strU.getClass();
                                    String strU2 = e10.u();
                                    strU2.getClass();
                                    long jB2 = e10.B();
                                    long jB3 = e10.B();
                                    RoundingMode roundingMode = RoundingMode.DOWN;
                                    long jZ2 = M.Z(jB3, 1000000L, jB2, roundingMode);
                                    long j14 = this.f27713B;
                                    long j15 = j14 != -9223372036854775807L ? j14 + jZ2 : -9223372036854775807L;
                                    str = strU;
                                    jZ = M.Z(e10.B(), 1000L, jB2, roundingMode);
                                    jB = e10.B();
                                    str2 = strU2;
                                    j10 = jZ2;
                                    jA = j15;
                                } else if (iE != 1) {
                                    U2.v("Skipping unsupported emsg version: ", iE, "FragmentedMp4Extractor");
                                } else {
                                    long jB4 = e10.B();
                                    long jE = e10.E();
                                    RoundingMode roundingMode2 = RoundingMode.DOWN;
                                    long jZ3 = M.Z(jE, 1000000L, jB4, roundingMode2);
                                    long jZ4 = M.Z(e10.B(), 1000L, jB4, roundingMode2);
                                    long jB5 = e10.B();
                                    String strU3 = e10.u();
                                    strU3.getClass();
                                    String strU4 = e10.u();
                                    strU4.getClass();
                                    str = strU3;
                                    jZ = jZ4;
                                    jB = jB5;
                                    str2 = strU4;
                                    jA = jZ3;
                                    j10 = -9223372036854775807L;
                                }
                                byte[] bArr = new byte[e10.a()];
                                e10.j(0, bArr, e10.a());
                                E e11 = new E(this.f27736k.c(new a(str, str2, jZ, jB, bArr)));
                                int iA = e11.a();
                                for (L l4 : this.f27721J) {
                                    e11.L(0);
                                    l4.e(iA, e11);
                                }
                                if (jA == -9223372036854775807L) {
                                    arrayDeque.addLast(new g(iA, j10, true));
                                    this.f27750y += iA;
                                } else if (!arrayDeque.isEmpty()) {
                                    arrayDeque.addLast(new g(iA, jA, false));
                                    this.f27750y += iA;
                                } else if (j8 == null || j8.f()) {
                                    if (j8 != null) {
                                        jA = j8.a(jA);
                                    }
                                    for (L l8 : this.f27721J) {
                                        l8.d(jA, 1, iA, 0, null);
                                    }
                                } else {
                                    arrayDeque.addLast(new g(iA, jA, false));
                                    this.f27750y += iA;
                                }
                            }
                        } else {
                            ((c) arrayDeque4.peek()).f29444d.add(dVar);
                        }
                    } else {
                        tVar.n(i16);
                    }
                    l(tVar.r());
                }
            } else {
                int i18 = this.f27747v;
                long length = 0;
                E e12 = this.f27737l;
                if (i18 == 0) {
                    if (!tVar.b(e12.f28035a, 0, 8, true)) {
                        long j16 = this.f27725N;
                        if (j16 == -1) {
                            c3051s.c(0);
                            return -1;
                        }
                        wVar.f7458a = j16;
                        this.f27725N = -1L;
                        u uVar2 = this.f27720I;
                        uVar.getClass();
                        ArrayList arrayList = new ArrayList();
                        ArrayList arrayList2 = new ArrayList();
                        ArrayList arrayList3 = new ArrayList();
                        ArrayList arrayList4 = new ArrayList();
                        for (C0379l c0379l : uVar.f24776a.values()) {
                            arrayList.add(c0379l.f7429b);
                            arrayList2.add(c0379l.f7430c);
                            arrayList3.add(c0379l.f7431d);
                            arrayList4.add(c0379l.f7432e);
                        }
                        int[][] iArr = (int[][]) arrayList.toArray(new int[arrayList.size()][]);
                        for (int[] iArr2 : iArr) {
                            length += (long) iArr2.length;
                        }
                        int i19 = (int) length;
                        p190y4.k.n(length, "the total number of elements (%s) in the arrays must fit in an int", length == ((long) i19));
                        int[] iArr3 = new int[i19];
                        int length2 = 0;
                        for (int[] iArr4 : iArr) {
                            System.arraycopy(iArr4, 0, iArr3, length2, iArr4.length);
                            length2 += iArr4.length;
                        }
                        uVar2.r(new C0379l(iArr3, q0.m((long[][]) arrayList2.toArray(new long[arrayList2.size()][])), q0.m((long[][]) arrayList3.toArray(new long[arrayList3.size()][])), q0.m((long[][]) arrayList4.toArray(new long[arrayList4.size()][]))));
                        this.f27724M = true;
                        return 1;
                    }
                    this.f27747v = 8;
                    e12.L(0);
                    this.f27746u = e12.B();
                    this.f27745t = e12.l();
                }
                long j17 = this.f27746u;
                if (j17 == 1) {
                    tVar.readFully(e12.f28035a, 8, 8);
                    this.f27747v += 8;
                    this.f27746u = e12.E();
                } else if (j17 == 0) {
                    long j18 = tVar.j();
                    if (j18 == -1 && !arrayDeque4.isEmpty()) {
                        j18 = ((c) arrayDeque4.peek()).f29443c;
                    }
                    if (j18 != -1) {
                        this.f27746u = (j18 - tVar.r()) + ((long) this.f27747v);
                    }
                }
                long j19 = this.f27746u;
                long j20 = this.f27747v;
                if (j19 < j20) {
                    throw P.c("Atom size less than header length (unsupported).");
                }
                if (this.f27725N != -1) {
                    if (this.f27745t == 1936286840) {
                        e8.I((int) j19);
                        System.arraycopy(e12.f28035a, 0, e8.f28035a, 0, 8);
                        tVar.readFully(e8.f28035a, 8, (int) (this.f27746u - ((long) this.f27747v)));
                        uVar.a((C0379l) k(tVar.f(), e8).second);
                    } else {
                        tVar.d((int) (j19 - j20), true);
                    }
                    c();
                } else {
                    long jR = tVar.r() - ((long) this.f27747v);
                    int i20 = this.f27745t;
                    if ((i20 == 1836019558 || i20 == 1835295092) && !this.f27723L) {
                        this.f27720I.r(new W0.x(this.f27712A, jR));
                        this.f27723L = true;
                    }
                    if (this.f27745t == 1836019558) {
                        int size3 = sparseArray.size();
                        for (int i21 = 0; i21 < size3; i21++) {
                            r rVar4 = ((h) sparseArray.valueAt(i21)).f27698b;
                            rVar4.getClass();
                            rVar4.f27817c = jR;
                            rVar4.f27816b = jR;
                        }
                    }
                    int i22 = this.f27745t;
                    if (i22 == 1835295092) {
                        this.f27714C = null;
                        this.f27749x = jR + this.f27746u;
                        this.f27744s = 2;
                    } else if (i22 == 1836019574 || i22 == 1953653099 || i22 == 1835297121 || i22 == 1835626086 || i22 == 1937007212 || i22 == 1836019558 || i22 == 1953653094 || i22 == 1836475768 || i22 == 1701082227 || i22 == 1835365473) {
                        long jR2 = tVar.r();
                        long j21 = this.f27746u;
                        long j22 = (jR2 + j21) - 8;
                        if (j21 != this.f27747v && this.f27745t == 1835365473) {
                            e8.I(8);
                            tVar.c(0, e8.f28035a, 8);
                            e.a(e8);
                            tVar.n(e8.f28036b);
                            tVar.m();
                        }
                        arrayDeque4.push(new c(this.f27745t, j22));
                        if (this.f27746u == this.f27747v) {
                            l(j22);
                        } else {
                            c();
                        }
                    } else if (i22 == 1751411826 || i22 == 1835296868 || i22 == 1836476516 || i22 == 1936286840 || i22 == 1937011556 || i22 == 1937011827 || i22 == 1668576371 || i22 == 1937011555 || i22 == 1937011578 || i22 == 1937013298 || i22 == 1937007471 || i22 == 1668232756 || i22 == 1937011571 || i22 == 1952867444 || i22 == 1952868452 || i22 == 1953196132 || i22 == 1953654136 || i22 == 1953658222 || i22 == 1886614376 || i22 == 1935763834 || i22 == 1935763823 || i22 == 1936027235 || i22 == 1970628964 || i22 == 1935828848 || i22 == 1936158820 || i22 == 1701606260 || i22 == 1835362404 || i22 == 1701671783 || i22 == 1969517665 || i22 == 1801812339 || i22 == 1768715124) {
                        if (this.f27747v != 8) {
                            throw P.c("Leaf atom defines extended atom size (unsupported).");
                        }
                        if (this.f27746u > 2147483647L) {
                            throw P.c("Leaf atom with length > 2147483647 (unsupported).");
                        }
                        E e13 = new E((int) this.f27746u);
                        System.arraycopy(e12.f28035a, 0, e13.f28035a, 0, 8);
                        this.f27748w = e13;
                        this.f27744s = 1;
                    } else {
                        if (this.f27746u > 2147483647L) {
                            throw P.c("Skipping atom with length > 2147483647 (unsupported).");
                        }
                        this.f27748w = null;
                        this.f27744s = 1;
                    }
                }
            }
        }
        int i23 = this.f27744s;
        r rVar5 = hVar.f27698b;
        if (i23 == 3) {
            this.f27715D = !hVar.f27709m ? hVar.f27700d.f27835d[hVar.f27702f] : rVar5.f27822h[hVar.f27702f];
            C3136t c3136t = hVar.f27700d.f27832a.f27804g;
            this.f27718G = !(!Objects.equals(c3136t.f27041o, "video/avc") ? !Objects.equals(c3136t.f27041o, "video/hevc") || (i8 & 128) == 0 : (i8 & 64) == 0);
            if (hVar.f27702f < hVar.f27705i) {
                tVar.n(this.f27715D);
                q qVarB = hVar.b();
                if (qVarB != null) {
                    E e14 = rVar5.f27828n;
                    int i24 = qVarB.f27813d;
                    if (i24 != 0) {
                        e14.M(i24);
                    }
                    int i25 = hVar.f27702f;
                    if (rVar5.f27825k && rVar5.f27826l[i25]) {
                        e14.M(e14.F() * 6);
                    }
                }
                if (!hVar.c()) {
                    this.f27714C = null;
                }
                this.f27744s = 3;
                return 0;
            }
            if (hVar.f27700d.f27832a.f27805h == 1) {
                this.f27715D -= 8;
                tVar.n(8);
            }
            if ("audio/ac4".equals(hVar.f27700d.f27832a.f27804g.f27041o)) {
                this.f27716E = hVar.d(this.f27715D, 7);
                AbstractC0368a.b(this.f27715D, e8);
                hVar.f27697a.e(7, e8);
                this.f27716E += 7;
                i11 = 0;
            } else {
                i11 = 0;
                this.f27716E = hVar.d(this.f27715D, 0);
            }
            this.f27715D += this.f27716E;
            this.f27744s = 4;
            this.f27717F = i11;
        }
        s sVar = hVar.f27700d;
        p pVar2 = sVar.f27832a;
        long jA2 = hVar.f27709m ? rVar5.f27823i[hVar.f27702f] : sVar.f27837f[hVar.f27702f];
        if (j8 != null) {
            jA2 = j8.a(jA2);
        }
        int i26 = pVar2.f27808k;
        L l9 = hVar.f27697a;
        if (i26 == 0) {
            hVar2 = hVar;
            arrayDeque2 = arrayDeque;
            j9 = j8;
            while (true) {
                int i27 = this.f27716E;
                int i28 = this.f27715D;
                if (i27 >= i28) {
                    break;
                }
                this.f27716E += l9.f(tVar, i28 - i27, false);
            }
        } else {
            E e15 = this.f27731f;
            byte[] bArr2 = e15.f28035a;
            bArr2[0] = 0;
            bArr2[1] = 0;
            bArr2[2] = 0;
            int i29 = 4 - i26;
            while (true) {
                j9 = j8;
                if (this.f27716E >= this.f27715D) {
                    hVar2 = hVar;
                    arrayDeque2 = arrayDeque;
                    break;
                }
                int i30 = this.f27717F;
                C3136t c3136t2 = pVar2.f27804g;
                if (i30 == 0) {
                    int length3 = this.f27722K.length;
                    arrayDeque3 = arrayDeque;
                    int i31 = pVar2.f27808k;
                    if (length3 > 0 || !this.f27718G) {
                        int iE2 = p.e(c3136t2);
                        pVar = pVar2;
                        hVar3 = hVar;
                        i10 = i31 + iE2 <= this.f27715D - this.f27716E ? iE2 : 0;
                        tVar.readFully(bArr2, i29, i31 + i10);
                        e15.L(0);
                        iL = e15.l();
                        if (iL >= 0) {
                            throw P.a("Invalid NAL length", null);
                        }
                        this.f27717F = iL - i10;
                        E e16 = this.f27730e;
                        e16.L(0);
                        l9.e(4, e16);
                        this.f27716E += 4;
                        this.f27715D += i29;
                        if (this.f27722K.length > 0 || i10 <= 0) {
                            i9 = i29;
                        } else {
                            byte b8 = bArr2[4];
                            byte[] bArr3 = p.f29508a;
                            boolean zEquals = Objects.equals(c3136t2.f27041o, "video/avc");
                            String str3 = c3136t2.f27037k;
                            if (zEquals || O.c(str3, "video/avc") != null) {
                                i9 = i29;
                                if ((b8 & 31) != 6) {
                                }
                                this.f27719H = z;
                                l9.e(i10, e15);
                                this.f27716E += i10;
                                if (i10 <= 0 && !this.f27718G && p.d(bArr2, i10, c3136t2)) {
                                    this.f27718G = true;
                                }
                            } else {
                                i9 = i29;
                            }
                            boolean z8 = (Objects.equals(c3136t2.f27041o, "video/hevc") || O.c(str3, "video/hevc") != null) && ((b8 & 126) >> 1) == 39;
                            this.f27719H = z8;
                            l9.e(i10, e15);
                            this.f27716E += i10;
                            if (i10 <= 0) {
                            }
                        }
                        this.f27719H = z8;
                        l9.e(i10, e15);
                        this.f27716E += i10;
                        if (i10 <= 0) {
                        }
                    } else {
                        hVar3 = hVar;
                        pVar = pVar2;
                    }
                    tVar.readFully(bArr2, i29, i31 + i10);
                    e15.L(0);
                    iL = e15.l();
                    if (iL >= 0) {
                        throw P.a("Invalid NAL length", null);
                    }
                    this.f27717F = iL - i10;
                    E e17 = this.f27730e;
                    e17.L(0);
                    l9.e(4, e17);
                    this.f27716E += 4;
                    this.f27715D += i29;
                    if (this.f27722K.length > 0) {
                        i9 = i29;
                    } else {
                        i9 = i29;
                    }
                    this.f27719H = z8;
                    l9.e(i10, e15);
                    this.f27716E += i10;
                    if (i10 <= 0) {
                    }
                } else {
                    hVar3 = hVar;
                    i9 = i29;
                    arrayDeque3 = arrayDeque;
                    pVar = pVar2;
                    if (this.f27719H) {
                        E e18 = this.f27732g;
                        e18.I(i30);
                        tVar.readFully(e18.f28035a, 0, this.f27717F);
                        l9.e(this.f27717F, e18);
                        iF = this.f27717F;
                        int iM = p.m(e18.f28037c, e18.f28035a);
                        e18.L(0);
                        e18.K(iM);
                        int i32 = c3136t2.f27043q;
                        if (i32 == -1) {
                            if (c3051s.f26368a != 0) {
                                c3051s.j(0);
                            }
                        } else if (c3051s.f26368a != i32) {
                            c3051s.j(i32);
                        }
                        c3051s.a(jA2, e18);
                        if ((hVar3.a() & 4) != 0) {
                            c3051s.c(0);
                        }
                    } else {
                        iF = l9.f(tVar, i30, false);
                    }
                    this.f27716E += iF;
                    this.f27717F -= iF;
                }
                pVar2 = pVar;
                j8 = j9;
                i29 = i9;
                arrayDeque = arrayDeque3;
                hVar = hVar3;
            }
        }
        int iA2 = hVar2.a();
        if (!this.f27718G) {
            iA2 |= 67108864;
        }
        int i33 = iA2;
        q qVarB2 = hVar2.b();
        l9.d(jA2, i33, this.f27715D, 0, qVarB2 != null ? qVarB2.f27812c : null);
        while (!arrayDeque2.isEmpty()) {
            g gVar = (g) arrayDeque2.removeFirst();
            this.f27750y -= gVar.f27696c;
            boolean z9 = gVar.f27695b;
            long jA3 = gVar.f27694a;
            if (z9) {
                jA3 += jA2;
            }
            J j23 = j9;
            if (j9 != null) {
                jA3 = j23.a(jA3);
            }
            for (L l10 : this.f27721J) {
                l10.d(jA3, 1, gVar.f27696c, this.f27750y, null);
            }
            j9 = j23;
        }
        if (!hVar2.c()) {
            this.f27714C = null;
        }
        this.f27744s = 3;
        return 0;
    }

    @Override // W0.s
    public final void i(long j8, long j9) {
        SparseArray sparseArray = this.f27729d;
        int size = sparseArray.size();
        for (int i8 = 0; i8 < size; i8++) {
            ((h) sparseArray.valueAt(i8)).e();
        }
        this.f27739n.clear();
        this.f27750y = 0;
        ((PriorityQueue) this.f27740o.f26372e).clear();
        this.f27751z = j9;
        this.f27738m.clear();
        c();
    }

    @Override // W0.s
    public final List j() {
        return this.f27743r;
    }

    /* JADX WARN: Code duplicated, block: B:115:0x031d  */
    /* JADX WARN: Code duplicated, block: B:332:0x07a1  */
    public final void l(long j8) throws P {
        i iVar;
        SparseArray sparseArray;
        ArrayList arrayList;
        int i8;
        int i9;
        ArrayList arrayList2;
        int i10;
        i iVar2;
        int i11;
        byte[] bArr;
        int i12;
        boolean z7;
        int i13;
        ArrayList arrayList3;
        h hVar;
        int i14;
        boolean z8;
        boolean z9;
        boolean z10;
        int i15;
        h hVar2;
        long[] jArr;
        int i16;
        N n7;
        f fVar;
        int i17;
        int i18;
        f fVar2;
        int i19;
        ArrayList arrayList4;
        i iVar3 = this;
        while (true) {
            int i20 = 1;
            ArrayDeque arrayDeque = iVar3.f27738m;
            if (arrayDeque.isEmpty() || ((c) arrayDeque.peek()).f29443c != j8) {
                break;
            }
            c cVar = (c) arrayDeque.pop();
            int i21 = cVar.f29448b;
            SparseArray sparseArray2 = iVar3.f27729d;
            ArrayList arrayList5 = cVar.f29444d;
            int i22 = iVar3.f27727b;
            int i23 = 12;
            if (i21 == 1836019574) {
                C3131n c3131nE = e(arrayList5);
                c cVarE = cVar.e(1836475768);
                cVarE.getClass();
                SparseArray sparseArray3 = new SparseArray();
                ArrayList arrayList6 = cVarE.f29444d;
                int size = arrayList6.size();
                long jB = -9223372036854775807L;
                int i24 = 0;
                while (i24 < size) {
                    d dVar = (d) arrayList6.get(i24);
                    int i25 = dVar.f29448b;
                    E e8 = dVar.f29446c;
                    if (i25 == 1953654136) {
                        e8.L(i23);
                        arrayList4 = arrayList6;
                        Pair pairCreate = Pair.create(Integer.valueOf(e8.l()), new f(e8.l() - i20, e8.l(), e8.l(), e8.l()));
                        sparseArray3.put(((Integer) pairCreate.first).intValue(), (f) pairCreate.second);
                    } else {
                        arrayList4 = arrayList6;
                        if (i25 == 1835362404) {
                            e8.L(8);
                            jB = e.e(e8.l()) == 0 ? e8.B() : e8.E();
                        }
                    }
                    i24++;
                    arrayList6 = arrayList4;
                    i20 = 1;
                    i23 = 12;
                }
                c cVarE2 = cVar.e(1835365473);
                N nF = cVarE2 != null ? e.f(cVarE2) : null;
                A a8 = new A();
                d dVarF = cVar.f(1969517665);
                if (dVarF != null) {
                    N nK = e.k(dVarF);
                    a8.b(nK);
                    n7 = nK;
                } else {
                    n7 = null;
                }
                d dVarF2 = cVar.f(1836476516);
                dVarF2.getClass();
                N n8 = new N(e.g(dVarF2.f29446c));
                ArrayList arrayListJ = e.j(cVar, a8, jB, c3131nE, (i22 & 16) != 0, false, new K0(iVar3));
                int size2 = arrayListJ.size();
                if (sparseArray2.size() == 0) {
                    String strP = H1.p(arrayListJ);
                    int i26 = 0;
                    while (i26 < size2) {
                        s sVar = (s) arrayListJ.get(i26);
                        p pVar = sVar.f27832a;
                        L lT = iVar3.f27720I.t(i26, pVar.f27799b);
                        lT.getClass();
                        C3136t c3136t = pVar.f27804g;
                        C3135s c3135sA = c3136t.a();
                        ArrayList arrayList7 = arrayListJ;
                        c3135sA.f26995m = O.p(strP);
                        int i27 = pVar.f27799b;
                        String str = strP;
                        if (i27 == 1) {
                            int i28 = a8.f7303a;
                            i17 = size2;
                            i18 = i26;
                            if (i28 != -1 && (i19 = a8.f7304b) != -1) {
                                c3135sA.f26976I = i28;
                                c3135sA.f26977J = i19;
                            }
                        } else {
                            i17 = size2;
                            i18 = i26;
                        }
                        Z3.H.u(i27, nF, c3135sA, c3136t.f27038l, n7, n8);
                        int size3 = sparseArray3.size();
                        int i29 = pVar.f27798a;
                        if (size3 == 1) {
                            fVar2 = (f) sparseArray3.valueAt(0);
                        } else {
                            fVar2 = (f) sparseArray3.get(i29);
                            fVar2.getClass();
                        }
                        sparseArray2.put(i29, new h(lT, sVar, fVar2, new C3136t(c3135sA)));
                        iVar3.f27712A = Math.max(iVar3.f27712A, pVar.f27802e);
                        i26 = i18 + 1;
                        arrayListJ = arrayList7;
                        strP = str;
                        size2 = i17;
                    }
                    iVar3.f27720I.j();
                } else {
                    ArrayList arrayList8 = arrayListJ;
                    H1.i(sparseArray2.size() == size2);
                    int i30 = 0;
                    while (i30 < size2) {
                        ArrayList arrayList9 = arrayList8;
                        s sVar2 = (s) arrayList9.get(i30);
                        p pVar2 = sVar2.f27832a;
                        h hVar3 = (h) sparseArray2.get(pVar2.f27798a);
                        if (sparseArray3.size() == 1) {
                            fVar = (f) sparseArray3.valueAt(0);
                        } else {
                            fVar = (f) sparseArray3.get(pVar2.f27798a);
                            fVar.getClass();
                        }
                        hVar3.f27700d = sVar2;
                        hVar3.f27701e = fVar;
                        hVar3.f27697a.b(hVar3.f27706j);
                        hVar3.e();
                        i30++;
                        arrayList8 = arrayList9;
                    }
                }
                iVar = iVar3;
            } else {
                SparseArray sparseArray4 = sparseArray2;
                if (i21 == 1836019558) {
                    ArrayList arrayList10 = cVar.f29445e;
                    int size4 = arrayList10.size();
                    int i31 = 0;
                    while (i31 < size4) {
                        c cVar2 = (c) arrayList10.get(i31);
                        if (cVar2.f29448b == 1953653094) {
                            d dVarF3 = cVar2.f(1952868452);
                            dVarF3.getClass();
                            E e9 = dVarF3.f29446c;
                            e9.L(8);
                            int iL = e9.l();
                            byte[] bArr2 = e.f27689a;
                            h hVar4 = (h) sparseArray4.get(e9.l());
                            if (hVar4 == null) {
                                hVar4 = null;
                            } else {
                                int i32 = iL & 1;
                                r rVar = hVar4.f27698b;
                                if (i32 != 0) {
                                    long jE = e9.E();
                                    rVar.f27816b = jE;
                                    rVar.f27817c = jE;
                                }
                                f fVar3 = hVar4.f27701e;
                                rVar.f27815a = new f((iL & 2) != 0 ? e9.l() - 1 : fVar3.f27690a, (iL & 8) != 0 ? e9.l() : fVar3.f27691b, (iL & 16) != 0 ? e9.l() : fVar3.f27692c, (iL & 32) != 0 ? e9.l() : fVar3.f27693d);
                            }
                            if (hVar4 != null) {
                                r rVar2 = hVar4.f27698b;
                                long j9 = rVar2.f27830p;
                                boolean z11 = rVar2.f27831q;
                                hVar4.e();
                                hVar4.f27709m = true;
                                d dVarF4 = cVar2.f(1952867444);
                                if (dVarF4 == null || (i22 & 2) != 0) {
                                    rVar2.f27830p = j9;
                                    rVar2.f27831q = z11;
                                } else {
                                    E e10 = dVarF4.f29446c;
                                    e10.L(8);
                                    rVar2.f27830p = e.e(e10.l()) == 1 ? e10.E() : e10.B();
                                    rVar2.f27831q = true;
                                }
                                ArrayList arrayList11 = cVar2.f29444d;
                                int size5 = arrayList11.size();
                                int i33 = 0;
                                int i34 = 0;
                                int i35 = 0;
                                while (true) {
                                    i11 = 1953658222;
                                    if (i33 >= size5) {
                                        break;
                                    }
                                    ArrayList arrayList12 = arrayList10;
                                    d dVar2 = (d) arrayList11.get(i33);
                                    int i36 = size4;
                                    if (dVar2.f29448b == 1953658222) {
                                        E e11 = dVar2.f29446c;
                                        e11.L(12);
                                        int iD = e11.D();
                                        if (iD > 0) {
                                            i35 += iD;
                                            i16 = 1;
                                            i34++;
                                        } else {
                                            i16 = 1;
                                        }
                                    } else {
                                        i16 = 1;
                                    }
                                    i33 += i16;
                                    size4 = i36;
                                    arrayList10 = arrayList12;
                                }
                                arrayList = arrayList10;
                                i8 = size4;
                                hVar4.f27704h = 0;
                                hVar4.f27703g = 0;
                                hVar4.f27702f = 0;
                                rVar2.f27818d = i34;
                                rVar2.f27819e = i35;
                                if (rVar2.f27821g.length < i34) {
                                    rVar2.f27820f = new long[i34];
                                    rVar2.f27821g = new int[i34];
                                }
                                if (rVar2.f27822h.length < i35) {
                                    int i37 = (i35 * 125) / 100;
                                    rVar2.f27822h = new int[i37];
                                    rVar2.f27823i = new long[i37];
                                    rVar2.f27824j = new boolean[i37];
                                    rVar2.f27826l = new boolean[i37];
                                }
                                int i38 = 0;
                                int i39 = 0;
                                int i40 = 0;
                                while (true) {
                                    long j10 = 0;
                                    if (i38 >= size5) {
                                        sparseArray = sparseArray4;
                                        ArrayList arrayList13 = arrayList11;
                                        i9 = i31;
                                        c cVar3 = cVar2;
                                        arrayList2 = arrayList5;
                                        i10 = i22;
                                        p pVar3 = hVar4.f27700d.f27832a;
                                        f fVar4 = rVar2.f27815a;
                                        fVar4.getClass();
                                        q[] qVarArr = pVar3.f27809l;
                                        q qVar = qVarArr == null ? null : qVarArr[fVar4.f27690a];
                                        d dVarF5 = cVar3.f(1935763834);
                                        if (dVarF5 != null) {
                                            qVar.getClass();
                                            E e12 = dVarF5.f29446c;
                                            e12.L(8);
                                            int iL2 = e12.l();
                                            byte[] bArr3 = e.f27689a;
                                            if ((iL2 & 1) == 1) {
                                                e12.M(8);
                                            }
                                            int iZ = e12.z();
                                            int iD2 = e12.D();
                                            if (iD2 > rVar2.f27819e) {
                                                StringBuilder sbK = r.k("Saiz sample count ", iD2, " is greater than fragment sample count");
                                                sbK.append(rVar2.f27819e);
                                                throw P.a(sbK.toString(), null);
                                            }
                                            int i41 = qVar.f27813d;
                                            if (iZ == 0) {
                                                boolean[] zArr = rVar2.f27826l;
                                                i12 = 0;
                                                for (int i42 = 0; i42 < iD2; i42++) {
                                                    int iZ2 = e12.z();
                                                    i12 += iZ2;
                                                    zArr[i42] = iZ2 > i41;
                                                }
                                                z7 = false;
                                            } else {
                                                boolean z12 = iZ > i41;
                                                i12 = iZ * iD2;
                                                z7 = false;
                                                Arrays.fill(rVar2.f27826l, 0, iD2, z12);
                                            }
                                            Arrays.fill(rVar2.f27826l, iD2, rVar2.f27819e, z7);
                                            if (i12 > 0) {
                                                rVar2.f27828n.I(i12);
                                                rVar2.f27825k = true;
                                                rVar2.f27829o = true;
                                            }
                                        }
                                        d dVarF6 = cVar3.f(1935763823);
                                        if (dVarF6 != null) {
                                            E e13 = dVarF6.f29446c;
                                            e13.L(8);
                                            int iL3 = e13.l();
                                            byte[] bArr4 = e.f27689a;
                                            if ((iL3 & 1) == 1) {
                                                e13.M(8);
                                            }
                                            int iD3 = e13.D();
                                            if (iD3 != 1) {
                                                throw P.a("Unexpected saio entry count: " + iD3, null);
                                            }
                                            rVar2.f27817c += e.e(iL3) == 0 ? e13.B() : e13.E();
                                        }
                                        d dVarF7 = cVar3.f(1936027235);
                                        if (dVarF7 != null) {
                                            f(dVarF7.f29446c, 0, rVar2);
                                        }
                                        String str2 = qVar != null ? qVar.f27811b : null;
                                        E e14 = null;
                                        E e15 = null;
                                        int i43 = 0;
                                        while (i43 < arrayList13.size()) {
                                            ArrayList arrayList14 = arrayList13;
                                            d dVar3 = (d) arrayList14.get(i43);
                                            E e16 = dVar3.f29446c;
                                            int i44 = dVar3.f29448b;
                                            if (i44 == 1935828848) {
                                                e16.L(12);
                                                if (e16.l() == 1936025959) {
                                                    e15 = e16;
                                                }
                                            } else if (i44 == 1936158820) {
                                                e16.L(12);
                                                if (e16.l() == 1936025959) {
                                                    e14 = e16;
                                                }
                                            }
                                            i43++;
                                            arrayList13 = arrayList14;
                                        }
                                        ArrayList arrayList15 = arrayList13;
                                        if (e15 != null && e14 != null) {
                                            e15.L(8);
                                            int iE = e.e(e15.l());
                                            e15.M(4);
                                            if (iE == 1) {
                                                e15.M(4);
                                            }
                                            if (e15.l() != 1) {
                                                throw P.c("Entry count in sbgp != 1 (unsupported).");
                                            }
                                            e14.L(8);
                                            int iE2 = e.e(e14.l());
                                            e14.M(4);
                                            if (iE2 == 1) {
                                                if (e14.B() == 0) {
                                                    throw P.c("Variable length description in sgpd found (unsupported)");
                                                }
                                            } else if (iE2 >= 2) {
                                                e14.M(4);
                                            }
                                            if (e14.B() != 1) {
                                                throw P.c("Entry count in sgpd != 1 (unsupported).");
                                            }
                                            e14.M(1);
                                            int iZ3 = e14.z();
                                            int i45 = (iZ3 & 240) >> 4;
                                            int i46 = iZ3 & 15;
                                            boolean z13 = e14.z() == 1;
                                            if (z13) {
                                                int iZ4 = e14.z();
                                                byte[] bArr5 = new byte[16];
                                                e14.j(0, bArr5, 16);
                                                if (iZ4 == 0) {
                                                    int iZ5 = e14.z();
                                                    bArr = new byte[iZ5];
                                                    e14.j(0, bArr, iZ5);
                                                } else {
                                                    bArr = null;
                                                }
                                                rVar2.f27825k = true;
                                                rVar2.f27827m = new q(z13, str2, iZ4, bArr5, i45, i46, bArr);
                                            }
                                        }
                                        int size6 = arrayList15.size();
                                        for (int i47 = 0; i47 < size6; i47++) {
                                            d dVar4 = (d) arrayList15.get(i47);
                                            if (dVar4.f29448b == 1970628964) {
                                                E e17 = dVar4.f29446c;
                                                e17.L(8);
                                                byte[] bArr6 = this.f27733h;
                                                e17.j(0, bArr6, 16);
                                                if (Arrays.equals(bArr6, f27710O)) {
                                                    f(e17, 16, rVar2);
                                                }
                                            }
                                        }
                                        iVar2 = this;
                                        break;
                                    }
                                    d dVar5 = (d) arrayList11.get(i38);
                                    if (dVar5.f29448b == i11) {
                                        int i48 = i39 + 1;
                                        E e18 = dVar5.f29446c;
                                        e18.L(8);
                                        int iL4 = e18.l();
                                        byte[] bArr7 = e.f27689a;
                                        p pVar4 = hVar4.f27700d.f27832a;
                                        f fVar5 = rVar2.f27815a;
                                        String str3 = M.f28050a;
                                        rVar2.f27821g[i39] = e18.D();
                                        long[] jArr2 = rVar2.f27820f;
                                        long j11 = rVar2.f27816b;
                                        jArr2[i39] = j11;
                                        if ((iL4 & 1) != 0) {
                                            jArr2[i39] = j11 + ((long) e18.l());
                                        }
                                        boolean z14 = (iL4 & 4) != 0;
                                        int iL5 = fVar5.f27693d;
                                        if (z14) {
                                            iL5 = e18.l();
                                        }
                                        boolean z15 = (iL4 & 256) != 0;
                                        boolean z16 = (iL4 & IMediaList.Event.ItemAdded) != 0;
                                        boolean z17 = (iL4 & 1024) != 0;
                                        int i49 = iL5;
                                        boolean z18 = (iL4 & 2048) != 0;
                                        long[] jArr3 = pVar4.f27806i;
                                        if (jArr3 != null) {
                                            arrayList3 = arrayList11;
                                            if (jArr3.length != 1 || (jArr = pVar4.f27807j) == null) {
                                                z8 = z14;
                                                i15 = i38;
                                                z9 = z16;
                                                z10 = z17;
                                            } else {
                                                long j12 = jArr3[0];
                                                if (j12 == 0) {
                                                    z8 = z14;
                                                    i15 = i38;
                                                    z9 = z16;
                                                    z10 = z17;
                                                } else {
                                                    RoundingMode roundingMode = RoundingMode.DOWN;
                                                    z8 = z14;
                                                    i15 = i38;
                                                    long jZ = M.Z(j12, 1000000L, pVar4.f27801d, roundingMode);
                                                    z9 = z16;
                                                    z10 = z17;
                                                    if (jZ + M.Z(jArr[0], 1000000L, pVar4.f27800c, roundingMode) >= pVar4.f27802e) {
                                                    }
                                                }
                                                j10 = jArr[0];
                                            }
                                        } else {
                                            z8 = z14;
                                            arrayList3 = arrayList11;
                                            z9 = z16;
                                            z10 = z17;
                                            i15 = i38;
                                        }
                                        int[] iArr = rVar2.f27822h;
                                        long[] jArr4 = rVar2.f27823i;
                                        boolean[] zArr2 = rVar2.f27824j;
                                        boolean z19 = pVar4.f27799b == 2 && (i22 & 1) != 0;
                                        int i50 = rVar2.f27821g[i39] + i40;
                                        boolean z20 = z19;
                                        int i51 = i40;
                                        long j13 = rVar2.f27830p;
                                        while (i51 < i50) {
                                            int iL6 = z15 ? e18.l() : fVar5.f27691b;
                                            if (iL6 < 0) {
                                                throw P.a("Unexpected negative value: " + iL6, null);
                                            }
                                            int iL7 = z9 ? e18.l() : fVar5.f27692c;
                                            if (iL7 < 0) {
                                                throw P.a("Unexpected negative value: " + iL7, null);
                                            }
                                            int iL8 = z10 ? e18.l() : (i51 == 0 && z8) ? i49 : fVar5.f27693d;
                                            long jZ2 = M.Z((((long) (z18 ? e18.l() : 0)) + j13) - j10, 1000000L, pVar4.f27800c, RoundingMode.DOWN);
                                            jArr4[i51] = jZ2;
                                            if (rVar2.f27831q) {
                                                hVar2 = hVar4;
                                            } else {
                                                hVar2 = hVar4;
                                                jArr4[i51] = jZ2 + hVar2.f27700d.f27839h;
                                            }
                                            iArr[i51] = iL7;
                                            zArr2[i51] = ((iL8 >> 16) & 1) == 0 && (!z20 || i51 == 0);
                                            j13 += (long) iL6;
                                            i51++;
                                            fVar5 = fVar5;
                                            i50 = i50;
                                            z15 = z15;
                                            i22 = i22;
                                            i15 = i15;
                                            pVar4 = pVar4;
                                            z18 = z18;
                                            hVar4 = hVar2;
                                            z8 = z8;
                                        }
                                        i13 = i15;
                                        int i52 = i50;
                                        i14 = i22;
                                        hVar = hVar4;
                                        rVar2.f27830p = j13;
                                        i39 = i48;
                                        i40 = i52;
                                    } else {
                                        i13 = i38;
                                        arrayList3 = arrayList11;
                                        arrayList5 = arrayList5;
                                        hVar = hVar4;
                                        i14 = i22;
                                    }
                                    i38 = i13 + 1;
                                    hVar4 = hVar;
                                    size5 = size5;
                                    sparseArray4 = sparseArray4;
                                    i31 = i31;
                                    cVar2 = cVar2;
                                    arrayList5 = arrayList5;
                                    arrayList11 = arrayList3;
                                    i22 = i14;
                                    i11 = 1953658222;
                                }
                            } else {
                                sparseArray = sparseArray4;
                                arrayList = arrayList10;
                                i8 = size4;
                                i9 = i31;
                                arrayList2 = arrayList5;
                                i10 = i22;
                                iVar2 = iVar3;
                            }
                        } else {
                            sparseArray = sparseArray4;
                            arrayList = arrayList10;
                            i8 = size4;
                            i9 = i31;
                            arrayList2 = arrayList5;
                            i10 = i22;
                            iVar2 = iVar3;
                        }
                        i31 = i9 + 1;
                        iVar3 = iVar2;
                        size4 = i8;
                        arrayList10 = arrayList;
                        sparseArray4 = sparseArray;
                        arrayList5 = arrayList2;
                        i22 = i10;
                    }
                    iVar = iVar3;
                    SparseArray sparseArray5 = sparseArray4;
                    C3131n c3131nE2 = e(arrayList5);
                    if (c3131nE2 != null) {
                        int size7 = sparseArray5.size();
                        int i53 = 0;
                        while (i53 < size7) {
                            SparseArray sparseArray6 = sparseArray5;
                            h hVar5 = (h) sparseArray6.valueAt(i53);
                            p pVar5 = hVar5.f27700d.f27832a;
                            f fVar6 = hVar5.f27698b.f27815a;
                            String str4 = M.f28050a;
                            int i54 = fVar6.f27690a;
                            q[] qVarArr2 = pVar5.f27809l;
                            q qVar2 = qVarArr2 == null ? null : qVarArr2[i54];
                            C3131n c3131nA = c3131nE2.a(qVar2 != null ? qVar2.f27811b : null);
                            C3135s c3135sA2 = hVar5.f27706j.a();
                            c3135sA2.f27000r = c3131nA;
                            hVar5.f27697a.b(new C3136t(c3135sA2));
                            i53++;
                            sparseArray5 = sparseArray6;
                        }
                    }
                    SparseArray sparseArray7 = sparseArray5;
                    if (iVar.f27751z != -9223372036854775807L) {
                        int size8 = sparseArray7.size();
                        for (int i55 = 0; i55 < size8; i55++) {
                            h hVar6 = (h) sparseArray7.valueAt(i55);
                            long j14 = iVar.f27751z;
                            int i56 = hVar6.f27702f;
                            while (true) {
                                r rVar3 = hVar6.f27698b;
                                if (i56 >= rVar3.f27819e || rVar3.f27823i[i56] > j14) {
                                    break;
                                }
                                if (rVar3.f27824j[i56]) {
                                    hVar6.f27705i = i56;
                                }
                                i56++;
                            }
                        }
                        iVar.f27751z = -9223372036854775807L;
                    }
                } else {
                    iVar = iVar3;
                    if (!arrayDeque.isEmpty()) {
                        ((c) arrayDeque.peek()).f29445e.add(cVar);
                    }
                }
            }
            iVar3 = iVar;
        }
        c();
    }

    public i(k kVar, int i8, J j8, List list, L l4) {
        this.f27726a = kVar;
        this.f27727b = i8;
        this.f27735j = j8;
        this.f27728c = Collections.unmodifiableList(list);
        this.f27741p = l4;
        this.f27736k = new F.i(4);
        this.f27737l = new E(16);
        this.f27730e = new E(p.f29508a);
        this.f27731f = new E(6);
        this.f27732g = new E();
        byte[] bArr = new byte[16];
        this.f27733h = bArr;
        this.f27734i = new E(bArr);
        this.f27738m = new ArrayDeque();
        this.f27739n = new ArrayDeque();
        this.f27729d = new SparseArray();
        F f8 = H.f31804H;
        this.f27743r = d0.f31844K;
        this.f27712A = -9223372036854775807L;
        this.f27751z = -9223372036854775807L;
        this.f27713B = -9223372036854775807L;
        this.f27720I = u.f7457l;
        this.f27721J = new L[0];
        this.f27722K = new L[0];
        this.f27740o = new C3051s(new C0073x(this, 21));
        this.f27742q = new p032e0.u(1);
        this.f27725N = -1L;
    }

    @Override // W0.s
    public final s b() {
        return this;
    }

    @Override // W0.s
    public final void release() {
    }
}
