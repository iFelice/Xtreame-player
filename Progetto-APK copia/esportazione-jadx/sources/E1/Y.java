package E1;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public final class Y extends AbstractC0177l implements V {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f2682f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f2683g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f2685i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public U f2686j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final /* synthetic */ a0 f2688l;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f2684h = -1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f2687k = -1;

    public Y(a0 a0Var, String str) {
        this.f2688l = a0Var;
        this.f2682f = str;
    }

    @Override // E1.V
    public final int a() {
        return this.f2687k;
    }

    @Override // E1.V
    public final void b() {
        U u7 = this.f2686j;
        if (u7 != null) {
            int i8 = this.f2687k;
            int i9 = u7.f2674d;
            u7.f2674d = i9 + 1;
            u7.b(4, i9, i8, null, null);
            this.f2686j = null;
            this.f2687k = 0;
        }
    }

    @Override // E1.V
    public final void c(U u7) {
        X x7 = new X(this);
        this.f2686j = u7;
        int i8 = u7.f2675e;
        u7.f2675e = i8 + 1;
        int i9 = u7.f2674d;
        u7.f2674d = i9 + 1;
        Bundle bundle = new Bundle();
        bundle.putString("memberRouteId", this.f2682f);
        u7.b(11, i9, i8, null, bundle);
        u7.f2678h.put(i9, x7);
        this.f2687k = i8;
        if (this.f2683g) {
            u7.a(i8);
            int i10 = this.f2684h;
            if (i10 >= 0) {
                u7.c(this.f2687k, i10);
                this.f2684h = -1;
            }
            int i11 = this.f2685i;
            if (i11 != 0) {
                u7.d(this.f2687k, i11);
                this.f2685i = 0;
            }
        }
    }

    @Override // E1.AbstractC0178m
    public final void d() {
        a0 a0Var = this.f2688l;
        a0Var.f2700k.remove(this);
        b();
        a0Var.m();
    }

    @Override // E1.AbstractC0178m
    public final void e() {
        this.f2683g = true;
        U u7 = this.f2686j;
        if (u7 != null) {
            u7.a(this.f2687k);
        }
    }

    @Override // E1.AbstractC0178m
    public final void f(int i8) {
        U u7 = this.f2686j;
        if (u7 != null) {
            u7.c(this.f2687k, i8);
        } else {
            this.f2684h = i8;
            this.f2685i = 0;
        }
    }

    @Override // E1.AbstractC0178m
    public final void g() {
        h(0);
    }

    @Override // E1.AbstractC0178m
    public final void h(int i8) {
        this.f2683g = false;
        U u7 = this.f2686j;
        if (u7 != null) {
            int i9 = this.f2687k;
            Bundle bundle = new Bundle();
            bundle.putInt("unselectReason", i8);
            int i10 = u7.f2674d;
            u7.f2674d = i10 + 1;
            u7.b(6, i10, i9, null, bundle);
        }
    }

    @Override // E1.AbstractC0178m
    public final void i(int i8) {
        U u7 = this.f2686j;
        if (u7 != null) {
            u7.d(this.f2687k, i8);
        } else {
            this.f2685i += i8;
        }
    }
}
