package R0;

import A0.O;
import p094m0.g0;

/* JADX INFO: loaded from: classes.dex */
public final class h extends o implements Comparable {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final int f6161K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final int f6162L;

    public h(int i8, g0 g0Var, int i9, k kVar, int i10) {
        super(i8, i9, g0Var);
        this.f6161K = O.u(i10, kVar.f6194Q) ? 1 : 0;
        this.f6162L = this.f6213J.b();
    }

    @Override // R0.o
    public final int a() {
        return this.f6161K;
    }

    @Override // R0.o
    public final /* bridge */ /* synthetic */ boolean b(o oVar) {
        return false;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return Integer.compare(this.f6162L, ((h) obj).f6162L);
    }
}
