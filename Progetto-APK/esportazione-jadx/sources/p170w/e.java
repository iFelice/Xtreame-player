package p170w;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import p096m2.u;
import p148t.a;
import p156u.d;
import p156u.i;
import p178x.b;
import p178x.c;
import p178x.h;
import p178x.o;
import p178x.p;
import p193z.f;

/* JADX INFO: loaded from: classes.dex */
public final class e extends j {

    /* JADX INFO: renamed from: A0, reason: collision with root package name */
    public b[] f30859A0;

    /* JADX INFO: renamed from: B0, reason: collision with root package name */
    public b[] f30860B0;

    /* JADX INFO: renamed from: C0, reason: collision with root package name */
    public int f30861C0;

    /* JADX INFO: renamed from: D0, reason: collision with root package name */
    public boolean f30862D0;

    /* JADX INFO: renamed from: E0, reason: collision with root package name */
    public boolean f30863E0;

    /* JADX INFO: renamed from: F0, reason: collision with root package name */
    public WeakReference f30864F0;

    /* JADX INFO: renamed from: G0, reason: collision with root package name */
    public WeakReference f30865G0;

    /* JADX INFO: renamed from: H0, reason: collision with root package name */
    public WeakReference f30866H0;

    /* JADX INFO: renamed from: I0, reason: collision with root package name */
    public WeakReference f30867I0;

    /* JADX INFO: renamed from: J0, reason: collision with root package name */
    public HashSet f30868J0;

    /* JADX INFO: renamed from: K0, reason: collision with root package name */
    public b f30869K0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public u f30870q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public p178x.e f30871r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public int f30872s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public f f30873t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public boolean f30874u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public d f30875v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public int f30876w0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public int f30877x0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public int f30878y0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public int f30879z0;

    public static void R(d dVar, f fVar, b bVar) {
        int i8;
        int i9;
        if (fVar == null) {
            return;
        }
        if (dVar.f30829f0 == 8 || (dVar instanceof f) || (dVar instanceof a)) {
            bVar.f31119e = 0;
            bVar.f31120f = 0;
            return;
        }
        int[] iArr = dVar.f30847o0;
        bVar.f31115a = iArr[0];
        bVar.f31116b = iArr[1];
        bVar.f31117c = dVar.o();
        bVar.f31118d = dVar.i();
        bVar.f31123i = false;
        bVar.f31124j = 0;
        boolean z7 = bVar.f31115a == 3;
        boolean z8 = bVar.f31116b == 3;
        boolean z9 = z7 && dVar.f30813V > 0.0f;
        boolean z10 = z8 && dVar.f30813V > 0.0f;
        if (z7 && dVar.r(0) && dVar.f30850r == 0 && !z9) {
            bVar.f31115a = 2;
            if (z8 && dVar.f30851s == 0) {
                bVar.f31115a = 1;
            }
            z7 = false;
        }
        if (z8 && dVar.r(1) && dVar.f30851s == 0 && !z10) {
            bVar.f31116b = 2;
            if (z7 && dVar.f30850r == 0) {
                bVar.f31116b = 1;
            }
            z8 = false;
        }
        if (dVar.y()) {
            bVar.f31115a = 1;
            z7 = false;
        }
        if (dVar.z()) {
            bVar.f31116b = 1;
            z8 = false;
        }
        int[] iArr2 = dVar.f30852t;
        if (z9) {
            if (iArr2[0] == 4) {
                bVar.f31115a = 1;
            } else if (!z8) {
                if (bVar.f31116b == 1) {
                    i9 = bVar.f31118d;
                } else {
                    bVar.f31115a = 2;
                    fVar.b(dVar, bVar);
                    i9 = bVar.f31120f;
                }
                bVar.f31115a = 1;
                bVar.f31117c = (int) (dVar.f30813V * i9);
            }
        }
        if (z10) {
            if (iArr2[1] == 4) {
                bVar.f31116b = 1;
            } else if (!z7) {
                if (bVar.f31115a == 1) {
                    i8 = bVar.f31117c;
                } else {
                    bVar.f31116b = 2;
                    fVar.b(dVar, bVar);
                    i8 = bVar.f31119e;
                }
                bVar.f31116b = 1;
                if (dVar.f30814W == -1) {
                    bVar.f31118d = (int) (i8 / dVar.f30813V);
                } else {
                    bVar.f31118d = (int) (dVar.f30813V * i8);
                }
            }
        }
        fVar.b(dVar, bVar);
        dVar.K(bVar.f31119e);
        dVar.H(bVar.f31120f);
        dVar.f30796E = bVar.f31122h;
        int i10 = bVar.f31121g;
        dVar.f30817Z = i10;
        dVar.f30796E = i10 > 0;
        bVar.f31124j = 0;
    }

    @Override // p170w.j, p170w.d
    public final void A() {
        this.f30875v0.t();
        this.f30876w0 = 0;
        this.f30877x0 = 0;
        super.A();
    }

    @Override // p170w.d
    public final void L(boolean z7, boolean z8) {
        super.L(z7, z8);
        int size = this.f30889p0.size();
        for (int i8 = 0; i8 < size; i8++) {
            ((d) this.f30889p0.get(i8)).L(z7, z8);
        }
    }

    /* JADX WARN: Code duplicated, block: B:341:0x05ca  */
    /* JADX WARN: Code duplicated, block: B:344:0x05d6  */
    /* JADX WARN: Code duplicated, block: B:352:0x05ee  */
    /* JADX WARN: Code duplicated, block: B:353:0x05f5  */
    /* JADX WARN: Code duplicated, block: B:359:0x0609  */
    /* JADX WARN: Code duplicated, block: B:365:0x0622  */
    /* JADX WARN: Code duplicated, block: B:368:0x0628  */
    /* JADX WARN: Code duplicated, block: B:370:0x0630 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:373:0x063e  */
    /* JADX WARN: Code duplicated, block: B:379:0x064e  */
    /* JADX WARN: Code duplicated, block: B:383:0x0659  */
    /* JADX WARN: Code duplicated, block: B:386:0x0664 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:388:0x066a  */
    /* JADX WARN: Code duplicated, block: B:391:0x0672  */
    /* JADX WARN: Code duplicated, block: B:395:0x0679  */
    /* JADX WARN: Code duplicated, block: B:398:0x0683  */
    /* JADX WARN: Code duplicated, block: B:400:0x068f  */
    /* JADX WARN: Code duplicated, block: B:404:0x06a0  */
    /* JADX WARN: Code duplicated, block: B:407:0x06b1 A[Catch: Exception -> 0x06bf, LOOP:12: B:406:0x06af->B:407:0x06b1, LOOP_END, TryCatch #0 {Exception -> 0x06bf, blocks: (B:405:0x06a3, B:407:0x06b1, B:411:0x06c6), top: B:535:0x06a3 }] */
    /* JADX WARN: Code duplicated, block: B:416:0x06d3 A[Catch: Exception -> 0x06fe, TRY_LEAVE, TryCatch #2 {Exception -> 0x06fe, blocks: (B:414:0x06cd, B:416:0x06d3), top: B:539:0x06cd }] */
    /* JADX WARN: Code duplicated, block: B:428:0x0702  */
    /* JADX WARN: Code duplicated, block: B:431:0x0708 A[Catch: Exception -> 0x06f4, TRY_ENTER, TryCatch #6 {Exception -> 0x06f4, blocks: (B:420:0x06ed, B:431:0x0708, B:433:0x070e, B:436:0x072e, B:438:0x0734, B:442:0x074c), top: B:547:0x06ed }] */
    /* JADX WARN: Code duplicated, block: B:436:0x072e A[Catch: Exception -> 0x06f4, TRY_ENTER, TryCatch #6 {Exception -> 0x06f4, blocks: (B:420:0x06ed, B:431:0x0708, B:433:0x070e, B:436:0x072e, B:438:0x0734, B:442:0x074c), top: B:547:0x06ed }] */
    /* JADX WARN: Code duplicated, block: B:448:0x075b A[Catch: Exception -> 0x0786, TryCatch #4 {Exception -> 0x0786, blocks: (B:429:0x0704, B:434:0x072a, B:446:0x0757, B:448:0x075b, B:450:0x0761), top: B:543:0x0704 }] */
    /* JADX WARN: Code duplicated, block: B:464:0x078a  */
    /* JADX WARN: Code duplicated, block: B:466:0x078f A[PHI: r21 r22 r26
      0x078f: PHI (r21v4 boolean) = (r21v10 boolean), (r21v19 boolean) binds: [B:470:0x07ac, B:465:0x078c] A[DONT_GENERATE, DONT_INLINE]
      0x078f: PHI (r22v3 java.lang.Object) = (r22v5 java.lang.Object), (r22v11 java.lang.Object) binds: [B:470:0x07ac, B:465:0x078c] A[DONT_GENERATE, DONT_INLINE]
      0x078f: PHI (r26v3 java.lang.Object) = (r26v5 java.lang.Object), (r26v12 java.lang.Object) binds: [B:470:0x07ac, B:465:0x078c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:474:0x07c4  */
    /* JADX WARN: Code duplicated, block: B:476:0x07d8  */
    /* JADX WARN: Code duplicated, block: B:478:0x07dc  */
    /* JADX WARN: Code duplicated, block: B:47:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:481:0x07e8  */
    /* JADX WARN: Code duplicated, block: B:483:0x07ef A[LOOP:13: B:482:0x07ed->B:483:0x07ef, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:487:0x0802 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:502:0x0868  */
    /* JADX WARN: Code duplicated, block: B:505:0x087a  */
    /* JADX WARN: Code duplicated, block: B:506:0x0885  */
    /* JADX WARN: Code duplicated, block: B:509:0x0898  */
    /* JADX WARN: Code duplicated, block: B:510:0x08a0  */
    /* JADX WARN: Code duplicated, block: B:512:0x08a4  */
    /* JADX WARN: Code duplicated, block: B:514:0x08aa A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:520:0x08c0 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:525:0x08d7  */
    /* JADX WARN: Code duplicated, block: B:527:0x08db  */
    /* JADX WARN: Code duplicated, block: B:528:0x08dd  */
    /* JADX WARN: Code duplicated, block: B:532:0x08ec  */
    /* JADX WARN: Code duplicated, block: B:539:0x06cd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:599:0x0694 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:60:0x0128  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12, types: [boolean] */
    /* JADX WARN: Type inference failed for: r7v17 */
    @Override // p170w.j
    public final void N() {
        int i8;
        Object[] objArr;
        Object obj;
        int i9;
        int i10;
        int i11;
        Object obj2;
        int i12;
        boolean z7;
        boolean z8;
        char c8;
        boolean z9;
        int i13;
        int i14;
        boolean z10;
        int i15;
        boolean z11;
        boolean z12;
        int i16;
        boolean z13;
        boolean zS;
        int size;
        int i17;
        boolean z14;
        d dVar;
        boolean z15;
        int iMax;
        ?? r7;
        boolean z16;
        int iMax2;
        boolean z17;
        int i18;
        int i19;
        int i20;
        WeakReference weakReference;
        Object obj3;
        WeakReference weakReference2;
        WeakReference weakReference3;
        WeakReference weakReference4;
        Object obj4;
        d dVar2;
        int i21;
        int i22;
        int i23;
        char c9;
        o oVar;
        o oVar2;
        int i24;
        int iO;
        int i25;
        int i26;
        int i27;
        int iB;
        int iB2;
        o oVar3;
        o oVar4;
        int[] iArr;
        boolean[] zArr = i.f30888a;
        this.f30815X = 0;
        this.f30816Y = 0;
        this.f30862D0 = false;
        this.f30863E0 = false;
        int size2 = this.f30889p0.size();
        int iMax3 = Math.max(0, o());
        int iMax4 = Math.max(0, i());
        int[] iArr2 = this.f30847o0;
        int i28 = iArr2[1];
        int i29 = iArr2[0];
        int i30 = this.f30872s0;
        c cVar = this.f30800I;
        c cVar2 = this.f30799H;
        if (i30 == 0 && i.b(this.f30861C0, 1)) {
            f fVar = this.f30873t0;
            int i31 = iArr2[0];
            int i32 = iArr2[1];
            B();
            ArrayList arrayList = this.f30889p0;
            int size3 = arrayList.size();
            for (int i33 = 0; i33 < size3; i33++) {
                ((d) arrayList.get(i33)).B();
            }
            boolean z18 = this.f30874u0;
            if (i31 == 1) {
                F(0, o());
            } else {
                cVar2.i(0);
                this.f30815X = 0;
            }
            int i34 = 0;
            boolean z19 = false;
            boolean z20 = false;
            while (i34 < size3) {
                c cVar3 = cVar2;
                d dVar3 = (d) arrayList.get(i34);
                int i35 = iMax4;
                if (dVar3 instanceof f) {
                    f fVar2 = (f) dVar3;
                    iArr = iArr2;
                    if (fVar2.f30884t0 == 1) {
                        int i36 = fVar2.f30881q0;
                        if (i36 != -1) {
                            fVar2.N(i36);
                        } else if (fVar2.f30882r0 != -1 && y()) {
                            fVar2.N(o() - fVar2.f30882r0);
                        } else if (y()) {
                            fVar2.N((int) ((fVar2.f30880p0 * o()) + 0.5f));
                        }
                        z19 = true;
                    }
                } else {
                    iArr = iArr2;
                    if ((dVar3 instanceof a) && ((a) dVar3).P() == 0) {
                        z20 = true;
                    }
                }
                i34++;
                iMax4 = i35;
                cVar2 = cVar3;
                iArr2 = iArr;
            }
            i8 = iMax4;
            objArr = iArr2;
            obj = cVar2;
            if (z19) {
                for (int i37 = 0; i37 < size3; i37++) {
                    d dVar4 = (d) arrayList.get(i37);
                    if (dVar4 instanceof f) {
                        f fVar3 = (f) dVar4;
                        if (fVar3.f30884t0 == 1) {
                            h.b(0, fVar3, fVar, z18);
                        }
                    }
                }
            }
            h.b(0, this, fVar, z18);
            if (z20) {
                for (int i38 = 0; i38 < size3; i38++) {
                    d dVar5 = (d) arrayList.get(i38);
                    if (dVar5 instanceof a) {
                        a aVar = (a) dVar5;
                        if (aVar.P() == 0 && aVar.O()) {
                            h.b(1, aVar, fVar, z18);
                        }
                    }
                }
            }
            if (i32 == 1) {
                G(0, i());
            } else {
                cVar.i(0);
                this.f30816Y = 0;
            }
            boolean z21 = false;
            boolean z22 = false;
            for (int i39 = 0; i39 < size3; i39++) {
                d dVar6 = (d) arrayList.get(i39);
                if (dVar6 instanceof f) {
                    f fVar4 = (f) dVar6;
                    if (fVar4.f30884t0 == 0) {
                        int i40 = fVar4.f30881q0;
                        if (i40 != -1) {
                            fVar4.N(i40);
                        } else if (fVar4.f30882r0 != -1 && z()) {
                            fVar4.N(i() - fVar4.f30882r0);
                        } else if (z()) {
                            fVar4.N((int) ((fVar4.f30880p0 * i()) + 0.5f));
                        }
                        z21 = true;
                    }
                } else if ((dVar6 instanceof a) && ((a) dVar6).P() == 1) {
                    z22 = true;
                }
            }
            if (z21) {
                for (int i41 = 0; i41 < size3; i41++) {
                    d dVar7 = (d) arrayList.get(i41);
                    if (dVar7 instanceof f) {
                        f fVar5 = (f) dVar7;
                        if (fVar5.f30884t0 == 0) {
                            h.g(1, fVar5, fVar);
                        }
                    }
                }
            }
            h.g(0, this, fVar);
            if (z22) {
                for (int i42 = 0; i42 < size3; i42++) {
                    d dVar8 = (d) arrayList.get(i42);
                    if (dVar8 instanceof a) {
                        a aVar2 = (a) dVar8;
                        if (aVar2.P() == 1 && aVar2.O()) {
                            h.g(1, aVar2, fVar);
                        }
                    }
                }
            }
            for (int i43 = 0; i43 < size3; i43++) {
                d dVar9 = (d) arrayList.get(i43);
                if (dVar9.x() && h.a(dVar9)) {
                    R(dVar9, fVar, h.f31149a);
                    if (!(dVar9 instanceof f)) {
                        h.b(0, dVar9, fVar, z18);
                        h.g(0, dVar9, fVar);
                    } else if (((f) dVar9).f30884t0 == 0) {
                        h.g(0, dVar9, fVar);
                    } else {
                        h.b(0, dVar9, fVar, z18);
                    }
                }
            }
            for (int i44 = 0; i44 < size2; i44++) {
                d dVar10 = (d) this.f30889p0.get(i44);
                if (dVar10.x() && !(dVar10 instanceof f) && !(dVar10 instanceof a)) {
                    int iH = dVar10.h(0);
                    int iH2 = dVar10.h(1);
                    if (iH != 3 || dVar10.f30850r == 1 || iH2 != 3 || dVar10.f30851s == 1) {
                        R(dVar10, this.f30873t0, new b());
                    }
                }
            }
        } else {
            i8 = iMax4;
            objArr = iArr2;
            obj = cVar2;
        }
        d dVar11 = this.f30875v0;
        if (size2 <= 2 || !((i29 == 2 || i28 == 2) && i.b(this.f30861C0, 1024))) {
            i9 = size2;
            i10 = i28;
            i11 = i29;
            obj2 = cVar;
            i12 = iMax3;
        } else {
            f fVar6 = this.f30873t0;
            ArrayList arrayList2 = this.f30889p0;
            int size4 = arrayList2.size();
            int i45 = 0;
            while (true) {
                if (i45 < size4) {
                    d dVar12 = (d) arrayList2.get(i45);
                    byte b8 = objArr[0];
                    byte b9 = objArr[1];
                    int[] iArr3 = dVar12.f30847o0;
                    if (Q3.b.z(b8, b9, iArr3[0], iArr3[1])) {
                        i45++;
                    } else {
                        i21 = iMax3;
                        i9 = size2;
                        i22 = i28;
                        i23 = i29;
                        obj2 = cVar;
                    }
                } else {
                    int i46 = 0;
                    ArrayList arrayList3 = null;
                    ArrayList<h> arrayList4 = null;
                    ArrayList arrayList5 = null;
                    ArrayList<h> arrayList6 = null;
                    ArrayList arrayList7 = null;
                    ArrayList arrayList8 = null;
                    while (i46 < size4) {
                        c cVar4 = cVar;
                        d dVar13 = (d) arrayList2.get(i46);
                        int i47 = size2;
                        byte b10 = objArr[0];
                        int i48 = i28;
                        byte b11 = objArr[1];
                        int i49 = iMax3;
                        int[] iArr4 = dVar13.f30847o0;
                        int i50 = i29;
                        if (!Q3.b.z(b10, b11, iArr4[0], iArr4[1])) {
                            R(dVar13, fVar6, this.f30869K0);
                        }
                        boolean z23 = dVar13 instanceof f;
                        if (z23) {
                            f fVar7 = (f) dVar13;
                            if (fVar7.f30884t0 == 0) {
                                if (arrayList5 == null) {
                                    arrayList5 = new ArrayList();
                                }
                                arrayList5.add(fVar7);
                            }
                            if (fVar7.f30884t0 == 1) {
                                if (arrayList3 == null) {
                                    arrayList3 = new ArrayList();
                                }
                                arrayList3.add(fVar7);
                            }
                        }
                        if (dVar13 instanceof h) {
                            if (dVar13 instanceof a) {
                                a aVar3 = (a) dVar13;
                                if (aVar3.P() == 0) {
                                    if (arrayList4 == null) {
                                        arrayList4 = new ArrayList();
                                    }
                                    arrayList4.add(aVar3);
                                }
                                if (aVar3.P() == 1) {
                                    if (arrayList6 == null) {
                                        arrayList6 = new ArrayList();
                                    }
                                    arrayList6.add(aVar3);
                                }
                            } else {
                                h hVar = (h) dVar13;
                                if (arrayList4 == null) {
                                    arrayList4 = new ArrayList();
                                }
                                arrayList4.add(hVar);
                                if (arrayList6 == null) {
                                    arrayList6 = new ArrayList();
                                }
                                arrayList6.add(hVar);
                            }
                        }
                        if (dVar13.f30799H.f30788f == null && dVar13.f30801J.f30788f == null && !z23 && !(dVar13 instanceof a)) {
                            if (arrayList7 == null) {
                                arrayList7 = new ArrayList();
                            }
                            arrayList7.add(dVar13);
                        }
                        if (dVar13.f30800I.f30788f == null && dVar13.f30802K.f30788f == null && dVar13.f30803L.f30788f == null && !z23 && !(dVar13 instanceof a)) {
                            if (arrayList8 == null) {
                                arrayList8 = new ArrayList();
                            }
                            ArrayList arrayList9 = arrayList8;
                            arrayList9.add(dVar13);
                            arrayList8 = arrayList9;
                        }
                        i46++;
                        size2 = i47;
                        cVar = cVar4;
                        i28 = i48;
                        iMax3 = i49;
                        i29 = i50;
                    }
                    i21 = iMax3;
                    i9 = size2;
                    i22 = i28;
                    i23 = i29;
                    obj2 = cVar;
                    ArrayList<o> arrayList10 = new ArrayList();
                    if (arrayList3 != null) {
                        Iterator it = arrayList3.iterator();
                        while (it.hasNext()) {
                            Q3.b.g((f) it.next(), 0, arrayList10, null);
                        }
                    }
                    int i51 = 0;
                    o oVar5 = null;
                    if (arrayList4 != null) {
                        for (h hVar2 : arrayList4) {
                            o oVarG = Q3.b.g(hVar2, i51, arrayList10, oVar5);
                            hVar2.N(i51, oVarG, arrayList10);
                            oVarG.a(arrayList10);
                            i51 = 0;
                            oVar5 = null;
                        }
                    }
                    HashSet hashSet = g(2).f30783a;
                    if (hashSet != null) {
                        Iterator it2 = hashSet.iterator();
                        while (it2.hasNext()) {
                            Q3.b.g(((c) it2.next()).f30786d, 0, arrayList10, null);
                        }
                    }
                    HashSet hashSet2 = g(4).f30783a;
                    if (hashSet2 != null) {
                        Iterator it3 = hashSet2.iterator();
                        while (it3.hasNext()) {
                            Q3.b.g(((c) it3.next()).f30786d, 0, arrayList10, null);
                        }
                    }
                    HashSet hashSet3 = g(7).f30783a;
                    if (hashSet3 != null) {
                        Iterator it4 = hashSet3.iterator();
                        while (it4.hasNext()) {
                            Q3.b.g(((c) it4.next()).f30786d, 0, arrayList10, null);
                        }
                    }
                    o oVar6 = null;
                    if (arrayList7 != null) {
                        Iterator it5 = arrayList7.iterator();
                        while (it5.hasNext()) {
                            Q3.b.g((d) it5.next(), 0, arrayList10, null);
                        }
                    }
                    if (arrayList5 != null) {
                        Iterator it6 = arrayList5.iterator();
                        while (it6.hasNext()) {
                            Q3.b.g((f) it6.next(), 1, arrayList10, null);
                        }
                    }
                    int i52 = 1;
                    if (arrayList6 != null) {
                        for (h hVar3 : arrayList6) {
                            o oVarG2 = Q3.b.g(hVar3, i52, arrayList10, oVar6);
                            hVar3.N(i52, oVarG2, arrayList10);
                            oVarG2.a(arrayList10);
                            i52 = 1;
                            oVar6 = null;
                        }
                    }
                    HashSet hashSet4 = g(3).f30783a;
                    if (hashSet4 != null) {
                        Iterator it7 = hashSet4.iterator();
                        while (it7.hasNext()) {
                            Q3.b.g(((c) it7.next()).f30786d, 1, arrayList10, null);
                        }
                    }
                    HashSet hashSet5 = g(6).f30783a;
                    if (hashSet5 != null) {
                        Iterator it8 = hashSet5.iterator();
                        while (it8.hasNext()) {
                            Q3.b.g(((c) it8.next()).f30786d, 1, arrayList10, null);
                        }
                    }
                    HashSet hashSet6 = g(5).f30783a;
                    if (hashSet6 != null) {
                        Iterator it9 = hashSet6.iterator();
                        while (it9.hasNext()) {
                            Q3.b.g(((c) it9.next()).f30786d, 1, arrayList10, null);
                        }
                    }
                    HashSet hashSet7 = g(7).f30783a;
                    if (hashSet7 != null) {
                        Iterator it10 = hashSet7.iterator();
                        while (it10.hasNext()) {
                            Q3.b.g(((c) it10.next()).f30786d, 1, arrayList10, null);
                        }
                    }
                    if (arrayList8 != null) {
                        Iterator it11 = arrayList8.iterator();
                        while (it11.hasNext()) {
                            Q3.b.g((d) it11.next(), 1, arrayList10, null);
                        }
                    }
                    for (int i53 = 0; i53 < size4; i53++) {
                        d dVar14 = (d) arrayList2.get(i53);
                        int[] iArr5 = dVar14.f30847o0;
                        if (iArr5[0] == 3 && iArr5[1] == 3) {
                            int i54 = dVar14.f30843m0;
                            int size5 = arrayList10.size();
                            int i55 = 0;
                            while (true) {
                                if (i55 >= size5) {
                                    oVar3 = null;
                                    break;
                                }
                                oVar3 = (o) arrayList10.get(i55);
                                if (i54 == oVar3.f31164b) {
                                    break;
                                } else {
                                    i55++;
                                }
                            }
                            int i56 = dVar14.f30845n0;
                            int size6 = arrayList10.size();
                            int i57 = 0;
                            while (true) {
                                if (i57 >= size6) {
                                    oVar4 = null;
                                    break;
                                }
                                oVar4 = (o) arrayList10.get(i57);
                                if (i56 == oVar4.f31164b) {
                                    break;
                                } else {
                                    i57++;
                                }
                            }
                            if (oVar3 != null && oVar4 != null) {
                                oVar3.c(0, oVar4);
                                oVar4.f31165c = 2;
                                arrayList10.remove(oVar3);
                            }
                        }
                    }
                    if (arrayList10.size() > 1) {
                        if (objArr[0] == 2) {
                            int i58 = 0;
                            oVar = null;
                            for (o oVar7 : arrayList10) {
                                if (oVar7.f31165c != 1 && (iB2 = oVar7.b(dVar11, 0)) > i58) {
                                    oVar = oVar7;
                                    i58 = iB2;
                                }
                            }
                            c9 = 1;
                            if (oVar != null) {
                                I(1);
                                K(i58);
                            }
                            if (objArr[c9] == 2) {
                                i27 = 0;
                                oVar2 = null;
                                for (o oVar8 : arrayList10) {
                                    if (oVar8.f31165c != 0 && (iB = oVar8.b(dVar11, 1)) > i27) {
                                        oVar2 = oVar8;
                                        i27 = iB;
                                    }
                                }
                                if (oVar2 != null) {
                                    J(1);
                                    H(i27);
                                } else {
                                    oVar2 = null;
                                }
                            } else {
                                oVar2 = null;
                            }
                            if (oVar == null || oVar2 != null) {
                                i11 = i23;
                                if (i11 == 2) {
                                    i24 = i21;
                                    if (i24 < o() || i24 <= 0) {
                                        iO = o();
                                    } else {
                                        K(i24);
                                        this.f30862D0 = true;
                                    }
                                    i10 = i22;
                                    if (i10 == 2) {
                                        i25 = i8;
                                        if (i25 < i() || i25 <= 0) {
                                            i26 = i();
                                        } else {
                                            H(i25);
                                            this.f30863E0 = true;
                                        }
                                        i8 = i26;
                                        i12 = iO;
                                        z7 = true;
                                    } else {
                                        i25 = i8;
                                    }
                                    i26 = i25;
                                    i8 = i26;
                                    i12 = iO;
                                    z7 = true;
                                } else {
                                    i24 = i21;
                                }
                                iO = i24;
                                i10 = i22;
                                if (i10 == 2) {
                                    i25 = i8;
                                    if (i25 < i()) {
                                    }
                                    i26 = i();
                                    i8 = i26;
                                    i12 = iO;
                                    z7 = true;
                                } else {
                                    i25 = i8;
                                }
                                i26 = i25;
                                i8 = i26;
                                i12 = iO;
                                z7 = true;
                            }
                            if (!S(64) || S(128)) {
                                z8 = true;
                            } else {
                                z8 = false;
                            }
                            dVar11.getClass();
                            dVar11.f30343h = false;
                            if (this.f30861C0 == 0 && z8) {
                                c8 = 1;
                                dVar11.f30343h = true;
                            } else {
                                c8 = 1;
                            }
                            ArrayList arrayList11 = this.f30889p0;
                            if (objArr[0] != 2 || objArr[c8] == 2) {
                                z9 = true;
                            } else {
                                z9 = false;
                            }
                            this.f30878y0 = 0;
                            this.f30879z0 = 0;
                            i13 = i9;
                            for (i14 = 0; i14 < i13; i14++) {
                                dVar2 = (d) this.f30889p0.get(i14);
                                if (dVar2 instanceof j) {
                                    ((j) dVar2).N();
                                }
                            }
                            boolean zS2 = S(64);
                            z10 = z7;
                            i15 = 0;
                            z11 = true;
                            while (z11) {
                                i16 = i15 + 1;
                                try {
                                    dVar11.t();
                                    this.f30878y0 = 0;
                                    this.f30879z0 = 0;
                                    e(dVar11);
                                    for (i20 = 0; i20 < i13; i20++) {
                                        ((d) this.f30889p0.get(i20)).e(dVar11);
                                    }
                                    P(dVar11);
                                    try {
                                        weakReference = this.f30864F0;
                                        if (weakReference != null) {
                                            try {
                                                if (weakReference.get() != null) {
                                                    c cVar5 = (c) this.f30864F0.get();
                                                    obj3 = obj2;
                                                    try {
                                                        i iVarK = dVar11.k(obj3);
                                                        d dVar15 = this.f30875v0;
                                                        z13 = z10;
                                                        obj2 = obj3;
                                                        try {
                                                            dVar15.f(dVar15.k(cVar5), iVarK, 0, 5);
                                                            this.f30864F0 = null;
                                                        } catch (Exception e8) {
                                                            e = e8;
                                                            z11 = true;
                                                            e.printStackTrace();
                                                            System.out.println("EXCEPTION : " + e);
                                                            if (z11) {
                                                                zArr[2] = false;
                                                                zS = S(64);
                                                                M(dVar11, zS);
                                                                size = this.f30889p0.size();
                                                                i17 = 0;
                                                                z14 = false;
                                                                while (i17 < size) {
                                                                    dVar = (d) this.f30889p0.get(i17);
                                                                    dVar.M(dVar11, zS);
                                                                    boolean z24 = zS;
                                                                    int i59 = size;
                                                                    if (dVar.f30832h == -1) {
                                                                        z14 = true;
                                                                    } else {
                                                                        z14 = true;
                                                                    }
                                                                    i17++;
                                                                    zS = z24;
                                                                    size = i59;
                                                                }
                                                            } else {
                                                                M(dVar11, zS2);
                                                                for (i19 = 0; i19 < i13; i19++) {
                                                                    ((d) this.f30889p0.get(i19)).M(dVar11, zS2);
                                                                }
                                                                z14 = false;
                                                            }
                                                            if (z9) {
                                                                z15 = z9;
                                                            } else {
                                                                z15 = z9;
                                                            }
                                                            iMax = Math.max(this.f30819a0, o());
                                                            if (iMax > o()) {
                                                                K(iMax);
                                                                r7 = 1;
                                                                objArr[0] = 1;
                                                                z14 = true;
                                                                z16 = true;
                                                            } else {
                                                                r7 = 1;
                                                                z16 = z13;
                                                            }
                                                            iMax2 = Math.max(this.f30821b0, i());
                                                            if (iMax2 > i()) {
                                                                H(iMax2);
                                                                objArr[r7] = r7;
                                                                z17 = true;
                                                                z14 = true;
                                                            } else {
                                                                z17 = z16;
                                                            }
                                                            if (z17) {
                                                                if (objArr[0] == 2) {
                                                                    this.f30862D0 = r7;
                                                                    objArr[0] = r7;
                                                                    K(i12);
                                                                    z17 = true;
                                                                    z14 = true;
                                                                }
                                                                if (objArr[r7] != 2) {
                                                                }
                                                                if (i16 > i18) {
                                                                    z11 = false;
                                                                } else {
                                                                    z11 = z14;
                                                                }
                                                                z10 = z17;
                                                                i15 = i16;
                                                                z9 = z15;
                                                            }
                                                            i18 = 8;
                                                            if (i16 > i18) {
                                                                z11 = false;
                                                            } else {
                                                                z11 = z14;
                                                            }
                                                            z10 = z17;
                                                            i15 = i16;
                                                            z9 = z15;
                                                        }
                                                    } catch (Exception e9) {
                                                        e = e9;
                                                        z13 = z10;
                                                        obj2 = obj3;
                                                    }
                                                } else {
                                                    z13 = z10;
                                                }
                                                try {
                                                    weakReference2 = this.f30866H0;
                                                    if (weakReference2 != null && weakReference2.get() != null) {
                                                        c cVar6 = (c) this.f30866H0.get();
                                                        i iVarK2 = dVar11.k(this.f30802K);
                                                        d dVar16 = this.f30875v0;
                                                        dVar16.f(iVarK2, dVar16.k(cVar6), 0, 5);
                                                        this.f30866H0 = null;
                                                    }
                                                    weakReference3 = this.f30865G0;
                                                    if (weakReference3 != null && weakReference3.get() != null) {
                                                        c cVar7 = (c) this.f30865G0.get();
                                                        obj4 = obj;
                                                        try {
                                                            i iVarK3 = dVar11.k(obj4);
                                                            d dVar17 = this.f30875v0;
                                                            obj = obj4;
                                                            dVar17.f(dVar17.k(cVar7), iVarK3, 0, 5);
                                                            this.f30865G0 = null;
                                                        } catch (Exception e10) {
                                                            e = e10;
                                                            obj = obj4;
                                                            z11 = true;
                                                            e.printStackTrace();
                                                            System.out.println("EXCEPTION : " + e);
                                                            if (z11) {
                                                                M(dVar11, zS2);
                                                                while (i19 < i13) {
                                                                    ((d) this.f30889p0.get(i19)).M(dVar11, zS2);
                                                                }
                                                                z14 = false;
                                                            }
                                                            if (z9) {
                                                                z15 = z9;
                                                            } else {
                                                                z15 = z9;
                                                            }
                                                            iMax = Math.max(this.f30819a0, o());
                                                            if (iMax > o()) {
                                                                K(iMax);
                                                                r7 = 1;
                                                                objArr[0] = 1;
                                                                z14 = true;
                                                                z16 = true;
                                                            } else {
                                                                r7 = 1;
                                                                z16 = z13;
                                                            }
                                                            iMax2 = Math.max(this.f30821b0, i());
                                                            if (iMax2 > i()) {
                                                                H(iMax2);
                                                                objArr[r7] = r7;
                                                                z17 = true;
                                                                z14 = true;
                                                            } else {
                                                                z17 = z16;
                                                            }
                                                            if (z17) {
                                                                if (objArr[0] == 2) {
                                                                    this.f30862D0 = r7;
                                                                    objArr[0] = r7;
                                                                    K(i12);
                                                                    z17 = true;
                                                                    z14 = true;
                                                                }
                                                                if (objArr[r7] != 2) {
                                                                }
                                                                if (i16 > i18) {
                                                                    z11 = false;
                                                                } else {
                                                                    z11 = z14;
                                                                }
                                                                z10 = z17;
                                                                i15 = i16;
                                                                z9 = z15;
                                                            }
                                                            i18 = 8;
                                                            if (i16 > i18) {
                                                                z11 = false;
                                                            } else {
                                                                z11 = z14;
                                                            }
                                                            z10 = z17;
                                                            i15 = i16;
                                                            z9 = z15;
                                                        }
                                                    }
                                                    weakReference4 = this.f30867I0;
                                                    if (weakReference4 == null && weakReference4.get() != null) {
                                                        c cVar8 = (c) this.f30867I0.get();
                                                        i iVarK4 = dVar11.k(this.f30801J);
                                                        try {
                                                            d dVar18 = this.f30875v0;
                                                            try {
                                                                dVar18.f(iVarK4, dVar18.k(cVar8), 0, 5);
                                                                try {
                                                                    this.f30867I0 = null;
                                                                } catch (Exception e11) {
                                                                    e = e11;
                                                                    z11 = true;
                                                                    e.printStackTrace();
                                                                    System.out.println("EXCEPTION : " + e);
                                                                    if (z11) {
                                                                        M(dVar11, zS2);
                                                                        while (i19 < i13) {
                                                                            ((d) this.f30889p0.get(i19)).M(dVar11, zS2);
                                                                        }
                                                                        z14 = false;
                                                                    }
                                                                    if (z9) {
                                                                        z15 = z9;
                                                                    } else {
                                                                        z15 = z9;
                                                                    }
                                                                    iMax = Math.max(this.f30819a0, o());
                                                                    if (iMax > o()) {
                                                                        K(iMax);
                                                                        r7 = 1;
                                                                        objArr[0] = 1;
                                                                        z14 = true;
                                                                        z16 = true;
                                                                    } else {
                                                                        r7 = 1;
                                                                        z16 = z13;
                                                                    }
                                                                    iMax2 = Math.max(this.f30821b0, i());
                                                                    if (iMax2 > i()) {
                                                                        H(iMax2);
                                                                        objArr[r7] = r7;
                                                                        z17 = true;
                                                                        z14 = true;
                                                                    } else {
                                                                        z17 = z16;
                                                                    }
                                                                    if (z17) {
                                                                        if (objArr[0] == 2) {
                                                                            this.f30862D0 = r7;
                                                                            objArr[0] = r7;
                                                                            K(i12);
                                                                            z17 = true;
                                                                            z14 = true;
                                                                        }
                                                                        if (objArr[r7] != 2) {
                                                                        }
                                                                        if (i16 > i18) {
                                                                            z11 = false;
                                                                        } else {
                                                                            z11 = z14;
                                                                        }
                                                                        z10 = z17;
                                                                        i15 = i16;
                                                                        z9 = z15;
                                                                    }
                                                                    i18 = 8;
                                                                    if (i16 > i18) {
                                                                        z11 = false;
                                                                    } else {
                                                                        z11 = z14;
                                                                    }
                                                                    z10 = z17;
                                                                    i15 = i16;
                                                                    z9 = z15;
                                                                }
                                                            } catch (Exception e12) {
                                                                e = e12;
                                                            }
                                                        } catch (Exception e13) {
                                                            e = e13;
                                                            z11 = true;
                                                            e.printStackTrace();
                                                            System.out.println("EXCEPTION : " + e);
                                                            if (z11) {
                                                                zArr[2] = false;
                                                                zS = S(64);
                                                                M(dVar11, zS);
                                                                size = this.f30889p0.size();
                                                                i17 = 0;
                                                                z14 = false;
                                                                while (i17 < size) {
                                                                    dVar = (d) this.f30889p0.get(i17);
                                                                    dVar.M(dVar11, zS);
                                                                    boolean z25 = zS;
                                                                    int i510 = size;
                                                                    if (dVar.f30832h == -1) {
                                                                        z14 = true;
                                                                    } else {
                                                                        z14 = true;
                                                                    }
                                                                    i17++;
                                                                    zS = z25;
                                                                    size = i510;
                                                                }
                                                            } else {
                                                                M(dVar11, zS2);
                                                                while (i19 < i13) {
                                                                    ((d) this.f30889p0.get(i19)).M(dVar11, zS2);
                                                                }
                                                                z14 = false;
                                                            }
                                                            if (z9) {
                                                                z15 = z9;
                                                            } else {
                                                                z15 = z9;
                                                            }
                                                            iMax = Math.max(this.f30819a0, o());
                                                            if (iMax > o()) {
                                                                K(iMax);
                                                                r7 = 1;
                                                                objArr[0] = 1;
                                                                z14 = true;
                                                                z16 = true;
                                                            } else {
                                                                r7 = 1;
                                                                z16 = z13;
                                                            }
                                                            iMax2 = Math.max(this.f30821b0, i());
                                                            if (iMax2 > i()) {
                                                                H(iMax2);
                                                                objArr[r7] = r7;
                                                                z17 = true;
                                                                z14 = true;
                                                            } else {
                                                                z17 = z16;
                                                            }
                                                            if (z17) {
                                                                if (objArr[0] == 2) {
                                                                    this.f30862D0 = r7;
                                                                    objArr[0] = r7;
                                                                    K(i12);
                                                                    z17 = true;
                                                                    z14 = true;
                                                                }
                                                                if (objArr[r7] != 2) {
                                                                }
                                                                if (i16 > i18) {
                                                                    z11 = false;
                                                                } else {
                                                                    z11 = z14;
                                                                }
                                                                z10 = z17;
                                                                i15 = i16;
                                                                z9 = z15;
                                                            }
                                                            i18 = 8;
                                                            if (i16 > i18) {
                                                                z11 = false;
                                                            } else {
                                                                z11 = z14;
                                                            }
                                                            z10 = z17;
                                                            i15 = i16;
                                                            z9 = z15;
                                                        }
                                                    }
                                                    dVar11.p();
                                                } catch (Exception e14) {
                                                    e = e14;
                                                }
                                            } catch (Exception e15) {
                                                e = e15;
                                                z13 = z10;
                                            }
                                            zArr[2] = false;
                                            zS = S(64);
                                            M(dVar11, zS);
                                            size = this.f30889p0.size();
                                            i17 = 0;
                                            z14 = false;
                                            while (i17 < size) {
                                                dVar = (d) this.f30889p0.get(i17);
                                                dVar.M(dVar11, zS);
                                                boolean z26 = zS;
                                                int i511 = size;
                                                if (dVar.f30832h == -1 || dVar.f30834i != -1) {
                                                    z14 = true;
                                                }
                                                i17++;
                                                zS = z26;
                                                size = i511;
                                            }
                                        } else {
                                            z13 = z10;
                                            weakReference2 = this.f30866H0;
                                            if (weakReference2 != null) {
                                                c cVar9 = (c) this.f30866H0.get();
                                                i iVarK5 = dVar11.k(this.f30802K);
                                                d dVar19 = this.f30875v0;
                                                dVar19.f(iVarK5, dVar19.k(cVar9), 0, 5);
                                                this.f30866H0 = null;
                                            }
                                            weakReference3 = this.f30865G0;
                                            if (weakReference3 != null) {
                                                c cVar10 = (c) this.f30865G0.get();
                                                obj4 = obj;
                                                i iVarK6 = dVar11.k(obj4);
                                                d dVar110 = this.f30875v0;
                                                obj = obj4;
                                                dVar110.f(dVar110.k(cVar10), iVarK6, 0, 5);
                                                this.f30865G0 = null;
                                            }
                                            weakReference4 = this.f30867I0;
                                            if (weakReference4 == null) {
                                            }
                                            dVar11.p();
                                            zArr[2] = false;
                                            zS = S(64);
                                            M(dVar11, zS);
                                            size = this.f30889p0.size();
                                            i17 = 0;
                                            z14 = false;
                                            while (i17 < size) {
                                                dVar = (d) this.f30889p0.get(i17);
                                                dVar.M(dVar11, zS);
                                                boolean z27 = zS;
                                                int i512 = size;
                                                if (dVar.f30832h == -1) {
                                                    z14 = true;
                                                } else {
                                                    z14 = true;
                                                }
                                                i17++;
                                                zS = z27;
                                                size = i512;
                                            }
                                        }
                                    } catch (Exception e16) {
                                        e = e16;
                                        z13 = z10;
                                    }
                                } catch (Exception e17) {
                                    e = e17;
                                    z13 = z10;
                                }
                                if (z9 || i16 >= 8 || !zArr[2]) {
                                    z15 = z9;
                                } else {
                                    int i60 = 0;
                                    int iMax5 = 0;
                                    int iMax6 = 0;
                                    while (i60 < i13) {
                                        d dVar20 = (d) this.f30889p0.get(i60);
                                        iMax6 = Math.max(iMax6, dVar20.o() + dVar20.f30815X);
                                        iMax5 = Math.max(iMax5, dVar20.i() + dVar20.f30816Y);
                                        i60++;
                                        z9 = z9;
                                    }
                                    z15 = z9;
                                    int iMax7 = Math.max(this.f30819a0, iMax6);
                                    int iMax8 = Math.max(this.f30821b0, iMax5);
                                    if (i11 == 2 && o() < iMax7) {
                                        K(iMax7);
                                        objArr[0] = 2;
                                        z14 = true;
                                        z13 = true;
                                    }
                                    if (i10 == 2 && i() < iMax8) {
                                        H(iMax8);
                                        objArr[1] = 2;
                                        z14 = true;
                                        z13 = true;
                                    }
                                }
                                iMax = Math.max(this.f30819a0, o());
                                if (iMax > o()) {
                                    K(iMax);
                                    r7 = 1;
                                    objArr[0] = 1;
                                    z14 = true;
                                    z16 = true;
                                } else {
                                    r7 = 1;
                                    z16 = z13;
                                }
                                iMax2 = Math.max(this.f30821b0, i());
                                if (iMax2 > i()) {
                                    H(iMax2);
                                    objArr[r7] = r7;
                                    z17 = true;
                                    z14 = true;
                                } else {
                                    z17 = z16;
                                }
                                if (z17) {
                                    if (objArr[0] == 2 && i12 > 0 && o() > i12) {
                                        this.f30862D0 = r7;
                                        objArr[0] = r7;
                                        K(i12);
                                        z17 = true;
                                        z14 = true;
                                    }
                                    if (objArr[r7] != 2 && i8 > 0 && i() > i8) {
                                        this.f30863E0 = r7;
                                        objArr[r7] = r7;
                                        H(i8);
                                        z17 = true;
                                        i18 = 8;
                                        z14 = true;
                                    }
                                    if (i16 > i18) {
                                        z11 = false;
                                    } else {
                                        z11 = z14;
                                    }
                                    z10 = z17;
                                    i15 = i16;
                                    z9 = z15;
                                }
                                i18 = 8;
                                if (i16 > i18) {
                                    z11 = false;
                                } else {
                                    z11 = z14;
                                }
                                z10 = z17;
                                i15 = i16;
                                z9 = z15;
                            }
                            z12 = z10;
                            this.f30889p0 = arrayList11;
                            if (z12) {
                                objArr[0] = i11;
                                objArr[1] = i10;
                            }
                            C(dVar11.f30348m);
                        }
                        c9 = 1;
                        oVar = null;
                        if (objArr[c9] == 2) {
                            i27 = 0;
                            oVar2 = null;
                            while (r0.hasNext()) {
                                if (oVar8.f31165c != 0) {
                                    oVar2 = oVar8;
                                    i27 = iB;
                                }
                            }
                            if (oVar2 != null) {
                                J(1);
                                H(i27);
                            } else {
                                oVar2 = null;
                            }
                        } else {
                            oVar2 = null;
                        }
                        if (oVar == null) {
                        }
                        i11 = i23;
                        if (i11 == 2) {
                            i24 = i21;
                            if (i24 < o()) {
                            }
                            iO = o();
                            i10 = i22;
                            if (i10 == 2) {
                                i25 = i8;
                                if (i25 < i()) {
                                }
                                i26 = i();
                                i8 = i26;
                                i12 = iO;
                                z7 = true;
                                if (S(64)) {
                                    z8 = true;
                                } else {
                                    z8 = true;
                                }
                                dVar11.getClass();
                                dVar11.f30343h = false;
                                if (this.f30861C0 == 0) {
                                    c8 = 1;
                                } else {
                                    c8 = 1;
                                }
                                ArrayList arrayList12 = this.f30889p0;
                                if (objArr[0] != 2) {
                                    z9 = true;
                                } else {
                                    z9 = true;
                                }
                                this.f30878y0 = 0;
                                this.f30879z0 = 0;
                                i13 = i9;
                                while (i14 < i13) {
                                    dVar2 = (d) this.f30889p0.get(i14);
                                    if (dVar2 instanceof j) {
                                        ((j) dVar2).N();
                                    }
                                }
                                boolean zS3 = S(64);
                                z10 = z7;
                                i15 = 0;
                                z11 = true;
                                while (z11) {
                                    i16 = i15 + 1;
                                    dVar11.t();
                                    this.f30878y0 = 0;
                                    this.f30879z0 = 0;
                                    e(dVar11);
                                    while (i20 < i13) {
                                        ((d) this.f30889p0.get(i20)).e(dVar11);
                                    }
                                    P(dVar11);
                                    weakReference = this.f30864F0;
                                    if (weakReference != null) {
                                        if (weakReference.get() != null) {
                                            c cVar11 = (c) this.f30864F0.get();
                                            obj3 = obj2;
                                            i iVarK7 = dVar11.k(obj3);
                                            d dVar111 = this.f30875v0;
                                            z13 = z10;
                                            obj2 = obj3;
                                            dVar111.f(dVar111.k(cVar11), iVarK7, 0, 5);
                                            this.f30864F0 = null;
                                        } else {
                                            z13 = z10;
                                        }
                                        weakReference2 = this.f30866H0;
                                        if (weakReference2 != null) {
                                            c cVar12 = (c) this.f30866H0.get();
                                            i iVarK8 = dVar11.k(this.f30802K);
                                            d dVar112 = this.f30875v0;
                                            dVar112.f(iVarK8, dVar112.k(cVar12), 0, 5);
                                            this.f30866H0 = null;
                                        }
                                        weakReference3 = this.f30865G0;
                                        if (weakReference3 != null) {
                                            c cVar13 = (c) this.f30865G0.get();
                                            obj4 = obj;
                                            i iVarK9 = dVar11.k(obj4);
                                            d dVar113 = this.f30875v0;
                                            obj = obj4;
                                            dVar113.f(dVar113.k(cVar13), iVarK9, 0, 5);
                                            this.f30865G0 = null;
                                        }
                                        weakReference4 = this.f30867I0;
                                        if (weakReference4 == null) {
                                        }
                                        dVar11.p();
                                        zArr[2] = false;
                                        zS = S(64);
                                        M(dVar11, zS);
                                        size = this.f30889p0.size();
                                        i17 = 0;
                                        z14 = false;
                                        while (i17 < size) {
                                            dVar = (d) this.f30889p0.get(i17);
                                            dVar.M(dVar11, zS);
                                            boolean z28 = zS;
                                            int i513 = size;
                                            if (dVar.f30832h == -1) {
                                                z14 = true;
                                            } else {
                                                z14 = true;
                                            }
                                            i17++;
                                            zS = z28;
                                            size = i513;
                                        }
                                    } else {
                                        z13 = z10;
                                        weakReference2 = this.f30866H0;
                                        if (weakReference2 != null) {
                                            c cVar14 = (c) this.f30866H0.get();
                                            i iVarK10 = dVar11.k(this.f30802K);
                                            d dVar114 = this.f30875v0;
                                            dVar114.f(iVarK10, dVar114.k(cVar14), 0, 5);
                                            this.f30866H0 = null;
                                        }
                                        weakReference3 = this.f30865G0;
                                        if (weakReference3 != null) {
                                            c cVar15 = (c) this.f30865G0.get();
                                            obj4 = obj;
                                            i iVarK11 = dVar11.k(obj4);
                                            d dVar115 = this.f30875v0;
                                            obj = obj4;
                                            dVar115.f(dVar115.k(cVar15), iVarK11, 0, 5);
                                            this.f30865G0 = null;
                                        }
                                        weakReference4 = this.f30867I0;
                                        if (weakReference4 == null) {
                                        }
                                        dVar11.p();
                                        zArr[2] = false;
                                        zS = S(64);
                                        M(dVar11, zS);
                                        size = this.f30889p0.size();
                                        i17 = 0;
                                        z14 = false;
                                        while (i17 < size) {
                                            dVar = (d) this.f30889p0.get(i17);
                                            dVar.M(dVar11, zS);
                                            boolean z29 = zS;
                                            int i514 = size;
                                            if (dVar.f30832h == -1) {
                                                z14 = true;
                                            } else {
                                                z14 = true;
                                            }
                                            i17++;
                                            zS = z29;
                                            size = i514;
                                        }
                                    }
                                    if (z9) {
                                        z15 = z9;
                                    } else {
                                        z15 = z9;
                                    }
                                    iMax = Math.max(this.f30819a0, o());
                                    if (iMax > o()) {
                                        K(iMax);
                                        r7 = 1;
                                        objArr[0] = 1;
                                        z14 = true;
                                        z16 = true;
                                    } else {
                                        r7 = 1;
                                        z16 = z13;
                                    }
                                    iMax2 = Math.max(this.f30821b0, i());
                                    if (iMax2 > i()) {
                                        H(iMax2);
                                        objArr[r7] = r7;
                                        z17 = true;
                                        z14 = true;
                                    } else {
                                        z17 = z16;
                                    }
                                    if (z17) {
                                        if (objArr[0] == 2) {
                                            this.f30862D0 = r7;
                                            objArr[0] = r7;
                                            K(i12);
                                            z17 = true;
                                            z14 = true;
                                        }
                                        if (objArr[r7] != 2) {
                                        }
                                        if (i16 > i18) {
                                            z11 = false;
                                        } else {
                                            z11 = z14;
                                        }
                                        z10 = z17;
                                        i15 = i16;
                                        z9 = z15;
                                    }
                                    i18 = 8;
                                    if (i16 > i18) {
                                        z11 = false;
                                    } else {
                                        z11 = z14;
                                    }
                                    z10 = z17;
                                    i15 = i16;
                                    z9 = z15;
                                }
                                z12 = z10;
                                this.f30889p0 = arrayList12;
                                if (z12) {
                                    objArr[0] = i11;
                                    objArr[1] = i10;
                                }
                                C(dVar11.f30348m);
                            }
                            i25 = i8;
                            i26 = i25;
                            i8 = i26;
                            i12 = iO;
                            z7 = true;
                            if (S(64)) {
                                z8 = true;
                            } else {
                                z8 = true;
                            }
                            dVar11.getClass();
                            dVar11.f30343h = false;
                            if (this.f30861C0 == 0) {
                                c8 = 1;
                            } else {
                                c8 = 1;
                            }
                            ArrayList arrayList13 = this.f30889p0;
                            if (objArr[0] != 2) {
                                z9 = true;
                            } else {
                                z9 = true;
                            }
                            this.f30878y0 = 0;
                            this.f30879z0 = 0;
                            i13 = i9;
                            while (i14 < i13) {
                                dVar2 = (d) this.f30889p0.get(i14);
                                if (dVar2 instanceof j) {
                                    ((j) dVar2).N();
                                }
                            }
                            boolean zS4 = S(64);
                            z10 = z7;
                            i15 = 0;
                            z11 = true;
                            while (z11) {
                                i16 = i15 + 1;
                                dVar11.t();
                                this.f30878y0 = 0;
                                this.f30879z0 = 0;
                                e(dVar11);
                                while (i20 < i13) {
                                    ((d) this.f30889p0.get(i20)).e(dVar11);
                                }
                                P(dVar11);
                                weakReference = this.f30864F0;
                                if (weakReference != null) {
                                    if (weakReference.get() != null) {
                                        c cVar16 = (c) this.f30864F0.get();
                                        obj3 = obj2;
                                        i iVarK12 = dVar11.k(obj3);
                                        d dVar116 = this.f30875v0;
                                        z13 = z10;
                                        obj2 = obj3;
                                        dVar116.f(dVar116.k(cVar16), iVarK12, 0, 5);
                                        this.f30864F0 = null;
                                    } else {
                                        z13 = z10;
                                    }
                                    weakReference2 = this.f30866H0;
                                    if (weakReference2 != null) {
                                        c cVar17 = (c) this.f30866H0.get();
                                        i iVarK13 = dVar11.k(this.f30802K);
                                        d dVar117 = this.f30875v0;
                                        dVar117.f(iVarK13, dVar117.k(cVar17), 0, 5);
                                        this.f30866H0 = null;
                                    }
                                    weakReference3 = this.f30865G0;
                                    if (weakReference3 != null) {
                                        c cVar18 = (c) this.f30865G0.get();
                                        obj4 = obj;
                                        i iVarK14 = dVar11.k(obj4);
                                        d dVar118 = this.f30875v0;
                                        obj = obj4;
                                        dVar118.f(dVar118.k(cVar18), iVarK14, 0, 5);
                                        this.f30865G0 = null;
                                    }
                                    weakReference4 = this.f30867I0;
                                    if (weakReference4 == null) {
                                    }
                                    dVar11.p();
                                    zArr[2] = false;
                                    zS = S(64);
                                    M(dVar11, zS);
                                    size = this.f30889p0.size();
                                    i17 = 0;
                                    z14 = false;
                                    while (i17 < size) {
                                        dVar = (d) this.f30889p0.get(i17);
                                        dVar.M(dVar11, zS);
                                        boolean z210 = zS;
                                        int i515 = size;
                                        if (dVar.f30832h == -1) {
                                            z14 = true;
                                        } else {
                                            z14 = true;
                                        }
                                        i17++;
                                        zS = z210;
                                        size = i515;
                                    }
                                } else {
                                    z13 = z10;
                                    weakReference2 = this.f30866H0;
                                    if (weakReference2 != null) {
                                        c cVar19 = (c) this.f30866H0.get();
                                        i iVarK15 = dVar11.k(this.f30802K);
                                        d dVar119 = this.f30875v0;
                                        dVar119.f(iVarK15, dVar119.k(cVar19), 0, 5);
                                        this.f30866H0 = null;
                                    }
                                    weakReference3 = this.f30865G0;
                                    if (weakReference3 != null) {
                                        c cVar110 = (c) this.f30865G0.get();
                                        obj4 = obj;
                                        i iVarK16 = dVar11.k(obj4);
                                        d dVar1110 = this.f30875v0;
                                        obj = obj4;
                                        dVar1110.f(dVar1110.k(cVar110), iVarK16, 0, 5);
                                        this.f30865G0 = null;
                                    }
                                    weakReference4 = this.f30867I0;
                                    if (weakReference4 == null) {
                                    }
                                    dVar11.p();
                                    zArr[2] = false;
                                    zS = S(64);
                                    M(dVar11, zS);
                                    size = this.f30889p0.size();
                                    i17 = 0;
                                    z14 = false;
                                    while (i17 < size) {
                                        dVar = (d) this.f30889p0.get(i17);
                                        dVar.M(dVar11, zS);
                                        boolean z211 = zS;
                                        int i516 = size;
                                        if (dVar.f30832h == -1) {
                                            z14 = true;
                                        } else {
                                            z14 = true;
                                        }
                                        i17++;
                                        zS = z211;
                                        size = i516;
                                    }
                                }
                                if (z9) {
                                    z15 = z9;
                                } else {
                                    z15 = z9;
                                }
                                iMax = Math.max(this.f30819a0, o());
                                if (iMax > o()) {
                                    K(iMax);
                                    r7 = 1;
                                    objArr[0] = 1;
                                    z14 = true;
                                    z16 = true;
                                } else {
                                    r7 = 1;
                                    z16 = z13;
                                }
                                iMax2 = Math.max(this.f30821b0, i());
                                if (iMax2 > i()) {
                                    H(iMax2);
                                    objArr[r7] = r7;
                                    z17 = true;
                                    z14 = true;
                                } else {
                                    z17 = z16;
                                }
                                if (z17) {
                                    if (objArr[0] == 2) {
                                        this.f30862D0 = r7;
                                        objArr[0] = r7;
                                        K(i12);
                                        z17 = true;
                                        z14 = true;
                                    }
                                    if (objArr[r7] != 2) {
                                    }
                                    if (i16 > i18) {
                                        z11 = false;
                                    } else {
                                        z11 = z14;
                                    }
                                    z10 = z17;
                                    i15 = i16;
                                    z9 = z15;
                                }
                                i18 = 8;
                                if (i16 > i18) {
                                    z11 = false;
                                } else {
                                    z11 = z14;
                                }
                                z10 = z17;
                                i15 = i16;
                                z9 = z15;
                            }
                            z12 = z10;
                            this.f30889p0 = arrayList13;
                            if (z12) {
                                objArr[0] = i11;
                                objArr[1] = i10;
                            }
                            C(dVar11.f30348m);
                        }
                        i24 = i21;
                        iO = i24;
                        i10 = i22;
                        if (i10 == 2) {
                            i25 = i8;
                            if (i25 < i()) {
                            }
                            i26 = i();
                            i8 = i26;
                            i12 = iO;
                            z7 = true;
                            if (S(64)) {
                                z8 = true;
                            } else {
                                z8 = true;
                            }
                            dVar11.getClass();
                            dVar11.f30343h = false;
                            if (this.f30861C0 == 0) {
                                c8 = 1;
                            } else {
                                c8 = 1;
                            }
                            ArrayList arrayList14 = this.f30889p0;
                            if (objArr[0] != 2) {
                                z9 = true;
                            } else {
                                z9 = true;
                            }
                            this.f30878y0 = 0;
                            this.f30879z0 = 0;
                            i13 = i9;
                            while (i14 < i13) {
                                dVar2 = (d) this.f30889p0.get(i14);
                                if (dVar2 instanceof j) {
                                    ((j) dVar2).N();
                                }
                            }
                            boolean zS5 = S(64);
                            z10 = z7;
                            i15 = 0;
                            z11 = true;
                            while (z11) {
                                i16 = i15 + 1;
                                dVar11.t();
                                this.f30878y0 = 0;
                                this.f30879z0 = 0;
                                e(dVar11);
                                while (i20 < i13) {
                                    ((d) this.f30889p0.get(i20)).e(dVar11);
                                }
                                P(dVar11);
                                weakReference = this.f30864F0;
                                if (weakReference != null) {
                                    if (weakReference.get() != null) {
                                        c cVar111 = (c) this.f30864F0.get();
                                        obj3 = obj2;
                                        i iVarK17 = dVar11.k(obj3);
                                        d dVar1111 = this.f30875v0;
                                        z13 = z10;
                                        obj2 = obj3;
                                        dVar1111.f(dVar1111.k(cVar111), iVarK17, 0, 5);
                                        this.f30864F0 = null;
                                    } else {
                                        z13 = z10;
                                    }
                                    weakReference2 = this.f30866H0;
                                    if (weakReference2 != null) {
                                        c cVar112 = (c) this.f30866H0.get();
                                        i iVarK18 = dVar11.k(this.f30802K);
                                        d dVar1112 = this.f30875v0;
                                        dVar1112.f(iVarK18, dVar1112.k(cVar112), 0, 5);
                                        this.f30866H0 = null;
                                    }
                                    weakReference3 = this.f30865G0;
                                    if (weakReference3 != null) {
                                        c cVar113 = (c) this.f30865G0.get();
                                        obj4 = obj;
                                        i iVarK19 = dVar11.k(obj4);
                                        d dVar1113 = this.f30875v0;
                                        obj = obj4;
                                        dVar1113.f(dVar1113.k(cVar113), iVarK19, 0, 5);
                                        this.f30865G0 = null;
                                    }
                                    weakReference4 = this.f30867I0;
                                    if (weakReference4 == null) {
                                    }
                                    dVar11.p();
                                    zArr[2] = false;
                                    zS = S(64);
                                    M(dVar11, zS);
                                    size = this.f30889p0.size();
                                    i17 = 0;
                                    z14 = false;
                                    while (i17 < size) {
                                        dVar = (d) this.f30889p0.get(i17);
                                        dVar.M(dVar11, zS);
                                        boolean z212 = zS;
                                        int i517 = size;
                                        if (dVar.f30832h == -1) {
                                            z14 = true;
                                        } else {
                                            z14 = true;
                                        }
                                        i17++;
                                        zS = z212;
                                        size = i517;
                                    }
                                } else {
                                    z13 = z10;
                                    weakReference2 = this.f30866H0;
                                    if (weakReference2 != null) {
                                        c cVar114 = (c) this.f30866H0.get();
                                        i iVarK110 = dVar11.k(this.f30802K);
                                        d dVar1114 = this.f30875v0;
                                        dVar1114.f(iVarK110, dVar1114.k(cVar114), 0, 5);
                                        this.f30866H0 = null;
                                    }
                                    weakReference3 = this.f30865G0;
                                    if (weakReference3 != null) {
                                        c cVar115 = (c) this.f30865G0.get();
                                        obj4 = obj;
                                        i iVarK111 = dVar11.k(obj4);
                                        d dVar1115 = this.f30875v0;
                                        obj = obj4;
                                        dVar1115.f(dVar1115.k(cVar115), iVarK111, 0, 5);
                                        this.f30865G0 = null;
                                    }
                                    weakReference4 = this.f30867I0;
                                    if (weakReference4 == null) {
                                    }
                                    dVar11.p();
                                    zArr[2] = false;
                                    zS = S(64);
                                    M(dVar11, zS);
                                    size = this.f30889p0.size();
                                    i17 = 0;
                                    z14 = false;
                                    while (i17 < size) {
                                        dVar = (d) this.f30889p0.get(i17);
                                        dVar.M(dVar11, zS);
                                        boolean z213 = zS;
                                        int i518 = size;
                                        if (dVar.f30832h == -1) {
                                            z14 = true;
                                        } else {
                                            z14 = true;
                                        }
                                        i17++;
                                        zS = z213;
                                        size = i518;
                                    }
                                }
                                if (z9) {
                                    z15 = z9;
                                } else {
                                    z15 = z9;
                                }
                                iMax = Math.max(this.f30819a0, o());
                                if (iMax > o()) {
                                    K(iMax);
                                    r7 = 1;
                                    objArr[0] = 1;
                                    z14 = true;
                                    z16 = true;
                                } else {
                                    r7 = 1;
                                    z16 = z13;
                                }
                                iMax2 = Math.max(this.f30821b0, i());
                                if (iMax2 > i()) {
                                    H(iMax2);
                                    objArr[r7] = r7;
                                    z17 = true;
                                    z14 = true;
                                } else {
                                    z17 = z16;
                                }
                                if (z17) {
                                    if (objArr[0] == 2) {
                                        this.f30862D0 = r7;
                                        objArr[0] = r7;
                                        K(i12);
                                        z17 = true;
                                        z14 = true;
                                    }
                                    if (objArr[r7] != 2) {
                                    }
                                    if (i16 > i18) {
                                        z11 = false;
                                    } else {
                                        z11 = z14;
                                    }
                                    z10 = z17;
                                    i15 = i16;
                                    z9 = z15;
                                }
                                i18 = 8;
                                if (i16 > i18) {
                                    z11 = false;
                                } else {
                                    z11 = z14;
                                }
                                z10 = z17;
                                i15 = i16;
                                z9 = z15;
                            }
                            z12 = z10;
                            this.f30889p0 = arrayList14;
                            if (z12) {
                                objArr[0] = i11;
                                objArr[1] = i10;
                            }
                            C(dVar11.f30348m);
                        }
                        i25 = i8;
                        i26 = i25;
                        i8 = i26;
                        i12 = iO;
                        z7 = true;
                        if (S(64)) {
                            z8 = true;
                        } else {
                            z8 = true;
                        }
                        dVar11.getClass();
                        dVar11.f30343h = false;
                        if (this.f30861C0 == 0) {
                            c8 = 1;
                        } else {
                            c8 = 1;
                        }
                        ArrayList arrayList15 = this.f30889p0;
                        if (objArr[0] != 2) {
                            z9 = true;
                        } else {
                            z9 = true;
                        }
                        this.f30878y0 = 0;
                        this.f30879z0 = 0;
                        i13 = i9;
                        while (i14 < i13) {
                            dVar2 = (d) this.f30889p0.get(i14);
                            if (dVar2 instanceof j) {
                                ((j) dVar2).N();
                            }
                        }
                        boolean zS6 = S(64);
                        z10 = z7;
                        i15 = 0;
                        z11 = true;
                        while (z11) {
                            i16 = i15 + 1;
                            dVar11.t();
                            this.f30878y0 = 0;
                            this.f30879z0 = 0;
                            e(dVar11);
                            while (i20 < i13) {
                                ((d) this.f30889p0.get(i20)).e(dVar11);
                            }
                            P(dVar11);
                            weakReference = this.f30864F0;
                            if (weakReference != null) {
                                if (weakReference.get() != null) {
                                    c cVar116 = (c) this.f30864F0.get();
                                    obj3 = obj2;
                                    i iVarK112 = dVar11.k(obj3);
                                    d dVar1116 = this.f30875v0;
                                    z13 = z10;
                                    obj2 = obj3;
                                    dVar1116.f(dVar1116.k(cVar116), iVarK112, 0, 5);
                                    this.f30864F0 = null;
                                } else {
                                    z13 = z10;
                                }
                                weakReference2 = this.f30866H0;
                                if (weakReference2 != null) {
                                    c cVar117 = (c) this.f30866H0.get();
                                    i iVarK113 = dVar11.k(this.f30802K);
                                    d dVar1117 = this.f30875v0;
                                    dVar1117.f(iVarK113, dVar1117.k(cVar117), 0, 5);
                                    this.f30866H0 = null;
                                }
                                weakReference3 = this.f30865G0;
                                if (weakReference3 != null) {
                                    c cVar118 = (c) this.f30865G0.get();
                                    obj4 = obj;
                                    i iVarK114 = dVar11.k(obj4);
                                    d dVar1118 = this.f30875v0;
                                    obj = obj4;
                                    dVar1118.f(dVar1118.k(cVar118), iVarK114, 0, 5);
                                    this.f30865G0 = null;
                                }
                                weakReference4 = this.f30867I0;
                                if (weakReference4 == null) {
                                }
                                dVar11.p();
                                zArr[2] = false;
                                zS = S(64);
                                M(dVar11, zS);
                                size = this.f30889p0.size();
                                i17 = 0;
                                z14 = false;
                                while (i17 < size) {
                                    dVar = (d) this.f30889p0.get(i17);
                                    dVar.M(dVar11, zS);
                                    boolean z214 = zS;
                                    int i519 = size;
                                    if (dVar.f30832h == -1) {
                                        z14 = true;
                                    } else {
                                        z14 = true;
                                    }
                                    i17++;
                                    zS = z214;
                                    size = i519;
                                }
                            } else {
                                z13 = z10;
                                weakReference2 = this.f30866H0;
                                if (weakReference2 != null) {
                                    c cVar119 = (c) this.f30866H0.get();
                                    i iVarK115 = dVar11.k(this.f30802K);
                                    d dVar1119 = this.f30875v0;
                                    dVar1119.f(iVarK115, dVar1119.k(cVar119), 0, 5);
                                    this.f30866H0 = null;
                                }
                                weakReference3 = this.f30865G0;
                                if (weakReference3 != null) {
                                    c cVar1110 = (c) this.f30865G0.get();
                                    obj4 = obj;
                                    i iVarK116 = dVar11.k(obj4);
                                    d dVar11110 = this.f30875v0;
                                    obj = obj4;
                                    dVar11110.f(dVar11110.k(cVar1110), iVarK116, 0, 5);
                                    this.f30865G0 = null;
                                }
                                weakReference4 = this.f30867I0;
                                if (weakReference4 == null) {
                                }
                                dVar11.p();
                                zArr[2] = false;
                                zS = S(64);
                                M(dVar11, zS);
                                size = this.f30889p0.size();
                                i17 = 0;
                                z14 = false;
                                while (i17 < size) {
                                    dVar = (d) this.f30889p0.get(i17);
                                    dVar.M(dVar11, zS);
                                    boolean z215 = zS;
                                    int i5110 = size;
                                    if (dVar.f30832h == -1) {
                                        z14 = true;
                                    } else {
                                        z14 = true;
                                    }
                                    i17++;
                                    zS = z215;
                                    size = i5110;
                                }
                            }
                            if (z9) {
                                z15 = z9;
                            } else {
                                z15 = z9;
                            }
                            iMax = Math.max(this.f30819a0, o());
                            if (iMax > o()) {
                                K(iMax);
                                r7 = 1;
                                objArr[0] = 1;
                                z14 = true;
                                z16 = true;
                            } else {
                                r7 = 1;
                                z16 = z13;
                            }
                            iMax2 = Math.max(this.f30821b0, i());
                            if (iMax2 > i()) {
                                H(iMax2);
                                objArr[r7] = r7;
                                z17 = true;
                                z14 = true;
                            } else {
                                z17 = z16;
                            }
                            if (z17) {
                                if (objArr[0] == 2) {
                                    this.f30862D0 = r7;
                                    objArr[0] = r7;
                                    K(i12);
                                    z17 = true;
                                    z14 = true;
                                }
                                if (objArr[r7] != 2) {
                                }
                                if (i16 > i18) {
                                    z11 = false;
                                } else {
                                    z11 = z14;
                                }
                                z10 = z17;
                                i15 = i16;
                                z9 = z15;
                            }
                            i18 = 8;
                            if (i16 > i18) {
                                z11 = false;
                            } else {
                                z11 = z14;
                            }
                            z10 = z17;
                            i15 = i16;
                            z9 = z15;
                        }
                        z12 = z10;
                        this.f30889p0 = arrayList15;
                        if (z12) {
                            objArr[0] = i11;
                            objArr[1] = i10;
                        }
                        C(dVar11.f30348m);
                    }
                }
                i10 = i22;
                i12 = i21;
                i11 = i23;
            }
        }
        z7 = false;
        if (S(64)) {
            z8 = true;
        } else {
            z8 = true;
        }
        dVar11.getClass();
        dVar11.f30343h = false;
        if (this.f30861C0 == 0) {
            c8 = 1;
        } else {
            c8 = 1;
        }
        ArrayList arrayList16 = this.f30889p0;
        if (objArr[0] != 2) {
            z9 = true;
        } else {
            z9 = true;
        }
        this.f30878y0 = 0;
        this.f30879z0 = 0;
        i13 = i9;
        while (i14 < i13) {
            dVar2 = (d) this.f30889p0.get(i14);
            if (dVar2 instanceof j) {
                ((j) dVar2).N();
            }
        }
        boolean zS7 = S(64);
        z10 = z7;
        i15 = 0;
        z11 = true;
        while (z11) {
            i16 = i15 + 1;
            dVar11.t();
            this.f30878y0 = 0;
            this.f30879z0 = 0;
            e(dVar11);
            while (i20 < i13) {
                ((d) this.f30889p0.get(i20)).e(dVar11);
            }
            P(dVar11);
            weakReference = this.f30864F0;
            if (weakReference != null) {
                if (weakReference.get() != null) {
                    c cVar1111 = (c) this.f30864F0.get();
                    obj3 = obj2;
                    i iVarK117 = dVar11.k(obj3);
                    d dVar11111 = this.f30875v0;
                    z13 = z10;
                    obj2 = obj3;
                    dVar11111.f(dVar11111.k(cVar1111), iVarK117, 0, 5);
                    this.f30864F0 = null;
                } else {
                    z13 = z10;
                }
                weakReference2 = this.f30866H0;
                if (weakReference2 != null) {
                    c cVar1112 = (c) this.f30866H0.get();
                    i iVarK118 = dVar11.k(this.f30802K);
                    d dVar11112 = this.f30875v0;
                    dVar11112.f(iVarK118, dVar11112.k(cVar1112), 0, 5);
                    this.f30866H0 = null;
                }
                weakReference3 = this.f30865G0;
                if (weakReference3 != null) {
                    c cVar1113 = (c) this.f30865G0.get();
                    obj4 = obj;
                    i iVarK119 = dVar11.k(obj4);
                    d dVar11113 = this.f30875v0;
                    obj = obj4;
                    dVar11113.f(dVar11113.k(cVar1113), iVarK119, 0, 5);
                    this.f30865G0 = null;
                }
                weakReference4 = this.f30867I0;
                if (weakReference4 == null) {
                }
                dVar11.p();
                zArr[2] = false;
                zS = S(64);
                M(dVar11, zS);
                size = this.f30889p0.size();
                i17 = 0;
                z14 = false;
                while (i17 < size) {
                    dVar = (d) this.f30889p0.get(i17);
                    dVar.M(dVar11, zS);
                    boolean z216 = zS;
                    int i5111 = size;
                    if (dVar.f30832h == -1) {
                        z14 = true;
                    } else {
                        z14 = true;
                    }
                    i17++;
                    zS = z216;
                    size = i5111;
                }
            } else {
                z13 = z10;
                weakReference2 = this.f30866H0;
                if (weakReference2 != null) {
                    c cVar1114 = (c) this.f30866H0.get();
                    i iVarK1110 = dVar11.k(this.f30802K);
                    d dVar11114 = this.f30875v0;
                    dVar11114.f(iVarK1110, dVar11114.k(cVar1114), 0, 5);
                    this.f30866H0 = null;
                }
                weakReference3 = this.f30865G0;
                if (weakReference3 != null) {
                    c cVar1115 = (c) this.f30865G0.get();
                    obj4 = obj;
                    i iVarK1111 = dVar11.k(obj4);
                    d dVar11115 = this.f30875v0;
                    obj = obj4;
                    dVar11115.f(dVar11115.k(cVar1115), iVarK1111, 0, 5);
                    this.f30865G0 = null;
                }
                weakReference4 = this.f30867I0;
                if (weakReference4 == null) {
                }
                dVar11.p();
                zArr[2] = false;
                zS = S(64);
                M(dVar11, zS);
                size = this.f30889p0.size();
                i17 = 0;
                z14 = false;
                while (i17 < size) {
                    dVar = (d) this.f30889p0.get(i17);
                    dVar.M(dVar11, zS);
                    boolean z217 = zS;
                    int i5112 = size;
                    if (dVar.f30832h == -1) {
                        z14 = true;
                    } else {
                        z14 = true;
                    }
                    i17++;
                    zS = z217;
                    size = i5112;
                }
            }
            if (z9) {
                z15 = z9;
            } else {
                z15 = z9;
            }
            iMax = Math.max(this.f30819a0, o());
            if (iMax > o()) {
                K(iMax);
                r7 = 1;
                objArr[0] = 1;
                z14 = true;
                z16 = true;
            } else {
                r7 = 1;
                z16 = z13;
            }
            iMax2 = Math.max(this.f30821b0, i());
            if (iMax2 > i()) {
                H(iMax2);
                objArr[r7] = r7;
                z17 = true;
                z14 = true;
            } else {
                z17 = z16;
            }
            if (z17) {
                if (objArr[0] == 2) {
                    this.f30862D0 = r7;
                    objArr[0] = r7;
                    K(i12);
                    z17 = true;
                    z14 = true;
                }
                if (objArr[r7] != 2) {
                }
                if (i16 > i18) {
                    z11 = false;
                } else {
                    z11 = z14;
                }
                z10 = z17;
                i15 = i16;
                z9 = z15;
            }
            i18 = 8;
            if (i16 > i18) {
                z11 = false;
            } else {
                z11 = z14;
            }
            z10 = z17;
            i15 = i16;
            z9 = z15;
        }
        z12 = z10;
        this.f30889p0 = arrayList16;
        if (z12) {
            objArr[0] = i11;
            objArr[1] = i10;
        }
        C(dVar11.f30348m);
    }

    public final void O(int i8, d dVar) {
        if (i8 == 0) {
            int i9 = this.f30878y0 + 1;
            b[] bVarArr = this.f30860B0;
            if (i9 >= bVarArr.length) {
                this.f30860B0 = (b[]) Arrays.copyOf(bVarArr, bVarArr.length * 2);
            }
            b[] bVarArr2 = this.f30860B0;
            int i10 = this.f30878y0;
            bVarArr2[i10] = new b(dVar, 0, this.f30874u0);
            this.f30878y0 = i10 + 1;
            return;
        }
        if (i8 == 1) {
            int i11 = this.f30879z0 + 1;
            b[] bVarArr3 = this.f30859A0;
            if (i11 >= bVarArr3.length) {
                this.f30859A0 = (b[]) Arrays.copyOf(bVarArr3, bVarArr3.length * 2);
            }
            b[] bVarArr4 = this.f30859A0;
            int i12 = this.f30879z0;
            bVarArr4[i12] = new b(dVar, 1, this.f30874u0);
            this.f30879z0 = i12 + 1;
        }
    }

    public final void P(d dVar) {
        boolean zS = S(64);
        b(dVar, zS);
        int size = this.f30889p0.size();
        boolean z7 = false;
        for (int i8 = 0; i8 < size; i8++) {
            d dVar2 = (d) this.f30889p0.get(i8);
            boolean[] zArr = dVar2.f30809R;
            zArr[0] = false;
            zArr[1] = false;
            if (dVar2 instanceof a) {
                z7 = true;
            }
        }
        if (z7) {
            for (int i9 = 0; i9 < size; i9++) {
                d dVar3 = (d) this.f30889p0.get(i9);
                if (dVar3 instanceof a) {
                    a aVar = (a) dVar3;
                    for (int i10 = 0; i10 < aVar.f30887q0; i10++) {
                        d dVar4 = aVar.f30886p0[i10];
                        if (aVar.f30763s0 || dVar4.c()) {
                            int i11 = aVar.f30762r0;
                            if (i11 == 0 || i11 == 1) {
                                dVar4.f30809R[0] = true;
                            } else if (i11 == 2 || i11 == 3) {
                                dVar4.f30809R[1] = true;
                            }
                        }
                    }
                }
            }
        }
        HashSet hashSet = this.f30868J0;
        hashSet.clear();
        for (int i12 = 0; i12 < size; i12++) {
            d dVar5 = (d) this.f30889p0.get(i12);
            dVar5.getClass();
            if (dVar5 instanceof f) {
                dVar5.b(dVar, zS);
            }
        }
        while (hashSet.size() > 0) {
            int size2 = hashSet.size();
            Iterator it = hashSet.iterator();
            if (it.hasNext()) {
                a.i((d) it.next());
                throw null;
            }
            if (size2 == hashSet.size()) {
                Iterator it2 = hashSet.iterator();
                while (it2.hasNext()) {
                    ((d) it2.next()).b(dVar, zS);
                }
                hashSet.clear();
            }
        }
        if (d.f30335q) {
            HashSet<d> hashSet2 = new HashSet();
            for (int i13 = 0; i13 < size; i13++) {
                d dVar6 = (d) this.f30889p0.get(i13);
                dVar6.getClass();
                if (!(dVar6 instanceof f)) {
                    hashSet2.add(dVar6);
                }
            }
            a(this, dVar, hashSet2, this.f30847o0[0] == 2 ? 0 : 1, false);
            for (d dVar7 : hashSet2) {
                i.a(this, dVar, dVar7);
                dVar7.b(dVar, zS);
            }
        } else {
            for (int i14 = 0; i14 < size; i14++) {
                d dVar8 = (d) this.f30889p0.get(i14);
                if (dVar8 instanceof e) {
                    int[] iArr = dVar8.f30847o0;
                    int i15 = iArr[0];
                    int i16 = iArr[1];
                    if (i15 == 2) {
                        dVar8.I(1);
                    }
                    if (i16 == 2) {
                        dVar8.J(1);
                    }
                    dVar8.b(dVar, zS);
                    if (i15 == 2) {
                        dVar8.I(i15);
                    }
                    if (i16 == 2) {
                        dVar8.J(i16);
                    }
                } else {
                    i.a(this, dVar, dVar8);
                    if (!(dVar8 instanceof f)) {
                        dVar8.b(dVar, zS);
                    }
                }
            }
        }
        if (this.f30878y0 > 0) {
            E3.f.a(this, dVar, null, 0);
        }
        if (this.f30879z0 > 0) {
            E3.f.a(this, dVar, null, 1);
        }
    }

    /* JADX WARN: Code duplicated, block: B:33:0x009f  */
    public final boolean Q(int i8, boolean z7) {
        boolean z8;
        boolean z9 = true;
        boolean z10 = z7 & true;
        p178x.e eVar = this.f30871r0;
        e eVar2 = (e) eVar.f31129c;
        int iH = eVar2.h(0);
        int iH2 = eVar2.h(1);
        int iP = eVar2.p();
        int iQ = eVar2.q();
        Object obj = eVar.f31131e;
        if (z10 && (iH == 2 || iH2 == 2)) {
            for (p pVar : (ArrayList) obj) {
                if (pVar.f31173f == i8 && !pVar.k()) {
                    z10 = false;
                    break;
                }
            }
            if (i8 == 0) {
                if (z10 && iH == 2) {
                    eVar2.I(1);
                    eVar2.K(eVar.e(eVar2, 0));
                    eVar2.f30824d.f31172e.d(eVar2.o());
                }
            } else if (z10 && iH2 == 2) {
                eVar2.J(1);
                eVar2.H(eVar.e(eVar2, 1));
                eVar2.f30826e.f31172e.d(eVar2.i());
            }
        }
        if (i8 == 0) {
            int i9 = eVar2.f30847o0[0];
            if (i9 == 1 || i9 == 4) {
                int iO = eVar2.o() + iP;
                eVar2.f30824d.f31176i.d(iO);
                eVar2.f30824d.f31172e.d(iO - iP);
                z8 = true;
            } else {
                z8 = false;
            }
        } else {
            int i10 = eVar2.f30847o0[1];
            if (i10 == 1 || i10 == 4) {
                int i11 = eVar2.i() + iQ;
                eVar2.f30826e.f31176i.d(i11);
                eVar2.f30826e.f31172e.d(i11 - iQ);
                z8 = true;
            } else {
                z8 = false;
            }
        }
        eVar.i();
        ArrayList<p> arrayList = (ArrayList) obj;
        for (p pVar2 : arrayList) {
            if (pVar2.f31173f == i8 && (pVar2.f31169b != eVar2 || pVar2.f31174g)) {
                pVar2.e();
            }
        }
        for (p pVar3 : arrayList) {
            if (pVar3.f31173f == i8 && (z8 || pVar3.f31169b != eVar2)) {
                if (!pVar3.f31175h.f31145j || !pVar3.f31176i.f31145j || (!(pVar3 instanceof c) && !pVar3.f31172e.f31145j)) {
                    z9 = false;
                    break;
                }
            }
        }
        eVar2.I(iH);
        eVar2.J(iH2);
        return z9;
    }

    public final boolean S(int i8) {
        return (this.f30861C0 & i8) == i8;
    }

    @Override // p170w.d
    public final void l(StringBuilder sb) {
        sb.append(this.f30836j + ":{\n");
        StringBuilder sb2 = new StringBuilder("  actualWidth:");
        sb2.append(this.f30811T);
        sb.append(sb2.toString());
        sb.append("\n");
        sb.append("  actualHeight:" + this.f30812U);
        sb.append("\n");
        Iterator it = this.f30889p0.iterator();
        while (it.hasNext()) {
            ((d) it.next()).l(sb);
            sb.append(",\n");
        }
        sb.append("}");
    }
}
