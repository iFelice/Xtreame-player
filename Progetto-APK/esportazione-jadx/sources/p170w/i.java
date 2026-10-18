package p170w;

import p156u.d;

/* JADX INFO: loaded from: classes.dex */
public abstract class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final boolean[] f30888a = new boolean[3];

    public static void a(e eVar, d dVar, d dVar2) {
        dVar2.f30846o = -1;
        dVar2.f30848p = -1;
        int i8 = eVar.f30847o0[0];
        int[] iArr = dVar2.f30847o0;
        if (i8 != 2 && iArr[0] == 4) {
            c cVar = dVar2.f30799H;
            int i9 = cVar.f30789g;
            int iO = eVar.o();
            c cVar2 = dVar2.f30801J;
            int i10 = iO - cVar2.f30789g;
            cVar.f30791i = dVar.k(cVar);
            cVar2.f30791i = dVar.k(cVar2);
            dVar.d(cVar.f30791i, i9);
            dVar.d(cVar2.f30791i, i10);
            dVar2.f30846o = 2;
            dVar2.f30815X = i9;
            int i11 = i10 - i9;
            dVar2.f30811T = i11;
            int i12 = dVar2.f30819a0;
            if (i11 < i12) {
                dVar2.f30811T = i12;
            }
        }
        if (eVar.f30847o0[1] == 2 || iArr[1] != 4) {
            return;
        }
        c cVar3 = dVar2.f30800I;
        int i13 = cVar3.f30789g;
        int i14 = eVar.i();
        c cVar4 = dVar2.f30802K;
        int i15 = i14 - cVar4.f30789g;
        cVar3.f30791i = dVar.k(cVar3);
        cVar4.f30791i = dVar.k(cVar4);
        dVar.d(cVar3.f30791i, i13);
        dVar.d(cVar4.f30791i, i15);
        if (dVar2.f30817Z > 0 || dVar2.f30829f0 == 8) {
            c cVar5 = dVar2.f30803L;
            p156u.i iVarK = dVar.k(cVar5);
            cVar5.f30791i = iVarK;
            dVar.d(iVarK, dVar2.f30817Z + i13);
        }
        dVar2.f30848p = 2;
        dVar2.f30816Y = i13;
        int i16 = i15 - i13;
        dVar2.f30812U = i16;
        int i17 = dVar2.f30821b0;
        if (i16 < i17) {
            dVar2.f30812U = i17;
        }
    }

    public static final boolean b(int i8, int i9) {
        return (i8 & i9) == i9;
    }
}
