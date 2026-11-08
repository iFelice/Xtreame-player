package N;

import android.os.Build;
import android.view.View;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class h0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final i0 f4897b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final i0 f4898a;

    static {
        a0 y7;
        int i8 = Build.VERSION.SDK_INT;
        if (i8 >= 30) {
            y7 = new Z();
        } else {
            y7 = i8 >= 29 ? new Y() : new X();
        }
        f4897b = y7.b().f4901a.a().f4901a.b().f4901a.c();
    }

    public h0(i0 i0Var) {
        this.f4898a = i0Var;
    }

    public i0 a() {
        return this.f4898a;
    }

    public i0 b() {
        return this.f4898a;
    }

    public i0 c() {
        return this.f4898a;
    }

    public C0263l e() {
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h0)) {
            return false;
        }
        h0 h0Var = (h0) obj;
        return j() == h0Var.j() && i() == h0Var.i() && Objects.equals(g(), h0Var.g()) && Objects.equals(f(), h0Var.f()) && Objects.equals(e(), h0Var.e());
    }

    public G.b f() {
        return G.b.f3274e;
    }

    public G.b g() {
        return G.b.f3274e;
    }

    public i0 h(int i8, int i9, int i10, int i11) {
        return f4897b;
    }

    public int hashCode() {
        return Objects.hash(Boolean.valueOf(j()), Boolean.valueOf(i()), g(), f(), e());
    }

    public boolean i() {
        return false;
    }

    public boolean j() {
        return false;
    }

    public void d(View view) {
    }

    public void k(G.b[] bVarArr) {
    }

    public void l(i0 i0Var) {
    }

    public void m(G.b bVar) {
    }
}
