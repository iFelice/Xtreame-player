package O0;

import java.util.Iterator;
import p141s0.C3189n;

/* JADX INFO: renamed from: O0.l, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0288l implements InterfaceC0299x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0287k f5220a;

    public C0288l(C3189n c3189n) {
        C0287k c0287k = new C0287k();
        this.f5220a = c0287k;
        if (c3189n != c0287k.f5219c) {
            c0287k.f5219c = c3189n;
            c0287k.f5217a.clear();
            c0287k.f5218b.clear();
        }
    }

    @Override // O0.InterfaceC0299x
    public final /* bridge */ /* synthetic */ InterfaceC0299x a(G0.j jVar) {
        b(jVar);
        return this;
    }

    public final C0288l b(G0.j jVar) {
        Iterator it = this.f5220a.f5218b.values().iterator();
        while (it.hasNext()) {
            ((InterfaceC0299x) it.next()).a(jVar);
        }
        return this;
    }
}
