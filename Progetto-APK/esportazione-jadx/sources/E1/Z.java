package E1;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public final class Z extends AbstractC0178m implements V {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f2689a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f2690b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f2691c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2692d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2693e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public U f2694f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f2695g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ a0 f2696h;

    public Z(a0 a0Var, String str, String str2) {
        this.f2696h = a0Var;
        this.f2689a = str;
        this.f2690b = str2;
    }

    @Override // E1.V
    public final int a() {
        return this.f2695g;
    }

    @Override // E1.V
    public final void b() {
        U u7 = this.f2694f;
        if (u7 != null) {
            int i8 = this.f2695g;
            int i9 = u7.f2674d;
            u7.f2674d = i9 + 1;
            u7.b(4, i9, i8, null, null);
            this.f2694f = null;
            this.f2695g = 0;
        }
    }

    @Override // E1.V
    public final void c(U u7) {
        this.f2694f = u7;
        int i8 = u7.f2675e;
        u7.f2675e = i8 + 1;
        Bundle bundle = new Bundle();
        bundle.putString("routeId", this.f2689a);
        bundle.putString("routeGroupId", this.f2690b);
        int i9 = u7.f2674d;
        u7.f2674d = i9 + 1;
        u7.b(3, i9, i8, null, bundle);
        this.f2695g = i8;
        if (this.f2691c) {
            u7.a(i8);
            int i10 = this.f2692d;
            if (i10 >= 0) {
                u7.c(this.f2695g, i10);
                this.f2692d = -1;
            }
            int i11 = this.f2693e;
            if (i11 != 0) {
                u7.d(this.f2695g, i11);
                this.f2693e = 0;
            }
        }
    }

    @Override // E1.AbstractC0178m
    public final void d() {
        a0 a0Var = this.f2696h;
        a0Var.f2700k.remove(this);
        b();
        a0Var.m();
    }

    @Override // E1.AbstractC0178m
    public final void e() {
        this.f2691c = true;
        U u7 = this.f2694f;
        if (u7 != null) {
            u7.a(this.f2695g);
        }
    }

    @Override // E1.AbstractC0178m
    public final void f(int i8) {
        U u7 = this.f2694f;
        if (u7 != null) {
            u7.c(this.f2695g, i8);
        } else {
            this.f2692d = i8;
            this.f2693e = 0;
        }
    }

    @Override // E1.AbstractC0178m
    public final void g() {
        h(0);
    }

    @Override // E1.AbstractC0178m
    public final void h(int i8) {
        this.f2691c = false;
        U u7 = this.f2694f;
        if (u7 != null) {
            int i9 = this.f2695g;
            Bundle bundle = new Bundle();
            bundle.putInt("unselectReason", i8);
            int i10 = u7.f2674d;
            u7.f2674d = i10 + 1;
            u7.b(6, i10, i9, null, bundle);
        }
    }

    @Override // E1.AbstractC0178m
    public final void i(int i8) {
        U u7 = this.f2694f;
        if (u7 != null) {
            u7.d(this.f2695g, i8);
        } else {
            this.f2693e += i8;
        }
    }
}
