package E0;

import C0.I;
import O0.C0278b;
import java.util.ArrayList;
import java.util.List;
import p086l.C3016a;
import p141s0.InterfaceC3184i;

/* JADX INFO: loaded from: classes.dex */
public final class p implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final S0.n f2541a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p096m2.i f2542b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int[] f2543c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f2544d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final InterfaceC3184i f2545e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f2546f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f2547g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final s f2548h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final n[] f2549i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public R0.t f2550j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public F0.c f2551k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f2552l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public C0278b f2553m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f2554n;

    public p(P0.g gVar, S0.n nVar, F0.c cVar, p096m2.i iVar, int i8, int[] iArr, R0.t tVar, int i9, InterfaceC3184i interfaceC3184i, long j8, int i10, boolean z7, ArrayList arrayList, s sVar, I i11) {
        this.f2541a = nVar;
        this.f2551k = cVar;
        this.f2542b = iVar;
        this.f2543c = iArr;
        this.f2550j = tVar;
        this.f2544d = i9;
        this.f2545e = interfaceC3184i;
        this.f2552l = i8;
        this.f2546f = j8;
        this.f2547g = i10;
        this.f2548h = sVar;
        long jD = cVar.d(i8);
        ArrayList arrayListA = a();
        R0.c cVar2 = (R0.c) tVar;
        this.f2549i = new n[cVar2.q()];
        int i12 = 0;
        int i13 = 0;
        while (i13 < this.f2549i.length) {
            F0.m mVar = (F0.m) arrayListA.get(cVar2.k(i13));
            F0.b bVarQ = iVar.q(mVar.f3067b);
            int i14 = i13;
            this.f2549i[i14] = new n(jD, mVar, bVarQ == null ? (F0.b) mVar.f3067b.get(i12) : bVarQ, ((C3016a) gVar).d(i9, mVar.f3066a, z7, arrayList, sVar), 0L, mVar.l());
            i13 = i14 + 1;
            cVar2 = cVar2;
            i12 = 0;
        }
    }

    public final ArrayList a() {
        List list = this.f2551k.b(this.f2552l).f3051c;
        ArrayList arrayList = new ArrayList();
        for (int i8 : this.f2543c) {
            arrayList.addAll(((F0.a) list.get(i8)).f3006c);
        }
        return arrayList;
    }

    public final n b(int i8) {
        n[] nVarArr = this.f2549i;
        n nVar = nVarArr[i8];
        F0.b bVarQ = this.f2542b.q(((F0.m) nVar.f2537e).f3067b);
        if (bVarQ == null || bVarQ.equals((F0.b) nVar.f2538f)) {
            return nVar;
        }
        n nVar2 = new n(nVar.f2534b, (F0.m) nVar.f2537e, bVarQ, (P0.i) nVar.f2536d, nVar.f2535c, (k) nVar.f2539g);
        nVarArr[i8] = nVar2;
        return nVar2;
    }

    public final void c(R0.t tVar) {
        this.f2550j = tVar;
    }
}
