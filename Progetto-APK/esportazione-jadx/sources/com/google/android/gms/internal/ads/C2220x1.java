package com.google.android.gms.internal.ads;

import android.util.Pair;
import android.util.SparseArray;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.math.RoundingMode;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
import okhttp3.internal.ws.WebSocketProtocol;
import org.videolan.libvlc.interfaces.IMediaList;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.x1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2220x1 implements L {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final byte[] f21787J = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final C1804p0 f21788K;

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public int f21789A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public int f21790B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public int f21791C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public boolean f21792D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public boolean f21793E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public N f21794F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public InterfaceC1234e0[] f21795G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public InterfaceC1234e0[] f21796H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public boolean f21797I;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final V1 f21798a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f21799b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f21800c;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final byte[] f21805h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final C1534jr f21806i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final W2 f21811n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public PA f21812o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f21813p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f21814q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public long f21815r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f21816s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public C1534jr f21817t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public long f21818u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f21819v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public long f21820w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public long f21821x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public long f21822y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public C2168w1 f21823z;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final C2218x f21807j = new C2218x(3);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final C1534jr f21808k = new C1534jr(16);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final C1534jr f21802e = new C1534jr(AbstractC2008sy.f21015a);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final C1534jr f21803f = new C1534jr(5);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final C1534jr f21804g = new C1534jr();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final ArrayDeque f21809l = new ArrayDeque();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final ArrayDeque f21810m = new ArrayDeque();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final SparseArray f21801d = new SparseArray();

    static {
        K k8 = new K();
        k8.f("application/x-emsg");
        f21788K = new C1804p0(k8);
    }

    public C2220x1(C1561kH c1561kH, int i8, PA pa) {
        this.f21798a = c1561kH;
        this.f21799b = i8;
        this.f21800c = Collections.unmodifiableList(pa);
        byte[] bArr = new byte[16];
        this.f21805h = bArr;
        this.f21806i = new C1534jr(bArr);
        C1969sA c1969sA = AbstractC2073uA.f21207H;
        this.f21812o = PA.f15340K;
        this.f21821x = -9223372036854775807L;
        this.f21820w = -9223372036854775807L;
        this.f21822y = -9223372036854775807L;
        this.f21794F = N.f14836n;
        this.f21795G = new InterfaceC1234e0[0];
        this.f21796H = new InterfaceC1234e0[0];
        this.f21811n = new W2(new K4(this, 6));
    }

    public static C1672mO a(ArrayList arrayList) {
        int i8;
        K4 k8;
        int size = arrayList.size();
        int i9 = 0;
        ArrayList arrayList2 = null;
        while (i9 < size) {
            C1805p1 c1805p1 = (C1805p1) arrayList.get(i9);
            if (c1805p1.f29448b == 1886614376) {
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList();
                }
                byte[] bArr = c1805p1.f20397c.f19515a;
                C1534jr c1534jr = new C1534jr(bArr);
                if (c1534jr.f19517c < 32) {
                    i8 = i9;
                    k8 = null;
                } else {
                    c1534jr.j(0);
                    int iO = c1534jr.o();
                    int iR = c1534jr.r();
                    if (iR != iO) {
                        Zo.f("PsshAtomUtil", "Advertised atom size (" + iR + ") does not match buffer size: " + iO);
                    } else {
                        int iR2 = c1534jr.r();
                        if (iR2 != 1886614376) {
                            p000a.r.p("Atom type is not pssh: ", iR2, "PsshAtomUtil");
                        } else {
                            int iC = p125q0.e.c(c1534jr.r());
                            if (iC > 1) {
                                p000a.r.p("Unsupported pssh version: ", iC, "PsshAtomUtil");
                            } else {
                                UUID uuid = new UUID(c1534jr.D(), c1534jr.D());
                                if (iC == 1) {
                                    int iZ = c1534jr.z();
                                    UUID[] uuidArr = new UUID[iZ];
                                    int i10 = 0;
                                    while (i10 < iZ) {
                                        uuidArr[i10] = new UUID(c1534jr.D(), c1534jr.D());
                                        i10++;
                                        i9 = i9;
                                    }
                                }
                                i8 = i9;
                                int iZ2 = c1534jr.z();
                                int iO2 = c1534jr.o();
                                if (iZ2 != iO2) {
                                    Zo.f("PsshAtomUtil", "Atom data size (" + iZ2 + ") does not match the bytes left: " + iO2);
                                    k8 = null;
                                } else {
                                    c1534jr.f(0, new byte[iZ2], iZ2);
                                    k8 = new K4(uuid);
                                }
                            }
                        }
                    }
                    i8 = i9;
                    k8 = null;
                }
                UUID uuid2 = k8 == null ? null : (UUID) k8.f14301H;
                if (uuid2 == null) {
                    Zo.f("FragmentedMp4Extractor", "Skipped pssh atom (failed to extract uuid)");
                } else {
                    arrayList2.add(new C1155cO(uuid2, "video/mp4", bArr));
                }
            } else {
                i8 = i9;
            }
            i9 = i8 + 1;
        }
        if (arrayList2 == null) {
            return null;
        }
        return new C1672mO(null, false, (C1155cO[]) arrayList2.toArray(new C1155cO[0]));
    }

    public static void g(C1534jr c1534jr, int i8, F1 f8) throws C0800Ka {
        c1534jr.j(i8 + 8);
        int iR = c1534jr.r();
        if ((iR & 1) != 0) {
            throw C0800Ka.b("Overriding TrackEncryptionBox parameters is unsupported.");
        }
        boolean z7 = (iR & 2) != 0;
        int iZ = c1534jr.z();
        if (iZ == 0) {
            Arrays.fill(f8.f13285l, 0, f8.f13278e, false);
            return;
        }
        int i9 = f8.f13278e;
        if (iZ != i9) {
            throw C0800Ka.a("Senc sample count " + iZ + " is different from fragment sample count" + i9, null);
        }
        Arrays.fill(f8.f13285l, 0, iZ, z7);
        int iO = c1534jr.o();
        C1534jr c1534jr2 = f8.f13287n;
        c1534jr2.g(iO);
        f8.f13284k = true;
        f8.f13288o = true;
        c1534jr.f(0, c1534jr2.f19515a, c1534jr2.f19517c);
        c1534jr2.j(0);
        f8.f13288o = false;
    }

    public final void b() {
        this.f21813p = 0;
        this.f21816s = 0;
    }

    /* JADX WARN: Code duplicated, block: B:105:0x01f9  */
    /* JADX WARN: Code duplicated, block: B:108:0x020e  */
    /* JADX WARN: Code duplicated, block: B:117:0x0238  */
    /* JADX WARN: Code duplicated, block: B:119:0x0241  */
    /* JADX WARN: Code duplicated, block: B:124:0x0276  */
    /* JADX WARN: Code duplicated, block: B:125:0x0278  */
    /* JADX WARN: Code duplicated, block: B:129:0x028c  */
    /* JADX WARN: Code duplicated, block: B:130:0x0291  */
    /* JADX WARN: Code duplicated, block: B:131:0x0293  */
    /* JADX WARN: Code duplicated, block: B:135:0x02b3  */
    /* JADX WARN: Code duplicated, block: B:136:0x02b8  */
    /* JADX WARN: Code duplicated, block: B:140:0x02cd  */
    /* JADX WARN: Code duplicated, block: B:142:0x02e0  */
    /* JADX WARN: Code duplicated, block: B:145:0x02e7  */
    /* JADX WARN: Code duplicated, block: B:148:0x0303  */
    /* JADX WARN: Code duplicated, block: B:438:0x02a9 A[EDGE_INSN: B:438:0x02a9->B:133:0x02a9 BREAK  A[LOOP:7: B:80:0x0171->B:82:0x0177], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:444:0x0230 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:76:0x015e  */
    /* JADX WARN: Code duplicated, block: B:77:0x0165  */
    /* JADX WARN: Code duplicated, block: B:80:0x0171 A[LOOP:7: B:80:0x0171->B:82:0x0177, LOOP_START] */
    /* JADX WARN: Code duplicated, block: B:82:0x0177 A[LOOP:7: B:80:0x0171->B:82:0x0177, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:83:0x0183  */
    /* JADX WARN: Code duplicated, block: B:86:0x019e  */
    /* JADX WARN: Code duplicated, block: B:88:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:90:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:92:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:94:0x01db  */
    /* JADX WARN: Code duplicated, block: B:98:0x01e5  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.google.android.gms.internal.ads.L
    public final int c(M m7, W0.w wVar) throws C0800Ka {
        W2 w7;
        ArrayDeque arrayDeque;
        C2168w1 c2168w1;
        G1 g8;
        D1 d6;
        long j8;
        int i8;
        InterfaceC1234e0 interfaceC1234e0;
        C1534jr c1534jr;
        byte[] bArr;
        int i9;
        int i10;
        int i11;
        C1804p0 c1804p0;
        int i12;
        int i13;
        int iE;
        int i14;
        boolean z7;
        int iR;
        boolean z8;
        String str;
        int i15;
        E1 e1C;
        C1183d0 c1183d0;
        C2116v1 c2116v1;
        boolean z9;
        long j9;
        int i16;
        int i17;
        int i18;
        int i19;
        int iB;
        String strH;
        long jV;
        long jV2;
        long jV3;
        long jE;
        String strH2;
        long jF;
        long jF2;
        while (true) {
            int i20 = this.f21813p;
            ArrayDeque arrayDeque2 = this.f21809l;
            SparseArray sparseArray = this.f21801d;
            w7 = this.f21811n;
            if (i20 != 0) {
                arrayDeque = this.f21810m;
                if (i20 != 1) {
                    long j10 = Long.MAX_VALUE;
                    if (i20 != 2) {
                        c2168w1 = this.f21823z;
                        if (c2168w1 != null) {
                            break;
                        }
                        int size = sparseArray.size();
                        C2168w1 c2168w2 = null;
                        for (int i21 = 0; i21 < size; i21++) {
                            C2168w1 c2168w3 = (C2168w1) sparseArray.valueAt(i21);
                            boolean z10 = c2168w3.f21634l;
                            if (z10 || c2168w3.f21628f != c2168w3.f21626d.f13463b) {
                                F1 f8 = c2168w3.f21624b;
                                if (!z10 || c2168w3.f21630h != f8.f13277d) {
                                    long j11 = !z10 ? c2168w3.f21626d.f13464c[c2168w3.f21628f] : f8.f13279f[c2168w3.f21630h];
                                    if (j11 < j10) {
                                        j10 = j11;
                                        c2168w2 = c2168w3;
                                    }
                                }
                            }
                        }
                        if (c2168w2 != null) {
                            int iZzf = (int) ((!c2168w2.f21634l ? c2168w2.f21626d.f13464c[c2168w2.f21628f] : c2168w2.f21624b.f13279f[c2168w2.f21630h]) - m7.zzf());
                            if (iZzf < 0) {
                                Zo.f("FragmentedMp4Extractor", "Ignoring negative offset to sample data.");
                                iZzf = 0;
                            }
                            m7.q(iZzf);
                            this.f21823z = c2168w2;
                            c2168w1 = c2168w2;
                            break;
                        }
                        int iZzf2 = (int) (this.f21818u - m7.zzf());
                        if (iZzf2 < 0) {
                            throw C0800Ka.a("Offset to end of mdat was negative.", null);
                        }
                        m7.q(iZzf2);
                        b();
                    } else {
                        int size2 = sparseArray.size();
                        C2168w1 c2168w4 = null;
                        for (int i22 = 0; i22 < size2; i22++) {
                            F1 f9 = ((C2168w1) sparseArray.valueAt(i22)).f21624b;
                            if (f9.f13288o) {
                                long j12 = f9.f13276c;
                                if (j12 < j10) {
                                    c2168w4 = (C2168w1) sparseArray.valueAt(i22);
                                    j10 = j12;
                                }
                            }
                        }
                        if (c2168w4 == null) {
                            this.f21813p = 3;
                        } else {
                            int iZzf3 = (int) (j10 - m7.zzf());
                            if (iZzf3 < 0) {
                                throw C0800Ka.a("Offset to encryption data was negative.", null);
                            }
                            m7.q(iZzf3);
                            F1 f10 = c2168w4.f21624b;
                            C1534jr c1534jr2 = f10.f13287n;
                            m7.h(0, c1534jr2.f19515a, c1534jr2.f19517c);
                            f10.f13287n.j(0);
                            f10.f13288o = false;
                        }
                    }
                } else {
                    int i23 = ((int) this.f21815r) - this.f21816s;
                    C1534jr c1534jr3 = this.f21817t;
                    if (c1534jr3 != null) {
                        m7.h(8, c1534jr3.f19515a, i23);
                        C1805p1 c1805p1 = new C1805p1(this.f21814q, c1534jr3);
                        long jZzf = m7.zzf();
                        if (arrayDeque2.isEmpty()) {
                            int i24 = c1805p1.f29448b;
                            if (i24 == 1936286840) {
                                c1534jr3.j(8);
                                int iC = p125q0.e.c(c1534jr3.r());
                                c1534jr3.k(4);
                                long jE2 = c1534jr3.E();
                                if (iC == 0) {
                                    jF = c1534jr3.E();
                                    jF2 = c1534jr3.E();
                                } else {
                                    jF = c1534jr3.F();
                                    jF2 = c1534jr3.F();
                                }
                                long j13 = jF2 + jZzf;
                                long jV4 = Et.v(jF, 1000000L, jE2, RoundingMode.FLOOR);
                                c1534jr3.k(2);
                                int iA = c1534jr3.A();
                                int[] iArr = new int[iA];
                                long[] jArr = new long[iA];
                                long[] jArr2 = new long[iA];
                                long[] jArr3 = new long[iA];
                                long j14 = jV4;
                                int i25 = 0;
                                while (i25 < iA) {
                                    int iR2 = c1534jr3.r();
                                    if ((iR2 & Integer.MIN_VALUE) != 0) {
                                        throw C0800Ka.a("Unhandled indirect reference", null);
                                    }
                                    long jE3 = c1534jr3.E();
                                    iArr[i25] = iR2 & com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
                                    jArr[i25] = j13;
                                    jArr3[i25] = j14;
                                    long j15 = jF + jE3;
                                    int i26 = i25;
                                    long[] jArr4 = jArr2;
                                    long[] jArr5 = jArr3;
                                    int[] iArr2 = iArr;
                                    long jV5 = Et.v(j15, 1000000L, jE2, RoundingMode.FLOOR);
                                    jArr4[i26] = jV5 - jArr5[i26];
                                    c1534jr3.k(4);
                                    j13 += (long) iArr2[i26];
                                    jArr2 = jArr4;
                                    iA = iA;
                                    jArr = jArr;
                                    j14 = jV5;
                                    i25 = i26 + 1;
                                    iArr = iArr2;
                                    jArr3 = jArr5;
                                    jF = j15;
                                }
                                Pair pairCreate = Pair.create(Long.valueOf(jV4), new E(iArr, jArr, jArr2, jArr3));
                                this.f21822y = ((Long) pairCreate.first).longValue();
                                this.f21794F.g((Y) pairCreate.second);
                                this.f21797I = true;
                            } else if (i24 == 1701671783 && this.f21795G.length != 0) {
                                c1534jr3.j(8);
                                int iC2 = p125q0.e.c(c1534jr3.r());
                                if (iC2 == 0) {
                                    String strH3 = c1534jr3.H();
                                    strH3.getClass();
                                    strH = c1534jr3.H();
                                    strH.getClass();
                                    long jE4 = c1534jr3.E();
                                    long jE5 = c1534jr3.E();
                                    RoundingMode roundingMode = RoundingMode.FLOOR;
                                    jV = Et.v(jE5, 1000000L, jE4, roundingMode);
                                    long j16 = this.f21822y;
                                    jV2 = j16 != -9223372036854775807L ? j16 + jV : -9223372036854775807L;
                                    jV3 = Et.v(c1534jr3.E(), 1000L, jE4, roundingMode);
                                    jE = c1534jr3.E();
                                    strH2 = strH3;
                                } else if (iC2 != 1) {
                                    p000a.r.p("Skipping unsupported emsg version: ", iC2, "FragmentedMp4Extractor");
                                } else {
                                    long jE6 = c1534jr3.E();
                                    long jF3 = c1534jr3.F();
                                    RoundingMode roundingMode2 = RoundingMode.FLOOR;
                                    jV2 = Et.v(jF3, 1000000L, jE6, roundingMode2);
                                    jV3 = Et.v(c1534jr3.E(), 1000L, jE6, roundingMode2);
                                    jE = c1534jr3.E();
                                    strH2 = c1534jr3.H();
                                    strH2.getClass();
                                    strH = c1534jr3.H();
                                    strH.getClass();
                                    jV = -9223372036854775807L;
                                }
                                long j17 = jV2;
                                byte[] bArr2 = new byte[c1534jr3.o()];
                                c1534jr3.f(0, bArr2, c1534jr3.o());
                                C2218x c2218x = this.f21807j;
                                ((ByteArrayOutputStream) c2218x.f21779H).reset();
                                try {
                                    DataOutputStream dataOutputStream = (DataOutputStream) c2218x.f21780I;
                                    dataOutputStream.writeBytes(strH2);
                                    dataOutputStream.writeByte(0);
                                    DataOutputStream dataOutputStream2 = (DataOutputStream) c2218x.f21780I;
                                    dataOutputStream2.writeBytes(strH);
                                    dataOutputStream2.writeByte(0);
                                    ((DataOutputStream) c2218x.f21780I).writeLong(jV3);
                                    ((DataOutputStream) c2218x.f21780I).writeLong(jE);
                                    ((DataOutputStream) c2218x.f21780I).write(bArr2);
                                    ((DataOutputStream) c2218x.f21780I).flush();
                                    C1534jr c1534jr4 = new C1534jr(((ByteArrayOutputStream) c2218x.f21779H).toByteArray());
                                    int iO = c1534jr4.o();
                                    for (InterfaceC1234e0 interfaceC1234e1 : this.f21795G) {
                                        c1534jr4.j(0);
                                        interfaceC1234e1.f(iO, c1534jr4);
                                    }
                                    if (j17 == -9223372036854775807L) {
                                        arrayDeque.addLast(new C2116v1(iO, jV, true));
                                        this.f21819v += iO;
                                    } else if (arrayDeque.isEmpty()) {
                                        for (InterfaceC1234e0 interfaceC1234e2 : this.f21795G) {
                                            interfaceC1234e2.b(j17, 1, iO, 0, null);
                                        }
                                    } else {
                                        arrayDeque.addLast(new C2116v1(iO, j17, false));
                                        this.f21819v += iO;
                                    }
                                } catch (IOException e8) {
                                    throw new RuntimeException(e8);
                                }
                            }
                        } else {
                            ((C1753o1) arrayDeque2.peek()).f20219d.add(c1805p1);
                        }
                    } else {
                        m7.q(i23);
                    }
                    h(m7.zzf());
                }
            } else {
                int i27 = this.f21816s;
                C1534jr c1534jr5 = this.f21808k;
                if (i27 == 0) {
                    if (!m7.b(c1534jr5.f19515a, 0, 8, true)) {
                        w7.d(0);
                        return -1;
                    }
                    this.f21816s = 8;
                    c1534jr5.j(0);
                    this.f21815r = c1534jr5.E();
                    this.f21814q = c1534jr5.r();
                }
                long j18 = this.f21815r;
                if (j18 == 1) {
                    m7.h(8, c1534jr5.f19515a, 8);
                    this.f21816s += 8;
                    this.f21815r = c1534jr5.F();
                } else if (j18 == 0) {
                    long jZzd = m7.zzd();
                    if (jZzd == -1) {
                        jZzd = !arrayDeque2.isEmpty() ? ((C1753o1) arrayDeque2.peek()).f20218c : -1L;
                    }
                    if (jZzd != -1) {
                        this.f21815r = (jZzd - m7.zzf()) + ((long) this.f21816s);
                    }
                }
                long j19 = this.f21815r;
                long j20 = this.f21816s;
                if (j19 < j20) {
                    throw C0800Ka.b("Atom size less than header length (unsupported).");
                }
                long jZzf2 = m7.zzf() - j20;
                int i28 = this.f21814q;
                if ((i28 == 1836019558 || i28 == 1835295092) && !this.f21797I) {
                    this.f21794F.g(new P(this.f21821x, jZzf2));
                    this.f21797I = true;
                }
                if (this.f21814q == 1836019558) {
                    int size3 = sparseArray.size();
                    for (int i29 = 0; i29 < size3; i29++) {
                        F1 f11 = ((C2168w1) sparseArray.valueAt(i29)).f21624b;
                        f11.f13276c = jZzf2;
                        f11.f13275b = jZzf2;
                    }
                }
                int i30 = this.f21814q;
                if (i30 == 1835295092) {
                    this.f21823z = null;
                    this.f21818u = jZzf2 + this.f21815r;
                    this.f21813p = 2;
                } else if (i30 == 1836019574 || i30 == 1953653099 || i30 == 1835297121 || i30 == 1835626086 || i30 == 1937007212 || i30 == 1836019558 || i30 == 1953653094 || i30 == 1836475768 || i30 == 1701082227) {
                    long jZzf3 = (m7.zzf() + this.f21815r) - 8;
                    arrayDeque2.push(new C1753o1(i30, jZzf3));
                    if (this.f21815r == this.f21816s) {
                        h(jZzf3);
                    } else {
                        b();
                    }
                } else if (i30 == 1751411826 || i30 == 1835296868 || i30 == 1836476516 || i30 == 1936286840 || i30 == 1937011556 || i30 == 1937011827 || i30 == 1668576371 || i30 == 1937011555 || i30 == 1937011578 || i30 == 1937013298 || i30 == 1937007471 || i30 == 1668232756 || i30 == 1937011571 || i30 == 1952867444 || i30 == 1952868452 || i30 == 1953196132 || i30 == 1953654136 || i30 == 1953658222 || i30 == 1886614376 || i30 == 1935763834 || i30 == 1935763823 || i30 == 1936027235 || i30 == 1970628964 || i30 == 1935828848 || i30 == 1936158820 || i30 == 1701606260 || i30 == 1835362404 || i30 == 1701671783) {
                    if (this.f21816s != 8) {
                        throw C0800Ka.b("Leaf atom defines extended atom size (unsupported).");
                    }
                    if (this.f21815r > 2147483647L) {
                        throw C0800Ka.b("Leaf atom with length > 2147483647 (unsupported).");
                    }
                    C1534jr c1534jr6 = new C1534jr((int) this.f21815r);
                    System.arraycopy(c1534jr5.f19515a, 0, c1534jr6.f19515a, 0, 8);
                    this.f21817t = c1534jr6;
                    this.f21813p = 1;
                } else {
                    if (this.f21815r > 2147483647L) {
                        throw C0800Ka.b("Skipping atom with length > 2147483647 (unsupported).");
                    }
                    this.f21817t = null;
                    this.f21813p = 1;
                }
            }
        }
        int i31 = this.f21813p;
        F1 f12 = c2168w1.f21624b;
        if (i31 != 3) {
            g8 = c2168w1.f21626d;
            d6 = g8.f13462a;
            if (c2168w1.f21634l) {
                j8 = f12.f13282i[c2168w1.f21628f];
            } else {
                j8 = g8.f13467f[c2168w1.f21628f];
            }
            i8 = d6.f12747j;
            interfaceC1234e0 = c2168w1.f21623a;
            if (i8 == 0) {
                while (true) {
                    i17 = this.f21790B;
                    i18 = this.f21789A;
                    if (i17 < i18) {
                        break;
                    }
                    this.f21790B += interfaceC1234e0.e(m7, i18 - i17, false);
                }
            } else {
                c1534jr = this.f21803f;
                bArr = c1534jr.f19515a;
                bArr[0] = 0;
                bArr[1] = 0;
                bArr[2] = 0;
                i9 = i8 + 1;
                i10 = 4 - i8;
                while (this.f21790B < this.f21789A) {
                    i11 = this.f21791C;
                    c1804p0 = d6.f12743f;
                    if (i11 == 0) {
                        m7.h(i10, bArr, i9);
                        c1534jr.j(0);
                        iR = c1534jr.r();
                        if (iR > 0) {
                            throw C0800Ka.a("Invalid NAL length", null);
                        }
                        this.f21791C = iR - 1;
                        C1534jr c1534jr7 = this.f21802e;
                        D1 d8 = d6;
                        c1534jr7.j(0);
                        interfaceC1234e0.f(4, c1534jr7);
                        interfaceC1234e0.f(1, c1534jr);
                        if (this.f21796H.length > 0) {
                            str = c1804p0.f20383m;
                            i15 = bArr[4];
                            byte[] bArr3 = AbstractC2008sy.f21015a;
                            if ("video/avc".equals(str)) {
                                i12 = i9;
                                if ((i15 & 31) != 6) {
                                }
                                z8 = true;
                                this.f21793E = z8;
                                this.f21790B += 5;
                                this.f21789A += i10;
                                if (!this.f21792D && Objects.equals(c2168w1.f21626d.f13462a.f12743f.f20383m, "video/avc") && AbstractC2008sy.h(bArr[4])) {
                                    this.f21792D = true;
                                }
                                d6 = d8;
                            } else {
                                i12 = i9;
                            }
                            if (!"video/hevc".equals(str) && ((i15 & WebSocketProtocol.PAYLOAD_SHORT) >> 1) == 39) {
                                z8 = true;
                            }
                            this.f21793E = z8;
                            this.f21790B += 5;
                            this.f21789A += i10;
                            if (!this.f21792D) {
                                this.f21792D = true;
                            }
                            d6 = d8;
                        } else {
                            i12 = i9;
                        }
                        z8 = false;
                        this.f21793E = z8;
                        this.f21790B += 5;
                        this.f21789A += i10;
                        if (!this.f21792D) {
                            this.f21792D = true;
                        }
                        d6 = d8;
                    } else {
                        D1 d9 = d6;
                        i12 = i9;
                        if (this.f21793E) {
                            C1534jr c1534jr8 = this.f21804g;
                            c1534jr8.g(i11);
                            i13 = i10;
                            m7.h(0, c1534jr8.f19515a, this.f21791C);
                            interfaceC1234e0.f(this.f21791C, c1534jr8);
                            iE = this.f21791C;
                            int iB2 = AbstractC2008sy.b(c1534jr8.f19515a, c1534jr8.f19517c);
                            c1534jr8.j("video/hevc".equals(c1804p0.f20383m) ? 1 : 0);
                            c1534jr8.i(iB2);
                            i14 = c1804p0.f20385o;
                            if (i14 != -1 && i14 != w7.f17150G) {
                                if (i14 >= 0) {
                                    z7 = true;
                                } else {
                                    z7 = false;
                                }
                                p113o3.r.M(z7);
                                w7.f17150G = i14;
                                w7.d(i14);
                            }
                            w7.c(j8, c1534jr8);
                            if ((c2168w1.a() & 5) != 0) {
                                w7.d(0);
                            }
                        } else {
                            i13 = i10;
                            iE = interfaceC1234e0.e(m7, i11, false);
                        }
                        this.f21790B += iE;
                        this.f21791C -= iE;
                        d6 = d9;
                        i10 = i13;
                    }
                    i9 = i12;
                }
            }
            int iA2 = c2168w1.a();
            e1C = c2168w1.c();
            if (e1C != null) {
                c1183d0 = e1C.f12926c;
            } else {
                c1183d0 = null;
            }
            interfaceC1234e0.b(j8, iA2, this.f21789A, 0, c1183d0);
            while (!arrayDeque.isEmpty()) {
                c2116v1 = (C2116v1) arrayDeque.removeFirst();
                this.f21819v -= c2116v1.f21425c;
                z9 = c2116v1.f21424b;
                j9 = c2116v1.f21423a;
                if (z9) {
                    j9 += j8;
                }
                for (InterfaceC1234e0 interfaceC1234e3 : this.f21795G) {
                    interfaceC1234e3.b(j9, 1, c2116v1.f21425c, this.f21819v, null);
                }
            }
            if (!c2168w1.e()) {
                this.f21823z = null;
            }
        } else {
            int i32 = !c2168w1.f21634l ? c2168w1.f21626d.f13465d[c2168w1.f21628f] : f12.f13281h[c2168w1.f21628f];
            this.f21789A = i32;
            this.f21792D = true;
            if (c2168w1.f21628f < c2168w1.f21631i) {
                m7.q(i32);
                E1 e1C2 = c2168w1.c();
                if (e1C2 != null) {
                    C1534jr c1534jr9 = f12.f13287n;
                    int i33 = e1C2.f12927d;
                    if (i33 != 0) {
                        c1534jr9.k(i33);
                    }
                    int i34 = c2168w1.f21628f;
                    if (f12.f13284k && f12.f13285l[i34]) {
                        c1534jr9.k(c1534jr9.A() * 6);
                    }
                }
                if (!c2168w1.e()) {
                    this.f21823z = null;
                }
            } else {
                if (c2168w1.f21626d.f13462a.f12744g == 1) {
                    this.f21789A = i32 - 8;
                    m7.q(8);
                }
                if ("audio/ac4".equals(c2168w1.f21626d.f13462a.f12743f.f20383m)) {
                    this.f21790B = c2168w1.b(this.f21789A, 7);
                    int i35 = this.f21789A;
                    C1534jr c1534jr10 = this.f21806i;
                    AbstractC1717nH.f(i35, c1534jr10);
                    c2168w1.f21623a.f(7, c1534jr10);
                    iB = this.f21790B + 7;
                    this.f21790B = iB;
                    i19 = 0;
                } else {
                    i19 = 0;
                    iB = c2168w1.b(this.f21789A, 0);
                    this.f21790B = iB;
                }
                this.f21789A += iB;
                this.f21813p = 4;
                this.f21791C = i19;
                g8 = c2168w1.f21626d;
                d6 = g8.f13462a;
                if (c2168w1.f21634l) {
                    j8 = g8.f13467f[c2168w1.f21628f];
                } else {
                    j8 = f12.f13282i[c2168w1.f21628f];
                }
                i8 = d6.f12747j;
                interfaceC1234e0 = c2168w1.f21623a;
                if (i8 == 0) {
                    while (true) {
                        i17 = this.f21790B;
                        i18 = this.f21789A;
                        if (i17 < i18) {
                            break;
                            break;
                        }
                        this.f21790B += interfaceC1234e0.e(m7, i18 - i17, false);
                    }
                } else {
                    c1534jr = this.f21803f;
                    bArr = c1534jr.f19515a;
                    bArr[0] = 0;
                    bArr[1] = 0;
                    bArr[2] = 0;
                    i9 = i8 + 1;
                    i10 = 4 - i8;
                    while (this.f21790B < this.f21789A) {
                        i11 = this.f21791C;
                        c1804p0 = d6.f12743f;
                        if (i11 == 0) {
                            m7.h(i10, bArr, i9);
                            c1534jr.j(0);
                            iR = c1534jr.r();
                            if (iR > 0) {
                                throw C0800Ka.a("Invalid NAL length", null);
                            }
                            this.f21791C = iR - 1;
                            C1534jr c1534jr11 = this.f21802e;
                            D1 d10 = d6;
                            c1534jr11.j(0);
                            interfaceC1234e0.f(4, c1534jr11);
                            interfaceC1234e0.f(1, c1534jr);
                            if (this.f21796H.length > 0) {
                                str = c1804p0.f20383m;
                                i15 = bArr[4];
                                byte[] bArr4 = AbstractC2008sy.f21015a;
                                if ("video/avc".equals(str)) {
                                    i12 = i9;
                                    if ((i15 & 31) != 6) {
                                    }
                                    z8 = true;
                                    this.f21793E = z8;
                                    this.f21790B += 5;
                                    this.f21789A += i10;
                                    if (!this.f21792D) {
                                        this.f21792D = true;
                                    }
                                    d6 = d10;
                                } else {
                                    i12 = i9;
                                }
                                if (!"video/hevc".equals(str)) {
                                }
                            } else {
                                i12 = i9;
                            }
                            z8 = false;
                            this.f21793E = z8;
                            this.f21790B += 5;
                            this.f21789A += i10;
                            if (!this.f21792D) {
                                this.f21792D = true;
                            }
                            d6 = d10;
                        } else {
                            D1 d11 = d6;
                            i12 = i9;
                            if (this.f21793E) {
                                C1534jr c1534jr12 = this.f21804g;
                                c1534jr12.g(i11);
                                i13 = i10;
                                m7.h(0, c1534jr12.f19515a, this.f21791C);
                                interfaceC1234e0.f(this.f21791C, c1534jr12);
                                iE = this.f21791C;
                                int iB3 = AbstractC2008sy.b(c1534jr12.f19515a, c1534jr12.f19517c);
                                c1534jr12.j("video/hevc".equals(c1804p0.f20383m) ? 1 : 0);
                                c1534jr12.i(iB3);
                                i14 = c1804p0.f20385o;
                                if (i14 != -1) {
                                    if (i14 >= 0) {
                                        z7 = true;
                                    } else {
                                        z7 = false;
                                    }
                                    p113o3.r.M(z7);
                                    w7.f17150G = i14;
                                    w7.d(i14);
                                }
                                w7.c(j8, c1534jr12);
                                if ((c2168w1.a() & 5) != 0) {
                                    w7.d(0);
                                }
                            } else {
                                i13 = i10;
                                iE = interfaceC1234e0.e(m7, i11, false);
                            }
                            this.f21790B += iE;
                            this.f21791C -= iE;
                            d6 = d11;
                            i10 = i13;
                        }
                        i9 = i12;
                    }
                }
                int iA3 = c2168w1.a();
                e1C = c2168w1.c();
                if (e1C != null) {
                    c1183d0 = e1C.f12926c;
                } else {
                    c1183d0 = null;
                }
                interfaceC1234e0.b(j8, iA3, this.f21789A, 0, c1183d0);
                while (!arrayDeque.isEmpty()) {
                    c2116v1 = (C2116v1) arrayDeque.removeFirst();
                    this.f21819v -= c2116v1.f21425c;
                    z9 = c2116v1.f21424b;
                    j9 = c2116v1.f21423a;
                    if (z9) {
                        j9 += j8;
                    }
                    while (i16 < r6) {
                        interfaceC1234e3.b(j9, 1, c2116v1.f21425c, this.f21819v, null);
                    }
                }
                if (!c2168w1.e()) {
                    this.f21823z = null;
                }
            }
        }
        this.f21813p = 3;
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.L
    public final boolean d(M m7) {
        PA paW;
        InterfaceC1131c0 interfaceC1131c0I = AbstractC1717nH.i(m7, true, false);
        if (interfaceC1131c0I != null) {
            paW = AbstractC2073uA.w(interfaceC1131c0I);
        } else {
            C1969sA c1969sA = AbstractC2073uA.f21207H;
            paW = PA.f15340K;
        }
        this.f21812o = paW;
        return interfaceC1131c0I == null;
    }

    @Override // com.google.android.gms.internal.ads.L
    public final void e(long j8, long j9) {
        SparseArray sparseArray = this.f21801d;
        int size = sparseArray.size();
        for (int i8 = 0; i8 < size; i8++) {
            ((C2168w1) sparseArray.valueAt(i8)).d();
        }
        this.f21810m.clear();
        this.f21819v = 0;
        this.f21811n.d(0);
        this.f21820w = j9;
        this.f21809l.clear();
        b();
    }

    @Override // com.google.android.gms.internal.ads.L
    public final void f(N n7) {
        if ((this.f21799b & 32) == 0) {
            n7 = new X1(n7, this.f21798a);
        }
        this.f21794F = n7;
        b();
        InterfaceC1234e0[] interfaceC1234e0Arr = new InterfaceC1234e0[2];
        this.f21795G = interfaceC1234e0Arr;
        int i8 = 0;
        InterfaceC1234e0[] interfaceC1234e0Arr2 = (InterfaceC1234e0[]) Et.g(0, interfaceC1234e0Arr);
        this.f21795G = interfaceC1234e0Arr2;
        for (InterfaceC1234e0 interfaceC1234e0 : interfaceC1234e0Arr2) {
            interfaceC1234e0.d(f21788K);
        }
        List list = this.f21800c;
        this.f21796H = new InterfaceC1234e0[list.size()];
        int i9 = 100;
        while (i8 < this.f21796H.length) {
            int i10 = i9 + 1;
            InterfaceC1234e0 interfaceC1234e0H = this.f21794F.h(i9, 3);
            interfaceC1234e0H.d((C1804p0) list.get(i8));
            this.f21796H[i8] = interfaceC1234e0H;
            i8++;
            i9 = i10;
        }
    }

    /* JADX WARN: Code duplicated, block: B:130:0x035d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:131:0x035f  */
    /* JADX WARN: Code duplicated, block: B:133:0x036e  */
    /* JADX WARN: Code duplicated, block: B:136:0x037b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:137:0x037d  */
    /* JADX WARN: Code duplicated, block: B:138:0x0388  */
    /* JADX WARN: Code duplicated, block: B:140:0x038e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:141:0x0390  */
    /* JADX WARN: Code duplicated, block: B:142:0x0395  */
    /* JADX WARN: Code duplicated, block: B:143:0x0397 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:144:0x0399  */
    /* JADX WARN: Code duplicated, block: B:145:0x039d  */
    /* JADX WARN: Code duplicated, block: B:146:0x039e A[PHI: r10
      0x039e: PHI (r10v31 int) = (r10v29 int), (r10v32 int) binds: [B:142:0x0395, B:145:0x039d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:148:0x03a2  */
    /* JADX WARN: Code duplicated, block: B:149:0x03b1  */
    /* JADX WARN: Code duplicated, block: B:152:0x03cf  */
    /* JADX WARN: Code duplicated, block: B:153:0x03dd  */
    /* JADX WARN: Code duplicated, block: B:156:0x03ed  */
    /* JADX WARN: Code duplicated, block: B:157:0x03ef  */
    /* JADX WARN: Code duplicated, block: B:261:0x0652  */
    /* JADX WARN: Code duplicated, block: B:263:0x065f  */
    /* JADX WARN: Code duplicated, block: B:265:0x0678  */
    /* JADX WARN: Code duplicated, block: B:266:0x067c  */
    /* JADX WARN: Code duplicated, block: B:306:0x041e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:307:0x040c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:341:0x0683 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:72:0x01eb  */
    public final void h(long j8) throws C0800Ka {
        C2012t1 c2012t1;
        C2012t1 c2012t2;
        C2220x1 c2220x1;
        C2220x1 c2220x2;
        ArrayList arrayList;
        int i8;
        int i9;
        ArrayList arrayList2;
        SparseArray sparseArray;
        int i10;
        int size;
        int i11;
        C1805p1 c1805p1;
        C1534jr c1534jr;
        byte[] bArr;
        int i12;
        boolean z7;
        C1753o1 c1753o1;
        ArrayList arrayList3;
        C2168w1 c2168w1;
        int i13;
        C2012t1 c2012t3;
        C2168w1 c2168w2;
        int i14;
        int[] iArr;
        long[] jArr;
        boolean[] zArr;
        int i15;
        long j9;
        C2012t1 c2012t4;
        int iR;
        C1753o1 c1753o2;
        int iR2;
        int iR3;
        int iR4;
        long jV;
        C2168w1 c2168w3;
        boolean z8;
        long[] jArr2;
        char c8;
        C2220x1 c2220x3 = this;
        while (true) {
            ArrayDeque arrayDeque = c2220x3.f21809l;
            if (arrayDeque.isEmpty() || ((C1753o1) arrayDeque.peek()).f20218c != j8) {
                break;
            }
            C1753o1 c1753o3 = (C1753o1) arrayDeque.pop();
            int i16 = c1753o3.f29448b;
            SparseArray sparseArray2 = c2220x3.f21801d;
            ArrayList arrayList4 = c1753o3.f20219d;
            int i17 = 12;
            if (i16 == 1836019574) {
                C1672mO c1672mOA = a(arrayList4);
                C1753o1 c1753o1E = c1753o3.e(1836475768);
                c1753o1E.getClass();
                SparseArray sparseArray3 = new SparseArray();
                ArrayList arrayList5 = c1753o1E.f20219d;
                int size2 = arrayList5.size();
                int i18 = 0;
                long jE = -9223372036854775807L;
                while (i18 < size2) {
                    C1805p1 c1805p2 = (C1805p1) arrayList5.get(i18);
                    int i19 = c1805p2.f29448b;
                    C1534jr c1534jr2 = c1805p2.f20397c;
                    if (i19 == 1953654136) {
                        c1534jr2.j(i17);
                        Pair pairCreate = Pair.create(Integer.valueOf(c1534jr2.r()), new C2012t1(c1534jr2.r() - 1, c1534jr2.r(), c1534jr2.r(), c1534jr2.r()));
                        sparseArray3.put(((Integer) pairCreate.first).intValue(), (C2012t1) pairCreate.second);
                    } else if (i19 == 1835362404) {
                        c1534jr2.j(8);
                        jE = p125q0.e.c(c1534jr2.r()) == 0 ? c1534jr2.E() : c1534jr2.F();
                    }
                    i18++;
                    i17 = 12;
                }
                int i20 = 0;
                ArrayList arrayListB = AbstractC1908r1.b(c1753o3, new T(), jE, c1672mOA, false, false, new C2064u1(i20, i20));
                int size3 = arrayListB.size();
                if (sparseArray2.size() == 0) {
                    for (int i21 = 0; i21 < size3; i21++) {
                        G1 g8 = (G1) arrayListB.get(i21);
                        D1 d6 = g8.f13462a;
                        InterfaceC1234e0 interfaceC1234e0H = c2220x3.f21794F.h(i21, d6.f12739b);
                        int size4 = sparseArray3.size();
                        int i22 = d6.f12738a;
                        if (size4 == 1) {
                            c2012t1 = (C2012t1) sparseArray3.valueAt(0);
                        } else {
                            c2012t1 = (C2012t1) sparseArray3.get(i22);
                            c2012t1.getClass();
                        }
                        sparseArray2.put(i22, new C2168w1(interfaceC1234e0H, g8, c2012t1));
                        c2220x3.f21821x = Math.max(c2220x3.f21821x, d6.f12742e);
                    }
                    c2220x3.f21794F.f();
                } else {
                    p113o3.r.M(sparseArray2.size() == size3);
                    for (int i23 = 0; i23 < size3; i23++) {
                        G1 g9 = (G1) arrayListB.get(i23);
                        D1 d8 = g9.f13462a;
                        C2168w1 c2168w4 = (C2168w1) sparseArray2.get(d8.f12738a);
                        if (sparseArray3.size() == 1) {
                            c2012t2 = (C2012t1) sparseArray3.valueAt(0);
                        } else {
                            c2012t2 = (C2012t1) sparseArray3.get(d8.f12738a);
                            c2012t2.getClass();
                        }
                        c2168w4.f21626d = g9;
                        c2168w4.f21627e = c2012t2;
                        c2168w4.f21623a.d(g9.f13462a.f12743f);
                        c2168w4.d();
                    }
                }
            } else {
                if (i16 == 1836019558) {
                    ArrayList arrayList6 = c1753o3.f20220e;
                    int size5 = arrayList6.size();
                    int i24 = 0;
                    while (i24 < size5) {
                        C1753o1 c1753o4 = (C1753o1) arrayList6.get(i24);
                        if (c1753o4.f29448b == 1953653094) {
                            C1805p1 c1805p1F = c1753o4.f(1952868452);
                            c1805p1F.getClass();
                            C1534jr c1534jr3 = c1805p1F.f20397c;
                            c1534jr3.j(8);
                            int iR5 = c1534jr3.r();
                            C2168w1 c2168w5 = (C2168w1) sparseArray2.get(c1534jr3.r());
                            if (c2168w5 == null) {
                                c2168w5 = null;
                            } else {
                                int i25 = iR5 & 1;
                                F1 f8 = c2168w5.f21624b;
                                if (i25 != 0) {
                                    long jF = c1534jr3.F();
                                    f8.f13275b = jF;
                                    f8.f13276c = jF;
                                }
                                C2012t1 c2012t5 = c2168w5.f21627e;
                                f8.f13274a = new C2012t1((iR5 & 2) != 0 ? c1534jr3.r() - 1 : c2012t5.f21025a, (iR5 & 8) != 0 ? c1534jr3.r() : c2012t5.f21026b, (iR5 & 16) != 0 ? c1534jr3.r() : c2012t5.f21027c, (iR5 & 32) != 0 ? c1534jr3.r() : c2012t5.f21028d);
                            }
                            if (c2168w5 != null) {
                                F1 f9 = c2168w5.f21624b;
                                long j10 = f9.f13289p;
                                boolean z9 = f9.f13290q;
                                c2168w5.d();
                                c2168w5.f21634l = true;
                                C1805p1 c1805p1F2 = c1753o4.f(1952867444);
                                if (c1805p1F2 != null) {
                                    C1534jr c1534jr4 = c1805p1F2.f20397c;
                                    c1534jr4.j(8);
                                    f9.f13289p = p125q0.e.c(c1534jr4.r()) == 1 ? c1534jr4.F() : c1534jr4.E();
                                    f9.f13290q = true;
                                } else {
                                    f9.f13289p = j10;
                                    f9.f13290q = z9;
                                }
                                ArrayList arrayList7 = c1753o4.f20219d;
                                int size6 = arrayList7.size();
                                int i26 = 0;
                                int i27 = 0;
                                int i28 = 0;
                                while (true) {
                                    i10 = 1953658222;
                                    if (i26 >= size6) {
                                        break;
                                    }
                                    C1805p1 c1805p3 = (C1805p1) arrayList7.get(i26);
                                    ArrayList arrayList8 = arrayList6;
                                    if (c1805p3.f29448b == 1953658222) {
                                        C1534jr c1534jr5 = c1805p3.f20397c;
                                        c1534jr5.j(12);
                                        int iZ = c1534jr5.z();
                                        if (iZ > 0) {
                                            i28 += iZ;
                                            i27++;
                                        }
                                    }
                                    i26++;
                                    arrayList6 = arrayList8;
                                }
                                arrayList = arrayList6;
                                c2168w5.f21630h = 0;
                                c2168w5.f21629g = 0;
                                c2168w5.f21628f = 0;
                                f9.f13277d = i27;
                                f9.f13278e = i28;
                                if (f9.f13280g.length < i27) {
                                    f9.f13279f = new long[i27];
                                    f9.f13280g = new int[i27];
                                }
                                if (f9.f13281h.length < i28) {
                                    int i29 = (i28 * 125) / 100;
                                    f9.f13281h = new int[i29];
                                    f9.f13282i = new long[i29];
                                    f9.f13283j = new boolean[i29];
                                    f9.f13285l = new boolean[i29];
                                }
                                int i30 = 0;
                                int i31 = 0;
                                int i32 = 0;
                                while (true) {
                                    long j11 = 0;
                                    if (i30 >= size6) {
                                        i8 = size5;
                                        i9 = i24;
                                        arrayList2 = arrayList4;
                                        C1753o1 c1753o5 = c1753o4;
                                        ArrayList arrayList9 = arrayList7;
                                        sparseArray = sparseArray2;
                                        D1 d9 = c2168w5.f21626d.f13462a;
                                        C2012t1 c2012t6 = f9.f13274a;
                                        c2012t6.getClass();
                                        E1 e8 = d9.f12748k[c2012t6.f21025a];
                                        C1805p1 c1805p1F3 = c1753o5.f(1935763834);
                                        if (c1805p1F3 != null) {
                                            e8.getClass();
                                            C1534jr c1534jr6 = c1805p1F3.f20397c;
                                            c1534jr6.j(8);
                                            if ((c1534jr6.r() & 1) == 1) {
                                                c1534jr6.k(8);
                                            }
                                            int iW = c1534jr6.w();
                                            int iZ2 = c1534jr6.z();
                                            int i33 = f9.f13278e;
                                            if (iZ2 > i33) {
                                                throw C0800Ka.a("Saiz sample count " + iZ2 + " is greater than fragment sample count" + i33, null);
                                            }
                                            int i34 = e8.f12927d;
                                            if (iW == 0) {
                                                boolean[] zArr2 = f9.f13285l;
                                                i12 = 0;
                                                for (int i35 = 0; i35 < iZ2; i35++) {
                                                    int iW2 = c1534jr6.w();
                                                    i12 += iW2;
                                                    zArr2[i35] = iW2 > i34;
                                                }
                                                z7 = false;
                                            } else {
                                                boolean z10 = iW > i34;
                                                i12 = iW * iZ2;
                                                z7 = false;
                                                Arrays.fill(f9.f13285l, 0, iZ2, z10);
                                            }
                                            Arrays.fill(f9.f13285l, iZ2, f9.f13278e, z7);
                                            if (i12 > 0) {
                                                f9.f13287n.g(i12);
                                                f9.f13284k = true;
                                                f9.f13288o = true;
                                            }
                                        }
                                        C1805p1 c1805p1F4 = c1753o5.f(1935763823);
                                        if (c1805p1F4 != null) {
                                            C1534jr c1534jr7 = c1805p1F4.f20397c;
                                            c1534jr7.j(8);
                                            int iR6 = c1534jr7.r();
                                            if ((iR6 & 1) == 1) {
                                                c1534jr7.k(8);
                                            }
                                            int iZ3 = c1534jr7.z();
                                            if (iZ3 != 1) {
                                                throw C0800Ka.a("Unexpected saio entry count: " + iZ3, null);
                                            }
                                            f9.f13276c += p125q0.e.c(iR6) == 0 ? c1534jr7.E() : c1534jr7.F();
                                        }
                                        byte[] bArr2 = null;
                                        C1805p1 c1805p1F5 = c1753o5.f(1936027235);
                                        if (c1805p1F5 != null) {
                                            g(c1805p1F5.f20397c, 0, f9);
                                        }
                                        String str = e8 != null ? e8.f12925b : null;
                                        C1534jr c1534jr8 = null;
                                        C1534jr c1534jr9 = null;
                                        int i36 = 0;
                                        while (i36 < arrayList9.size()) {
                                            ArrayList arrayList10 = arrayList9;
                                            C1805p1 c1805p4 = (C1805p1) arrayList10.get(i36);
                                            C1534jr c1534jr10 = c1805p4.f20397c;
                                            int i37 = c1805p4.f29448b;
                                            if (i37 == 1935828848) {
                                                c1534jr10.j(12);
                                                if (c1534jr10.r() == 1936025959) {
                                                    c1534jr8 = c1534jr10;
                                                }
                                            } else if (i37 == 1936158820) {
                                                c1534jr10.j(12);
                                                if (c1534jr10.r() == 1936025959) {
                                                    c1534jr9 = c1534jr10;
                                                }
                                            }
                                            i36++;
                                            arrayList9 = arrayList10;
                                        }
                                        ArrayList arrayList11 = arrayList9;
                                        if (c1534jr8 != null && c1534jr9 != null) {
                                            c1534jr8.j(8);
                                            int iC = p125q0.e.c(c1534jr8.r());
                                            c1534jr8.k(4);
                                            if (iC == 1) {
                                                c1534jr8.k(4);
                                            }
                                            if (c1534jr8.r() != 1) {
                                                throw C0800Ka.b("Entry count in sbgp != 1 (unsupported).");
                                            }
                                            c1534jr9.j(8);
                                            int iC2 = p125q0.e.c(c1534jr9.r());
                                            c1534jr9.k(4);
                                            if (iC2 == 1) {
                                                if (c1534jr9.E() == 0) {
                                                    throw C0800Ka.b("Variable length description in sgpd found (unsupported)");
                                                }
                                            } else if (iC2 >= 2) {
                                                c1534jr9.k(4);
                                            }
                                            if (c1534jr9.E() != 1) {
                                                throw C0800Ka.b("Entry count in sgpd != 1 (unsupported).");
                                            }
                                            c1534jr9.k(1);
                                            int iW3 = c1534jr9.w();
                                            int i38 = (iW3 & 240) >> 4;
                                            int i39 = iW3 & 15;
                                            if (c1534jr9.w() == 1) {
                                                int iW4 = c1534jr9.w();
                                                byte[] bArr3 = new byte[16];
                                                c1534jr9.f(0, bArr3, 16);
                                                if (iW4 == 0) {
                                                    int iW5 = c1534jr9.w();
                                                    byte[] bArr4 = new byte[iW5];
                                                    c1534jr9.f(0, bArr4, iW5);
                                                    bArr2 = bArr4;
                                                }
                                                f9.f13284k = true;
                                                f9.f13286m = new E1(true, str, iW4, bArr3, i38, i39, bArr2);
                                            }
                                            size = arrayList11.size();
                                            for (i11 = 0; i11 < size; i11++) {
                                                c1805p1 = (C1805p1) arrayList11.get(i11);
                                                if (c1805p1.f29448b == 1970628964) {
                                                    c1534jr = c1805p1.f20397c;
                                                    c1534jr.j(8);
                                                    bArr = this.f21805h;
                                                    c1534jr.f(0, bArr, 16);
                                                    if (Arrays.equals(bArr, f21787J)) {
                                                        g(c1534jr, 16, f9);
                                                    }
                                                }
                                            }
                                            c2220x2 = this;
                                            break;
                                        }
                                        size = arrayList11.size();
                                        while (i11 < size) {
                                            c1805p1 = (C1805p1) arrayList11.get(i11);
                                            if (c1805p1.f29448b == 1970628964) {
                                                c1534jr = c1805p1.f20397c;
                                                c1534jr.j(8);
                                                bArr = this.f21805h;
                                                c1534jr.f(0, bArr, 16);
                                                if (Arrays.equals(bArr, f21787J)) {
                                                    g(c1534jr, 16, f9);
                                                }
                                            }
                                        }
                                        c2220x2 = this;
                                        break;
                                        break;
                                    }
                                    C1805p1 c1805p5 = (C1805p1) arrayList7.get(i30);
                                    if (c1805p5.f29448b == i10) {
                                        int i40 = i31 + 1;
                                        C1534jr c1534jr11 = c1805p5.f20397c;
                                        c1534jr11.j(8);
                                        int iR7 = c1534jr11.r();
                                        D1 d10 = c2168w5.f21626d.f13462a;
                                        C2012t1 c2012t7 = f9.f13274a;
                                        int i41 = Et.f13234a;
                                        f9.f13280g[i31] = c1534jr11.z();
                                        long[] jArr3 = f9.f13279f;
                                        long j12 = f9.f13275b;
                                        jArr3[i31] = j12;
                                        if ((iR7 & 1) != 0) {
                                            jArr3[i31] = j12 + ((long) c1534jr11.r());
                                        }
                                        boolean z11 = (iR7 & 4) != 0;
                                        int iR8 = c2012t7.f21028d;
                                        if (z11) {
                                            iR8 = c1534jr11.r();
                                        }
                                        int i42 = iR7 & 256;
                                        int i43 = iR7 & IMediaList.Event.ItemAdded;
                                        int i44 = iR7 & 1024;
                                        int i45 = iR7 & 2048;
                                        long[] jArr4 = d10.f12745h;
                                        if (jArr4 != null) {
                                            i13 = iR8;
                                            arrayList3 = arrayList7;
                                            if (jArr4.length == 1 && (jArr2 = d10.f12746i) != null) {
                                                long j13 = jArr4[0];
                                                if (j13 == 0) {
                                                    c2012t3 = c2012t7;
                                                    c2168w2 = c2168w5;
                                                    i14 = i45;
                                                } else {
                                                    long j14 = j13 + jArr2[0];
                                                    i14 = i45;
                                                    c2168w2 = c2168w5;
                                                    c2012t3 = c2012t7;
                                                    c8 = Et.v(j14, 1000000L, d10.f12741d, RoundingMode.FLOOR) >= d10.f12742e ? (char) 0 : (char) 0;
                                                }
                                                j11 = jArr2[c8];
                                            }
                                            iArr = f9.f13281h;
                                            jArr = f9.f13282i;
                                            zArr = f9.f13283j;
                                            i15 = f9.f13280g[i31] + i32;
                                            j9 = f9.f13289p;
                                            while (i32 < i15) {
                                                if (i42 != 0) {
                                                    c2012t4 = c2012t3;
                                                    iR = c1534jr11.r();
                                                } else {
                                                    c2012t4 = c2012t3;
                                                    iR = c2012t4.f21026b;
                                                }
                                                c1753o2 = c1753o4;
                                                if (iR >= 0) {
                                                    throw C0800Ka.a("Unexpected negative value: " + iR, null);
                                                }
                                                if (i43 != 0) {
                                                    iR2 = c1534jr11.r();
                                                } else {
                                                    iR2 = c2012t4.f21027c;
                                                }
                                                if (iR2 >= 0) {
                                                    throw C0800Ka.a("Unexpected negative value: " + iR2, null);
                                                }
                                                if (i44 != 0) {
                                                    iR3 = c1534jr11.r();
                                                } else if (i32 != 0) {
                                                    iR3 = c2012t4.f21028d;
                                                } else if (z11) {
                                                    iR3 = i13;
                                                    i32 = 0;
                                                } else {
                                                    i32 = 0;
                                                    iR3 = c2012t4.f21028d;
                                                }
                                                if (i14 != 0) {
                                                    iR4 = c1534jr11.r();
                                                } else {
                                                    iR4 = 0;
                                                }
                                                jV = Et.v((((long) iR4) + j9) - j11, 1000000L, d10.f12740c, RoundingMode.FLOOR);
                                                jArr[i32] = jV;
                                                if (f9.f13290q) {
                                                    c2168w3 = c2168w2;
                                                } else {
                                                    c2168w3 = c2168w2;
                                                    jArr[i32] = jV + c2168w3.f21626d.f13469h;
                                                }
                                                iArr[i32] = iR2;
                                                if (((iR3 >> 16) & 1) == 0) {
                                                    z8 = true;
                                                } else {
                                                    z8 = false;
                                                }
                                                zArr[i32] = z8;
                                                j9 += (long) iR;
                                                i32++;
                                                i15 = i15;
                                                d10 = d10;
                                                c1753o4 = c1753o2;
                                                i42 = i42;
                                                i43 = i43;
                                                c1534jr11 = c1534jr11;
                                                i14 = i14;
                                                c2012t3 = c2012t4;
                                                c2168w2 = c2168w3;
                                                z11 = z11;
                                            }
                                            int i46 = i15;
                                            c1753o1 = c1753o4;
                                            c2168w1 = c2168w2;
                                            f9.f13289p = j9;
                                            i31 = i40;
                                            i32 = i46;
                                        } else {
                                            i13 = iR8;
                                            arrayList3 = arrayList7;
                                        }
                                        c2012t3 = c2012t7;
                                        c2168w2 = c2168w5;
                                        i14 = i45;
                                        iArr = f9.f13281h;
                                        jArr = f9.f13282i;
                                        zArr = f9.f13283j;
                                        i15 = f9.f13280g[i31] + i32;
                                        j9 = f9.f13289p;
                                        while (i32 < i15) {
                                            if (i42 != 0) {
                                                c2012t4 = c2012t3;
                                                iR = c1534jr11.r();
                                            } else {
                                                c2012t4 = c2012t3;
                                                iR = c2012t4.f21026b;
                                            }
                                            c1753o2 = c1753o4;
                                            if (iR >= 0) {
                                                throw C0800Ka.a("Unexpected negative value: " + iR, null);
                                            }
                                            if (i43 != 0) {
                                                iR2 = c1534jr11.r();
                                            } else {
                                                iR2 = c2012t4.f21027c;
                                            }
                                            if (iR2 >= 0) {
                                                throw C0800Ka.a("Unexpected negative value: " + iR2, null);
                                            }
                                            if (i44 != 0) {
                                                iR3 = c1534jr11.r();
                                            } else if (i32 != 0) {
                                                iR3 = c2012t4.f21028d;
                                            } else if (z11) {
                                                iR3 = i13;
                                                i32 = 0;
                                            } else {
                                                i32 = 0;
                                                iR3 = c2012t4.f21028d;
                                            }
                                            if (i14 != 0) {
                                                iR4 = c1534jr11.r();
                                            } else {
                                                iR4 = 0;
                                            }
                                            jV = Et.v((((long) iR4) + j9) - j11, 1000000L, d10.f12740c, RoundingMode.FLOOR);
                                            jArr[i32] = jV;
                                            if (f9.f13290q) {
                                                c2168w3 = c2168w2;
                                                jArr[i32] = jV + c2168w3.f21626d.f13469h;
                                            } else {
                                                c2168w3 = c2168w2;
                                            }
                                            iArr[i32] = iR2;
                                            if (((iR3 >> 16) & 1) == 0) {
                                                z8 = true;
                                            } else {
                                                z8 = false;
                                            }
                                            zArr[i32] = z8;
                                            j9 += (long) iR;
                                            i32++;
                                            i15 = i15;
                                            d10 = d10;
                                            c1753o4 = c1753o2;
                                            i42 = i42;
                                            i43 = i43;
                                            c1534jr11 = c1534jr11;
                                            i14 = i14;
                                            c2012t3 = c2012t4;
                                            c2168w2 = c2168w3;
                                            z11 = z11;
                                        }
                                        int i47 = i15;
                                        c1753o1 = c1753o4;
                                        c2168w1 = c2168w2;
                                        f9.f13289p = j9;
                                        i31 = i40;
                                        i32 = i47;
                                    } else {
                                        i30 = i30;
                                        c1753o1 = c1753o4;
                                        arrayList3 = arrayList7;
                                        sparseArray2 = sparseArray2;
                                        c2168w1 = c2168w5;
                                    }
                                    i30++;
                                    c2168w5 = c2168w1;
                                    size5 = size5;
                                    size6 = size6;
                                    arrayList4 = arrayList4;
                                    i24 = i24;
                                    sparseArray2 = sparseArray2;
                                    arrayList7 = arrayList3;
                                    c1753o4 = c1753o1;
                                    i10 = 1953658222;
                                }
                            } else {
                                c2220x2 = c2220x3;
                                arrayList = arrayList6;
                                i8 = size5;
                                i9 = i24;
                                arrayList2 = arrayList4;
                                sparseArray = sparseArray2;
                            }
                        } else {
                            c2220x2 = c2220x3;
                            arrayList = arrayList6;
                            i8 = size5;
                            i9 = i24;
                            arrayList2 = arrayList4;
                            sparseArray = sparseArray2;
                        }
                        i24 = i9 + 1;
                        c2220x3 = c2220x2;
                        arrayList6 = arrayList;
                        size5 = i8;
                        arrayList4 = arrayList2;
                        sparseArray2 = sparseArray;
                    }
                    c2220x1 = c2220x3;
                    SparseArray sparseArray4 = sparseArray2;
                    C1672mO c1672mOA2 = a(arrayList4);
                    if (c1672mOA2 != null) {
                        int size7 = sparseArray4.size();
                        int i48 = 0;
                        while (i48 < size7) {
                            SparseArray sparseArray5 = sparseArray4;
                            C2168w1 c2168w6 = (C2168w1) sparseArray5.valueAt(i48);
                            D1 d11 = c2168w6.f21626d.f13462a;
                            C2012t1 c2012t8 = c2168w6.f21624b.f13274a;
                            int i49 = Et.f13234a;
                            E1 e9 = d11.f12748k[c2012t8.f21025a];
                            C1672mO c1672mOA3 = c1672mOA2.a(e9 != null ? e9.f12925b : null);
                            C1804p0 c1804p0 = c2168w6.f21626d.f13462a.f12743f;
                            c1804p0.getClass();
                            K k8 = new K(c1804p0);
                            k8.f14275p = c1672mOA3;
                            c2168w6.f21623a.d(new C1804p0(k8));
                            i48++;
                            sparseArray4 = sparseArray5;
                        }
                    }
                    SparseArray sparseArray6 = sparseArray4;
                    if (c2220x1.f21820w != -9223372036854775807L) {
                        int size8 = sparseArray6.size();
                        for (int i50 = 0; i50 < size8; i50++) {
                            C2168w1 c2168w7 = (C2168w1) sparseArray6.valueAt(i50);
                            long j15 = c2220x1.f21820w;
                            int i51 = c2168w7.f21628f;
                            while (true) {
                                F1 f10 = c2168w7.f21624b;
                                if (i51 >= f10.f13278e || f10.f13282i[i51] > j15) {
                                    break;
                                }
                                if (f10.f13283j[i51]) {
                                    c2168w7.f21631i = i51;
                                }
                                i51++;
                            }
                        }
                        c2220x1.f21820w = -9223372036854775807L;
                    }
                } else {
                    c2220x1 = c2220x3;
                    if (!arrayDeque.isEmpty()) {
                        ((C1753o1) arrayDeque.peek()).f20220e.add(c1753o3);
                    }
                }
                c2220x3 = c2220x1;
            }
        }
        b();
    }

    @Override // com.google.android.gms.internal.ads.L
    public final /* synthetic */ List zzd() {
        return this.f21812o;
    }
}
