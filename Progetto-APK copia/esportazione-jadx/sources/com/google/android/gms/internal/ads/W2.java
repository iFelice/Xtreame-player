package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import android.util.SparseIntArray;
import java.nio.charset.StandardCharsets;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.PriorityQueue;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes.dex */
public final class W2 implements U2 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f17150G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f17151H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Object f17152I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Cloneable f17153J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final Object f17154K;

    public W2(X2 x7, int i8) {
        this.f17154K = x7;
        this.f17151H = new C1286f0(new byte[5], 5);
        this.f17152I = new SparseArray();
        this.f17153J = new SparseIntArray();
        this.f17150G = i8;
    }

    /* JADX WARN: Code duplicated, block: B:105:0x024c  */
    /* JADX WARN: Code duplicated, block: B:106:0x0260  */
    /* JADX WARN: Code duplicated, block: B:114:0x02f2  */
    /* JADX WARN: Code duplicated, block: B:115:0x0305  */
    /* JADX WARN: Code duplicated, block: B:118:0x0321  */
    /* JADX WARN: Code duplicated, block: B:19:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:22:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:25:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:52:0x0135 A[PHI: r22 r23
      0x0135: PHI (r22v3 java.lang.String) = (r22v2 java.lang.String), (r22v1 java.lang.String), (r22v1 java.lang.String) binds: [B:51:0x0126, B:44:0x0112, B:27:0x00e7] A[DONT_GENERATE, DONT_INLINE]
      0x0135: PHI (r23v3 int) = (r23v2 int), (r23v1 int), (r23v1 int) binds: [B:51:0x0126, B:44:0x0112, B:27:0x00e7] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:68:0x019f  */
    /* JADX WARN: Code duplicated, block: B:71:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:73:0x01b7  */
    @Override // com.google.android.gms.internal.ads.U2
    public final void b(C1534jr c1534jr) {
        Z2 z7;
        InterfaceC1031a3 q7;
        InterfaceC1031a3 q8;
        C1286f0 c1286f0;
        if (c1534jr.w() == 2) {
            X2 x7 = (X2) this.f17154K;
            int i8 = 0;
            Ys ys = (Ys) x7.f17364a.get(0);
            if ((c1534jr.w() & 128) != 0) {
                c1534jr.k(1);
                int iA = c1534jr.A();
                int i9 = 3;
                c1534jr.k(3);
                C1286f0 c1286f1 = (C1286f0) this.f17151H;
                c1534jr.f(0, c1286f1.f18645b, 2);
                c1286f1.t(0);
                c1286f1.v(3);
                int i10 = 13;
                x7.f17379p = c1286f1.g(13);
                c1534jr.f(0, c1286f1.f18645b, 2);
                c1286f1.t(0);
                int i11 = 4;
                c1286f1.v(4);
                int i12 = 12;
                c1534jr.k(c1286f1.g(12));
                SparseArray sparseArray = (SparseArray) this.f17152I;
                sparseArray.clear();
                SparseIntArray sparseIntArray = (SparseIntArray) this.f17153J;
                sparseIntArray.clear();
                int iO = c1534jr.o();
                while (iO > 0) {
                    int i13 = 5;
                    c1534jr.f(i8, c1286f1.f18645b, 5);
                    c1286f1.t(i8);
                    int iG = c1286f1.g(8);
                    c1286f1.v(i9);
                    int iG2 = c1286f1.g(i10);
                    c1286f1.v(i11);
                    int iG3 = c1286f1.g(i12);
                    int i14 = c1534jr.f19516b;
                    int i15 = i14 + iG3;
                    int i16 = -1;
                    String strTrim = null;
                    ArrayList arrayList = null;
                    int iW = 0;
                    while (c1534jr.f19516b < i15) {
                        int iW2 = c1534jr.w();
                        int iW3 = c1534jr.f19516b + c1534jr.w();
                        if (iW3 > i15) {
                            C1286f0 c1286f2 = c1286f1;
                            c1534jr.j(i15);
                            z7 = new Z2(i16, strTrim, iW, arrayList, Arrays.copyOfRange(c1534jr.f19515a, i14, i15));
                            if (iG != 6 || iG == 5) {
                                iG = i16;
                            }
                            iO -= iG3 + 5;
                            if (x7.f17370g.get(iG2)) {
                                i9 = 3;
                            } else {
                                I2.c cVar = x7.f17367d;
                                cVar.getClass();
                                i9 = 3;
                                if (iG == 2) {
                                    if (iG != 3 || iG == 4) {
                                        q7 = new Q2(new O2(z7.f17711c, z7.a()));
                                    } else {
                                        if (iG == 21) {
                                            q8 = new Q2(new E2());
                                        } else if (iG == 27) {
                                            q7 = new Q2(new L2(new p004a3.b(cVar.h(z7))));
                                        } else if (iG == 36) {
                                            q7 = new Q2(new M2(new p004a3.b(cVar.h(z7))));
                                        } else if (iG == 45) {
                                            q8 = new Q2(new P2());
                                        } else if (iG == 89) {
                                            q7 = new Q2(new E2((List) z7.f17712d));
                                        } else if (iG == 172) {
                                            q7 = new Q2(new A2(z7.f17711c, z7.a(), 1));
                                        } else if (iG == 257) {
                                            q8 = new V2(new p004a3.b("application/vnd.dvb.ait"));
                                        } else if (iG != 128) {
                                            if (iG == 129) {
                                                q7 = new Q2(new A2(z7.f17711c, z7.a(), 0));
                                            } else if (iG == 138) {
                                                q7 = new Q2(new D2(z7.f17711c, z7.a(), 4096));
                                            } else if (iG != 139) {
                                                switch (iG) {
                                                    case 15:
                                                        q7 = new Q2(new C2(z7.a(), z7.f17711c, false));
                                                        break;
                                                    case 16:
                                                        q7 = new Q2(new J2(new C1083b3(cVar.h(z7))));
                                                        break;
                                                    case 17:
                                                        q7 = new Q2(new N2(z7.f17711c, z7.a()));
                                                        break;
                                                    default:
                                                        switch (iG) {
                                                            case 134:
                                                                q8 = new V2(new p004a3.b("application/x-scte35"));
                                                                break;
                                                            case 135:
                                                                q7 = new Q2(new A2(z7.f17711c, z7.a(), 0));
                                                                break;
                                                            case 136:
                                                                q7 = new Q2(new D2(z7.f17711c, z7.a(), 4096));
                                                                break;
                                                            default:
                                                                q7 = null;
                                                                break;
                                                        }
                                                        break;
                                                }
                                            } else {
                                                q7 = new Q2(new D2(z7.f17711c, z7.a(), 5408));
                                            }
                                        }
                                        q7 = q8;
                                    }
                                    sparseIntArray.put(iG2, iG2);
                                    sparseArray.put(iG2, q7);
                                }
                                q7 = new Q2(new H2(new C1083b3(cVar.h(z7))));
                                sparseIntArray.put(iG2, iG2);
                                sparseArray.put(iG2, q7);
                            }
                            c1286f1 = c1286f2;
                            i8 = 0;
                            i10 = 13;
                            i11 = 4;
                            i12 = 12;
                        } else {
                            if (iW2 == i13) {
                                long jE = c1534jr.E();
                                if (jE == 1094921523) {
                                    c1286f0 = c1286f1;
                                    i16 = 129;
                                } else if (jE == 1161904947) {
                                    c1286f0 = c1286f1;
                                    i16 = 135;
                                } else if (jE == 1094921524) {
                                    c1286f0 = c1286f1;
                                    i16 = 172;
                                } else if (jE == 1212503619) {
                                    c1286f0 = c1286f1;
                                    i16 = 36;
                                } else {
                                    c1286f0 = c1286f1;
                                }
                            } else if (iW2 == 106) {
                                c1286f0 = c1286f1;
                                i16 = 129;
                            } else if (iW2 == 122) {
                                c1286f0 = c1286f1;
                                i16 = 135;
                            } else if (iW2 == 127) {
                                int iW4 = c1534jr.w();
                                if (iW4 == 21) {
                                    c1286f0 = c1286f1;
                                    i16 = 172;
                                } else if (iW4 == 14) {
                                    c1286f0 = c1286f1;
                                    i16 = 136;
                                } else if (iW4 == 33) {
                                    c1286f0 = c1286f1;
                                    i16 = 139;
                                } else {
                                    c1286f0 = c1286f1;
                                }
                            } else if (iW2 == 123) {
                                c1286f0 = c1286f1;
                                i16 = 138;
                            } else if (iW2 == 10) {
                                strTrim = c1534jr.b(3, StandardCharsets.UTF_8).trim();
                                iW = c1534jr.w();
                                c1286f0 = c1286f1;
                            } else if (iW2 == 89) {
                                ArrayList arrayList2 = new ArrayList();
                                while (c1534jr.f19516b < iW3) {
                                    String strTrim2 = c1534jr.b(3, StandardCharsets.UTF_8).trim();
                                    c1534jr.w();
                                    C1286f0 c1286f3 = c1286f1;
                                    byte[] bArr = new byte[4];
                                    c1534jr.f(0, bArr, 4);
                                    arrayList2.add(new Y2(strTrim2, bArr));
                                    c1286f1 = c1286f3;
                                }
                                c1286f0 = c1286f1;
                                arrayList = arrayList2;
                                i16 = 89;
                            } else {
                                c1286f0 = c1286f1;
                                if (iW2 == 111) {
                                    i16 = 257;
                                }
                            }
                            c1534jr.k(iW3 - c1534jr.f19516b);
                            c1286f1 = c1286f0;
                            i13 = 5;
                        }
                    }
                    C1286f0 c1286f4 = c1286f1;
                    c1534jr.j(i15);
                    z7 = new Z2(i16, strTrim, iW, arrayList, Arrays.copyOfRange(c1534jr.f19515a, i14, i15));
                    if (iG != 6) {
                        iG = i16;
                    } else {
                        iG = i16;
                    }
                    iO -= iG3 + 5;
                    if (x7.f17370g.get(iG2)) {
                        I2.c cVar2 = x7.f17367d;
                        cVar2.getClass();
                        i9 = 3;
                        if (iG == 2) {
                            if (iG != 3) {
                                q7 = new Q2(new O2(z7.f17711c, z7.a()));
                            } else {
                                q7 = new Q2(new O2(z7.f17711c, z7.a()));
                            }
                            sparseIntArray.put(iG2, iG2);
                            sparseArray.put(iG2, q7);
                        }
                        q7 = new Q2(new H2(new C1083b3(cVar2.h(z7))));
                        sparseIntArray.put(iG2, iG2);
                        sparseArray.put(iG2, q7);
                    } else {
                        i9 = 3;
                    }
                    c1286f1 = c1286f4;
                    i8 = 0;
                    i10 = 13;
                    i11 = 4;
                    i12 = 12;
                }
                int size = sparseIntArray.size();
                for (int i17 = 0; i17 < size; i17++) {
                    int iKeyAt = sparseIntArray.keyAt(i17);
                    int iValueAt = sparseIntArray.valueAt(i17);
                    x7.f17370g.put(iKeyAt, true);
                    x7.f17371h.put(iValueAt, true);
                    InterfaceC1031a3 interfaceC1031a3 = (InterfaceC1031a3) sparseArray.valueAt(i17);
                    if (interfaceC1031a3 != null) {
                        interfaceC1031a3.a(ys, x7.f17374k, new A1.I(iA, iKeyAt, 8192, 1));
                        x7.f17369f.put(iValueAt, interfaceC1031a3);
                    }
                }
                x7.f17369f.remove(this.f17150G);
                x7.f17375l = 0;
                x7.f17374k.f();
                x7.f17376m = true;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0020, code lost:
    
        if (r10 < r0.f17554H) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void c(long r10, com.google.android.gms.internal.ads.C1534jr r12) {
        /*
            r9 = this;
            int r0 = r9.f17150G
            if (r0 == 0) goto L7b
            r1 = -1
            java.lang.Object r2 = r9.f17154K
            if (r0 == r1) goto L23
            r0 = r2
            java.util.PriorityQueue r0 = (java.util.PriorityQueue) r0
            int r3 = r0.size()
            int r4 = r9.f17150G
            if (r3 < r4) goto L23
            java.lang.Object r0 = r0.peek()
            com.google.android.gms.internal.ads.Xy r0 = (com.google.android.gms.internal.ads.Xy) r0
            int r3 = com.google.android.gms.internal.ads.Et.f13234a
            long r3 = r0.f17554H
            int r0 = (r10 > r3 ? 1 : (r10 == r3 ? 0 : -1))
            if (r0 >= 0) goto L23
            goto L7b
        L23:
            java.lang.Cloneable r0 = r9.f17153J
            java.util.ArrayDeque r0 = (java.util.ArrayDeque) r0
            boolean r3 = r0.isEmpty()
            if (r3 == 0) goto L33
            com.google.android.gms.internal.ads.Xy r0 = new com.google.android.gms.internal.ads.Xy
            r0.<init>()
            goto L39
        L33:
            java.lang.Object r0 = r0.poll()
            com.google.android.gms.internal.ads.Xy r0 = (com.google.android.gms.internal.ads.Xy) r0
        L39:
            java.lang.Object r3 = r9.f17152I
            java.util.concurrent.atomic.AtomicLong r3 = (java.util.concurrent.atomic.AtomicLong) r3
            long r3 = r3.getAndIncrement()
            r0.getClass()
            r5 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r7 = 0
            int r8 = (r10 > r5 ? 1 : (r10 == r5 ? 0 : -1))
            if (r8 == 0) goto L50
            r5 = 1
            goto L51
        L50:
            r5 = 0
        L51:
            p113o3.r.M(r5)
            r0.f17554H = r10
            r0.f17555I = r3
            int r10 = r12.o()
            com.google.android.gms.internal.ads.jr r11 = r0.f17553G
            r11.g(r10)
            byte[] r10 = r12.f19515a
            int r3 = r12.f19516b
            byte[] r11 = r11.f19515a
            int r12 = r12.o()
            java.lang.System.arraycopy(r10, r3, r11, r7, r12)
            java.util.PriorityQueue r2 = (java.util.PriorityQueue) r2
            r2.add(r0)
            int r10 = r9.f17150G
            if (r10 == r1) goto L7a
            r9.d(r10)
        L7a:
            return
        L7b:
            java.lang.Object r0 = r9.f17151H
            com.google.android.gms.internal.ads.Ny r0 = (com.google.android.gms.internal.ads.Ny) r0
            com.google.android.gms.internal.ads.K4 r0 = (com.google.android.gms.internal.ads.K4) r0
            int r1 = r0.f14300G
            switch(r1) {
                case 6: goto L92;
                default: goto L86;
            }
        L86:
            java.lang.Object r0 = r0.f14301H
            a3.b r0 = (p004a3.b) r0
            java.lang.Object r0 = r0.f8651I
            com.google.android.gms.internal.ads.e0[] r0 = (com.google.android.gms.internal.ads.InterfaceC1234e0[]) r0
            com.google.android.gms.internal.measurement.H1.D(r10, r12, r0)
            goto L9b
        L92:
            java.lang.Object r0 = r0.f14301H
            com.google.android.gms.internal.ads.x1 r0 = (com.google.android.gms.internal.ads.C2220x1) r0
            com.google.android.gms.internal.ads.e0[] r0 = r0.f21796H
            com.google.android.gms.internal.measurement.H1.D(r10, r12, r0)
        L9b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.W2.c(long, com.google.android.gms.internal.ads.jr):void");
    }

    public final void d(int i8) {
        while (true) {
            PriorityQueue priorityQueue = (PriorityQueue) this.f17154K;
            if (priorityQueue.size() <= i8) {
                return;
            }
            Xy xy = (Xy) priorityQueue.poll();
            int i9 = Et.f13234a;
            Ny ny = (Ny) this.f17151H;
            long j8 = xy.f17554H;
            K4 k8 = (K4) ny;
            int i10 = k8.f14300G;
            C1534jr c1534jr = xy.f17553G;
            switch (i10) {
                case 6:
                    com.google.android.gms.internal.measurement.H1.D(j8, c1534jr, ((C2220x1) k8.f14301H).f21796H);
                    break;
                default:
                    com.google.android.gms.internal.measurement.H1.D(j8, c1534jr, (InterfaceC1234e0[]) ((p004a3.b) k8.f14301H).f8651I);
                    break;
            }
            ((ArrayDeque) this.f17153J).push(xy);
        }
    }

    public W2(K4 k8) {
        this.f17152I = new AtomicLong();
        this.f17151H = k8;
        this.f17153J = new ArrayDeque();
        this.f17154K = new PriorityQueue();
        this.f17150G = -1;
    }

    @Override // com.google.android.gms.internal.ads.U2
    public final void a(Ys ys, N n7, A1.I i8) {
    }
}
