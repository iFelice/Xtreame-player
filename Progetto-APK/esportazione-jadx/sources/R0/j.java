package R0;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import java.util.HashMap;
import java.util.Map;
import p094m0.h0;
import p094m0.j0;
import p094m0.k0;
import z4.L;

/* JADX INFO: loaded from: classes.dex */
public final class j extends j0 {

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public final boolean f6165F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final boolean f6166G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final boolean f6167H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final boolean f6168I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final boolean f6169J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final boolean f6170K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final boolean f6171L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final boolean f6172M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final boolean f6173N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final boolean f6174O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final boolean f6175P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final boolean f6176Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final boolean f6177R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final boolean f6178S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final boolean f6179T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final SparseArray f6180U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public final SparseBooleanArray f6181V;

    public j() {
        this.f6180U = new SparseArray();
        this.f6181V = new SparseBooleanArray();
        this.f6165F = true;
        this.f6166G = false;
        this.f6167H = true;
        this.f6168I = false;
        this.f6169J = true;
        this.f6170K = false;
        this.f6171L = false;
        this.f6172M = false;
        this.f6173N = false;
        this.f6174O = true;
        this.f6175P = true;
        this.f6176Q = true;
        this.f6177R = false;
        this.f6178S = true;
        this.f6179T = false;
    }

    @Override // p094m0.j0
    public final void a(h0 h0Var) {
        super.a(h0Var);
    }

    @Override // p094m0.j0
    public final k0 b() {
        return new k(this);
    }

    @Override // p094m0.j0
    public final j0 c(int i8) {
        super.c(i8);
        return this;
    }

    @Override // p094m0.j0
    public final j0 e() {
        this.f26909y = -3;
        return this;
    }

    @Override // p094m0.j0
    public final j0 f(h0 h0Var) {
        super.f(h0Var);
        return this;
    }

    @Override // p094m0.j0
    public final j0 g() {
        super.g();
        return this;
    }

    @Override // p094m0.j0
    public final j0 h(String[] strArr) {
        super.h(strArr);
        return this;
    }

    @Override // p094m0.j0
    public final j0 i() {
        super.i();
        return this;
    }

    @Override // p094m0.j0
    public final j0 j(int i8, boolean z7) {
        super.j(i8, z7);
        return this;
    }

    public final void k(L l4) {
        this.f26884E.clear();
        this.f26884E.addAll(l4);
    }

    public j(k kVar) {
        super(kVar);
        this.f6165F = kVar.f6183F;
        this.f6166G = kVar.f6184G;
        this.f6167H = kVar.f6185H;
        this.f6168I = kVar.f6186I;
        this.f6169J = kVar.f6187J;
        this.f6170K = kVar.f6188K;
        this.f6171L = kVar.f6189L;
        this.f6172M = kVar.f6190M;
        this.f6173N = kVar.f6191N;
        this.f6174O = kVar.f6192O;
        this.f6175P = kVar.f6193P;
        this.f6176Q = kVar.f6194Q;
        this.f6177R = kVar.f6195R;
        this.f6178S = kVar.f6196S;
        this.f6179T = kVar.f6197T;
        SparseArray sparseArray = new SparseArray();
        int i8 = 0;
        while (true) {
            SparseArray sparseArray2 = kVar.f6198U;
            if (i8 < sparseArray2.size()) {
                sparseArray.put(sparseArray2.keyAt(i8), new HashMap((Map) sparseArray2.valueAt(i8)));
                i8++;
            } else {
                this.f6180U = sparseArray;
                this.f6181V = kVar.f6199V.clone();
                return;
            }
        }
    }
}
