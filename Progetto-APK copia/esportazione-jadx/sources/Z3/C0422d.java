package Z3;

import p086l.C3061x;

/* JADX INFO: renamed from: Z3.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0422d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0421c f8303a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public C0435q f8304b;

    public /* synthetic */ C0422d(C0421c c0421c) {
        this.f8303a = c0421c;
    }

    public final C3061x a() {
        C0435q c0435q = this.f8304b;
        if (c0435q == null) {
            throw new IllegalStateException(String.valueOf(C0435q.class.getCanonicalName()).concat(" must be set"));
        }
        C3061x c3061x = new C3061x();
        C0421c c0421c = this.f8303a;
        c3061x.f26410G = c0421c;
        X xA = V.a(new C0424f(c0421c.f8294b, 3));
        c3061x.f26411H = xA;
        if (c0435q == null) {
            throw new NullPointerException("instance cannot be null");
        }
        O1.J j8 = new O1.J(c0435q, 3);
        c3061x.f26412I = j8;
        U u7 = new U();
        c3061x.f26413J = u7;
        C0421c c0421c2 = (C0421c) c3061x.f26410G;
        O1.J j9 = c0421c2.f8294b;
        X x7 = xA;
        X x8 = c0421c2.f8298f;
        C0426h c0426h = c0421c2.f8299g;
        X x9 = c0421c2.f8295c;
        C0441x c0441x = new C0441x(j9, x7, x8, c0426h, u7, x9);
        c3061x.f26414K = c0441x;
        C0437t c0437t = new C0437t(x7, c0441x);
        c3061x.f26415L = c0437t;
        X xA2 = V.a(new C3061x(j9, c0421c2.f8296d, x7, x9, j8, c0437t));
        if (u7.f8279G != null) {
            throw new IllegalStateException();
        }
        u7.f8279G = xA2;
        return c3061x;
    }
}
