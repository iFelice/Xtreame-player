package C0;

import O0.C0300y;
import p094m0.e0;
import p094m0.f0;

/* JADX INFO: loaded from: classes.dex */
public final class B {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1235a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f1236b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f1237c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C0300y f1238d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f1239e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f1240f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ C f1241g;

    public B(C c8, String str, int i8, C0300y c0300y) {
        this.f1241g = c8;
        this.f1235a = str;
        this.f1236b = i8;
        this.f1237c = c0300y == null ? -1L : c0300y.f5260d;
        if (c0300y == null || !c0300y.b()) {
            return;
        }
        this.f1238d = c0300y;
    }

    public final boolean a(C0077b c0077b) {
        C0300y c0300y = c0077b.f1286d;
        if (c0300y == null) {
            return this.f1236b != c0077b.f1285c;
        }
        long j8 = this.f1237c;
        if (j8 == -1) {
            return false;
        }
        if (c0300y.f5260d > j8) {
            return true;
        }
        C0300y c0300y2 = this.f1238d;
        if (c0300y2 == null) {
            return false;
        }
        f0 f0Var = c0077b.f1284b;
        int iB = f0Var.b(c0300y.f5257a);
        int iB2 = f0Var.b(c0300y2.f5257a);
        if (c0300y.f5260d < c0300y2.f5260d || iB < iB2) {
            return false;
        }
        if (iB > iB2) {
            return true;
        }
        boolean zB = c0300y.b();
        int i8 = c0300y2.f5258b;
        if (!zB) {
            int i9 = c0300y.f5261e;
            return i9 == -1 || i9 > i8;
        }
        int i10 = c0300y.f5258b;
        if (i10 > i8) {
            return true;
        }
        if (i10 == i8) {
            if (c0300y.f5259c > c0300y2.f5259c) {
                return true;
            }
        }
        return false;
    }

    public final boolean b(f0 f0Var, f0 f0Var2) {
        int i8 = this.f1236b;
        if (i8 < f0Var.p()) {
            C c8 = this.f1241g;
            f0Var.o(i8, c8.f1244a);
            e0 e0Var = c8.f1244a;
            int i9 = e0Var.f26847n;
            while (true) {
                if (i9 > e0Var.f26848o) {
                    i8 = -1;
                    break;
                }
                int iB = f0Var2.b(f0Var.m(i9));
                if (iB != -1) {
                    i8 = f0Var2.g(iB, c8.f1245b, false).f26827c;
                    break;
                }
                i9++;
            }
        } else if (i8 >= f0Var2.p()) {
            i8 = -1;
            break;
        }
        this.f1236b = i8;
        if (i8 == -1) {
            return false;
        }
        C0300y c0300y = this.f1238d;
        return c0300y == null || f0Var2.b(c0300y.f5257a) != -1;
    }
}
