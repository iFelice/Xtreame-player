package N;

import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import java.util.Objects;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class i0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final i0 f4900b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final h0 f4901a;

    static {
        if (Build.VERSION.SDK_INT >= 30) {
            f4900b = g0.f4895l;
        } else {
            f4900b = h0.f4897b;
        }
    }

    public i0(WindowInsets windowInsets) {
        int i8 = Build.VERSION.SDK_INT;
        if (i8 >= 30) {
            this.f4901a = new g0(this, windowInsets);
            return;
        }
        if (i8 >= 29) {
            this.f4901a = new f0(this, windowInsets);
        } else if (i8 >= 28) {
            this.f4901a = new e0(this, windowInsets);
        } else {
            this.f4901a = new c0(this, windowInsets);
        }
    }

    public static G.b e(G.b bVar, int i8, int i9, int i10, int i11) {
        int iMax = Math.max(0, bVar.f3275a - i8);
        int iMax2 = Math.max(0, bVar.f3276b - i9);
        int iMax3 = Math.max(0, bVar.f3277c - i10);
        int iMax4 = Math.max(0, bVar.f3278d - i11);
        return (iMax == i8 && iMax2 == i9 && iMax3 == i10 && iMax4 == i11) ? bVar : G.b.a(iMax, iMax2, iMax3, iMax4);
    }

    public static i0 h(WindowInsets windowInsets, View view) {
        windowInsets.getClass();
        i0 i0Var = new i0(windowInsets);
        if (view != null && view.isAttachedToWindow()) {
            WeakHashMap weakHashMap = N.f4843a;
            i0 i0VarA = Build.VERSION.SDK_INT >= 23 ? F.a(view) : E.e(view);
            h0 h0Var = i0Var.f4901a;
            h0Var.l(i0VarA);
            h0Var.d(view.getRootView());
        }
        return i0Var;
    }

    public final int a() {
        return this.f4901a.g().f3278d;
    }

    public final int b() {
        return this.f4901a.g().f3275a;
    }

    public final int c() {
        return this.f4901a.g().f3277c;
    }

    public final int d() {
        return this.f4901a.g().f3276b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i0)) {
            return false;
        }
        return Objects.equals(this.f4901a, ((i0) obj).f4901a);
    }

    public final i0 f(int i8, int i9, int i10, int i11) {
        a0 y7;
        int i12 = Build.VERSION.SDK_INT;
        if (i12 >= 30) {
            y7 = new Z(this);
        } else {
            y7 = i12 >= 29 ? new Y(this) : new X(this);
        }
        y7.d(G.b.a(i8, i9, i10, i11));
        return y7.b();
    }

    public final WindowInsets g() {
        h0 h0Var = this.f4901a;
        if (h0Var instanceof b0) {
            return ((b0) h0Var).f4884c;
        }
        return null;
    }

    public final int hashCode() {
        h0 h0Var = this.f4901a;
        if (h0Var == null) {
            return 0;
        }
        return h0Var.hashCode();
    }

    public i0() {
        this.f4901a = new h0(this);
    }
}
