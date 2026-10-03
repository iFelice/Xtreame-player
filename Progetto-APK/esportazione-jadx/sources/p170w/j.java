package p170w;

import java.util.ArrayList;
import p096m2.o;

/* JADX INFO: loaded from: classes.dex */
public abstract class j extends d {

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public ArrayList f30889p0;

    @Override // p170w.d
    public void A() {
        this.f30889p0.clear();
        super.A();
    }

    @Override // p170w.d
    public final void C(o oVar) {
        super.C(oVar);
        int size = this.f30889p0.size();
        for (int i8 = 0; i8 < size; i8++) {
            ((d) this.f30889p0.get(i8)).C(oVar);
        }
    }

    public abstract void N();
}
