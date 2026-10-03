package O1;

import android.os.Trace;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class r implements Runnable {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final ThreadLocal f5505K = new ThreadLocal();

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final B.f f5506L = new B.f(1);

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public long f5508H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public long f5509I;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final ArrayList f5507G = new ArrayList();

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final ArrayList f5510J = new ArrayList();

    public static c0 c(RecyclerView recyclerView, int i8, long j8) {
        int iH = recyclerView.f9630L.h();
        for (int i9 = 0; i9 < iH; i9++) {
            c0 c0VarL = RecyclerView.L(recyclerView.f9630L.g(i9));
            if (c0VarL.f5355I == i8 && !c0VarL.h()) {
                return null;
            }
        }
        p142s1.g gVar = recyclerView.f9624I;
        if (j8 == Long.MAX_VALUE) {
            try {
                if (J.k.a()) {
                    Trace.beginSection("RV Prefetch forced - needed next frame");
                }
            } finally {
                recyclerView.V(false);
                Trace.endSection();
            }
        }
        recyclerView.U();
        c0 c0VarL2 = gVar.l(i8, j8);
        if (c0VarL2 != null) {
            if (!c0VarL2.g() || c0VarL2.h()) {
                gVar.a(c0VarL2, false);
            } else {
                gVar.i(c0VarL2.f5353G);
            }
        }
        return c0VarL2;
    }

    public final void a(RecyclerView recyclerView, int i8, int i9) {
        if (recyclerView.f9661c0) {
            if (RecyclerView.f9605i1 && !this.f5507G.contains(recyclerView)) {
                throw new IllegalStateException("attempting to post unregistered view!");
            }
            if (this.f5508H == 0) {
                this.f5508H = recyclerView.getNanoTime();
                recyclerView.post(this);
            }
        }
        p132r.h hVar = recyclerView.f9633M0;
        hVar.f29664b = i8;
        hVar.f29665c = i9;
    }

    /* JADX WARN: Code duplicated, block: B:75:0x0142  */
    public final void b(long j8) {
        C0318q c0318q;
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        C0318q c0318q2;
        ArrayList arrayList = this.f5507G;
        int size = arrayList.size();
        int i8 = 0;
        for (int i9 = 0; i9 < size; i9++) {
            RecyclerView recyclerView3 = (RecyclerView) arrayList.get(i9);
            if (recyclerView3.getWindowVisibility() == 0) {
                p132r.h hVar = recyclerView3.f9633M0;
                hVar.c(recyclerView3, false);
                i8 += hVar.f29667e;
            }
        }
        ArrayList arrayList2 = this.f5510J;
        arrayList2.ensureCapacity(i8);
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            RecyclerView recyclerView4 = (RecyclerView) arrayList.get(i11);
            if (recyclerView4.getWindowVisibility() == 0) {
                p132r.h hVar2 = recyclerView4.f9633M0;
                int iAbs = Math.abs(hVar2.f29665c) + Math.abs(hVar2.f29664b);
                for (int i12 = 0; i12 < hVar2.f29667e * 2; i12 += 2) {
                    if (i10 >= arrayList2.size()) {
                        c0318q2 = new C0318q();
                        arrayList2.add(c0318q2);
                    } else {
                        c0318q2 = (C0318q) arrayList2.get(i10);
                    }
                    int[] iArr = hVar2.f29666d;
                    int i13 = iArr[i12 + 1];
                    c0318q2.f5500a = i13 <= iAbs;
                    c0318q2.f5501b = iAbs;
                    c0318q2.f5502c = i13;
                    c0318q2.f5503d = recyclerView4;
                    c0318q2.f5504e = iArr[i12];
                    i10++;
                }
            }
        }
        Collections.sort(arrayList2, f5506L);
        for (int i14 = 0; i14 < arrayList2.size() && (recyclerView = (c0318q = (C0318q) arrayList2.get(i14)).f5503d) != null; i14++) {
            c0 c0VarC = c(recyclerView, c0318q.f5504e, c0318q.f5500a ? Long.MAX_VALUE : j8);
            if (c0VarC != null && c0VarC.f5354H != null && c0VarC.g() && !c0VarC.h() && (recyclerView2 = (RecyclerView) c0VarC.f5354H.get()) != null) {
                if (recyclerView2.f9677m0 && recyclerView2.f9630L.h() != 0) {
                    H h8 = recyclerView2.f9686v0;
                    if (h8 != null) {
                        h8.e();
                    }
                    L l4 = recyclerView2.f9646T;
                    p142s1.g gVar = recyclerView2.f9624I;
                    if (l4 != null) {
                        l4.w0(gVar);
                        recyclerView2.f9646T.x0(gVar);
                    }
                    ((ArrayList) gVar.f30045c).clear();
                    gVar.g();
                }
                p132r.h hVar3 = recyclerView2.f9633M0;
                hVar3.c(recyclerView2, true);
                if (hVar3.f29667e != 0) {
                    try {
                        Trace.beginSection(j8 == Long.MAX_VALUE ? "RV Nested Prefetch" : "RV Nested Prefetch forced - needed next frame");
                        Y y7 = recyclerView2.f9635N0;
                        C c8 = recyclerView2.f9644S;
                        y7.f5317d = 1;
                        y7.f5318e = c8.a();
                        y7.f5320g = false;
                        y7.f5321h = false;
                        y7.f5322i = false;
                        for (int i15 = 0; i15 < hVar3.f29667e * 2; i15 += 2) {
                            c(recyclerView2, hVar3.f29666d[i15], j8);
                        }
                        Trace.endSection();
                    } catch (Throwable th) {
                        Trace.endSection();
                        throw th;
                    }
                }
            }
            c0318q.f5500a = false;
            c0318q.f5501b = 0;
            c0318q.f5502c = 0;
            c0318q.f5503d = null;
            c0318q.f5504e = 0;
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            Trace.beginSection("RV Prefetch");
            ArrayList arrayList = this.f5507G;
            if (!arrayList.isEmpty()) {
                int size = arrayList.size();
                long jMax = 0;
                for (int i8 = 0; i8 < size; i8++) {
                    RecyclerView recyclerView = (RecyclerView) arrayList.get(i8);
                    if (recyclerView.getWindowVisibility() == 0) {
                        jMax = Math.max(recyclerView.getDrawingTime(), jMax);
                    }
                }
                if (jMax != 0) {
                    b(TimeUnit.MILLISECONDS.toNanos(jMax) + this.f5509I);
                }
            }
        } finally {
            this.f5508H = 0L;
            Trace.endSection();
        }
    }
}
