package p039f;

import N.C;
import N.N;
import N.U;
import android.view.MenuItem;
import android.view.ViewGroup;
import java.util.WeakHashMap;
import p071j.a;
import p071j.b;
import p079k.o;
import p096m2.i;

/* JADX INFO: loaded from: classes.dex */
public final class A implements a {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final a f24892G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ K f24893H;

    public A(K k8, i iVar) {
        this.f24893H = k8;
        this.f24892G = iVar;
    }

    @Override // p071j.a
    public final void d(b bVar) {
        this.f24892G.d(bVar);
        K k8 = this.f24893H;
        if (k8.f24954c0 != null) {
            k8.f24943R.getDecorView().removeCallbacks(k8.f24955d0);
        }
        if (k8.f24953b0 != null) {
            U u7 = k8.f24956e0;
            if (u7 != null) {
                u7.b();
            }
            U uA = N.a(k8.f24953b0);
            uA.a(0.0f);
            k8.f24956e0 = uA;
            uA.d(new z(this, 2));
        }
        k8.f24952a0 = null;
        ViewGroup viewGroup = k8.f24959h0;
        WeakHashMap weakHashMap = N.f4843a;
        C.c(viewGroup);
        k8.I();
    }

    @Override // p071j.a
    public final boolean e(b bVar, MenuItem menuItem) {
        return this.f24892G.e(bVar, menuItem);
    }

    @Override // p071j.a
    public final boolean f(b bVar, o oVar) {
        return this.f24892G.f(bVar, oVar);
    }

    @Override // p071j.a
    public final boolean h(b bVar, o oVar) {
        ViewGroup viewGroup = this.f24893H.f24959h0;
        WeakHashMap weakHashMap = N.f4843a;
        C.c(viewGroup);
        return this.f24892G.h(bVar, oVar);
    }
}
