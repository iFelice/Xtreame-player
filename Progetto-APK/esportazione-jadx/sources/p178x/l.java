package p178x;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public p f31151a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ArrayList f31152b;

    public static long a(f fVar, long j8) {
        p pVar = fVar.f31139d;
        if (pVar instanceof j) {
            return j8;
        }
        ArrayList arrayList = fVar.f31146k;
        int size = arrayList.size();
        long jMin = j8;
        for (int i8 = 0; i8 < size; i8++) {
            d dVar = (d) arrayList.get(i8);
            if (dVar instanceof f) {
                f fVar2 = (f) dVar;
                if (fVar2.f31139d != pVar) {
                    jMin = Math.min(jMin, a(fVar2, ((long) fVar2.f31141f) + j8));
                }
            }
        }
        if (fVar != pVar.f31176i) {
            return jMin;
        }
        long j9 = pVar.j();
        f fVar3 = pVar.f31175h;
        long j10 = j8 - j9;
        return Math.min(Math.min(jMin, a(fVar3, j10)), j10 - ((long) fVar3.f31141f));
    }

    public static long b(f fVar, long j8) {
        p pVar = fVar.f31139d;
        if (pVar instanceof j) {
            return j8;
        }
        ArrayList arrayList = fVar.f31146k;
        int size = arrayList.size();
        long jMax = j8;
        for (int i8 = 0; i8 < size; i8++) {
            d dVar = (d) arrayList.get(i8);
            if (dVar instanceof f) {
                f fVar2 = (f) dVar;
                if (fVar2.f31139d != pVar) {
                    jMax = Math.max(jMax, b(fVar2, ((long) fVar2.f31141f) + j8));
                }
            }
        }
        if (fVar != pVar.f31175h) {
            return jMax;
        }
        long j9 = pVar.j();
        f fVar3 = pVar.f31176i;
        long j10 = j8 + j9;
        return Math.max(Math.max(jMax, b(fVar3, j10)), j10 - ((long) fVar3.f31141f));
    }
}
