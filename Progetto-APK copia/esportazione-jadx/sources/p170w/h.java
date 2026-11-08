package p170w;

import Q3.b;
import java.util.ArrayList;
import p178x.o;

/* JADX INFO: loaded from: classes.dex */
public abstract class h extends d implements g {

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public d[] f30886p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public int f30887q0;

    public final void N(int i8, o oVar, ArrayList arrayList) {
        for (int i9 = 0; i9 < this.f30887q0; i9++) {
            d dVar = this.f30886p0[i9];
            ArrayList arrayList2 = oVar.f31163a;
            if (!arrayList2.contains(dVar)) {
                arrayList2.add(dVar);
            }
        }
        for (int i10 = 0; i10 < this.f30887q0; i10++) {
            b.g(this.f30886p0[i10], i8, arrayList, oVar);
        }
    }
}
