package E1;

import java.util.Collection;

/* JADX INFO: renamed from: E1.u, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0185u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ A f2806a;

    public C0185u(A a8, int i8) {
        if (i8 == 1) {
            this.f2806a = a8;
        } else if (i8 != 2) {
            this.f2806a = a8;
        } else {
            this.f2806a = a8;
        }
    }

    public final void a(AbstractC0177l abstractC0177l, C0173h c0173h, Collection collection) {
        A a8 = this.f2806a;
        if (abstractC0177l != a8.f2606w || c0173h == null) {
            if (abstractC0177l == a8.f2604u) {
                if (c0173h != null) {
                    a8.p(a8.f2603t, c0173h);
                }
                a8.f2603t.j(collection);
                return;
            }
            return;
        }
        E e8 = a8.f2605v.f2627a;
        String strD = c0173h.d();
        F f8 = new F(e8, strD, a8.b(e8, strD));
        f8.f(c0173h);
        if (a8.f2603t == f8) {
            return;
        }
        a8.i(a8, f8, a8.f2606w, 3, a8.f2605v, collection);
        a8.f2605v = null;
        a8.f2606w = null;
    }
}
