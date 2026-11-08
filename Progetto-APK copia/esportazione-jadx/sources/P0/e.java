package P0;

import W0.F;
import W0.L;
import W0.s;
import W0.u;
import W0.w;
import android.util.SparseArray;
import com.google.android.gms.internal.measurement.H1;
import p094m0.C3136t;

/* JADX INFO: loaded from: classes.dex */
public final class e implements u, i {

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public static final w f5710P = new w();

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final s f5711G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f5712H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final C3136t f5713I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final SparseArray f5714J = new SparseArray();

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public boolean f5715K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public h f5716L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public long f5717M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public F f5718N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public C3136t[] f5719O;

    public e(s sVar, int i8, C3136t c3136t) {
        this.f5711G = sVar;
        this.f5712H = i8;
        this.f5713I = c3136t;
    }

    public final void a(h hVar, long j8, long j9) {
        this.f5716L = hVar;
        this.f5717M = j9;
        boolean z7 = this.f5715K;
        s sVar = this.f5711G;
        if (!z7) {
            sVar.d(this);
            if (j8 != -9223372036854775807L) {
                sVar.i(0L, j8);
            }
            this.f5715K = true;
            return;
        }
        if (j8 == -9223372036854775807L) {
            j8 = 0;
        }
        sVar.i(0L, j8);
        int i8 = 0;
        while (true) {
            SparseArray sparseArray = this.f5714J;
            if (i8 >= sparseArray.size()) {
                return;
            }
            d dVar = (d) sparseArray.valueAt(i8);
            if (hVar == null) {
                dVar.f5708e = dVar.f5706c;
            } else {
                dVar.f5709f = j9;
                L lA = ((c) hVar).a(dVar.f5704a);
                dVar.f5708e = lA;
                C3136t c3136t = dVar.f5707d;
                if (c3136t != null) {
                    lA.b(c3136t);
                }
            }
            i8++;
        }
    }

    @Override // W0.u
    public final void j() {
        SparseArray sparseArray = this.f5714J;
        C3136t[] c3136tArr = new C3136t[sparseArray.size()];
        for (int i8 = 0; i8 < sparseArray.size(); i8++) {
            C3136t c3136t = ((d) sparseArray.valueAt(i8)).f5707d;
            H1.j(c3136t);
            c3136tArr[i8] = c3136t;
        }
        this.f5719O = c3136tArr;
    }

    @Override // W0.u
    public final void r(F f8) {
        this.f5718N = f8;
    }

    @Override // W0.u
    public final L t(int i8, int i9) {
        SparseArray sparseArray = this.f5714J;
        d dVar = (d) sparseArray.get(i8);
        if (dVar == null) {
            H1.i(this.f5719O == null);
            dVar = new d(i9 == this.f5712H ? this.f5713I : null, i8, i9);
            h hVar = this.f5716L;
            long j8 = this.f5717M;
            if (hVar == null) {
                dVar.f5708e = dVar.f5706c;
            } else {
                dVar.f5709f = j8;
                L lA = ((c) hVar).a(i9);
                dVar.f5708e = lA;
                C3136t c3136t = dVar.f5707d;
                if (c3136t != null) {
                    lA.b(c3136t);
                }
            }
            sparseArray.put(i8, dVar);
        }
        return dVar;
    }
}
