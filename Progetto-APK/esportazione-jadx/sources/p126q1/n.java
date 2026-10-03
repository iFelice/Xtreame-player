package p126q1;

import W0.F;
import W0.L;
import W0.u;
import android.util.SparseArray;

/* JADX INFO: loaded from: classes.dex */
public final class n implements u {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final u f29559G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final k f29560H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final SparseArray f29561I = new SparseArray();

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public boolean f29562J;

    public n(u uVar, k kVar) {
        this.f29559G = uVar;
        this.f29560H = kVar;
    }

    @Override // W0.u
    public final void j() {
        this.f29559G.j();
        if (!this.f29562J) {
            return;
        }
        int i8 = 0;
        while (true) {
            SparseArray sparseArray = this.f29561I;
            if (i8 >= sparseArray.size()) {
                return;
            }
            ((o) sparseArray.valueAt(i8)).f29572j = true;
            i8++;
        }
    }

    @Override // W0.u
    public final void r(F f8) {
        this.f29559G.r(f8);
    }

    @Override // W0.u
    public final L t(int i8, int i9) {
        u uVar = this.f29559G;
        if (i9 != 3) {
            this.f29562J = true;
            return uVar.t(i8, i9);
        }
        SparseArray sparseArray = this.f29561I;
        o oVar = (o) sparseArray.get(i8);
        if (oVar != null) {
            return oVar;
        }
        o oVar2 = new o(uVar.t(i8, i9), this.f29560H);
        sparseArray.put(i8, oVar2);
        return oVar2;
    }
}
