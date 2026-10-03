package R0;

import A0.O;
import p094m0.C3136t;
import z4.AbstractC3259x;

/* JADX INFO: loaded from: classes.dex */
public final class i implements Comparable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final boolean f6163G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final boolean f6164H;

    public i(C3136t c3136t, int i8) {
        this.f6163G = (c3136t.f27031e & 1) != 0;
        this.f6164H = O.u(i8, false);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        i iVar = (i) obj;
        return AbstractC3259x.f31903a.c(this.f6164H, iVar.f6164H).c(this.f6163G, iVar.f6163G).e();
    }
}
