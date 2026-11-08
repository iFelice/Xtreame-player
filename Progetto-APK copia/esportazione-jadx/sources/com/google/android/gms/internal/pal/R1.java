package com.google.android.gms.internal.pal;

/* JADX INFO: loaded from: classes.dex */
public final class R1 extends Y1 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static volatile String f23639h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Object f23640i = new Object();

    public R1(A1 a8, L4 l4, int i8) {
        super(a8, "Cv0JAL9ptzpRvgIi9AFTFGn0l5MhpPgpRN4VfZybymKMuiqBn9AG0bgJaX/QotAk", "/xONYRXeBwNZknPQ1yARx5KZSPQPbfL2mKAb1nbkf2s=", l4, i8, 1);
    }

    @Override // com.google.android.gms.internal.pal.Y1
    public final void a() {
        L4 l4 = this.f23701d;
        if (l4.f23476I) {
            l4.f();
            l4.f23476I = false;
        }
        C2765m0.f0((C2765m0) l4.f23475H, "E");
        if (f23639h == null) {
            synchronized (f23640i) {
                try {
                    if (f23639h == null) {
                        f23639h = (String) this.f23702e.invoke(null, new Object[0]);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        synchronized (this.f23701d) {
            L4 l8 = this.f23701d;
            String str = f23639h;
            if (l8.f23476I) {
                l8.f();
                l8.f23476I = false;
            }
            C2765m0.f0((C2765m0) l8.f23475H, str);
        }
    }
}
