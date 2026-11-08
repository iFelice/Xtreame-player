package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.o5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1757o5 extends AbstractCallableC2016t5 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static volatile String f20232h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Object f20233i = new Object();

    public C1757o5(V4 v5, V3 v7, int i8) {
        super(v5, "Cjpz94Jf9g0GnoeURiYkrUgpYgxkMbj/9b/+FncAnrZMhBxpDl2Bsri9U5qLhwFe", "7Ejn4kVFfkIwTENQCsQUmu0CsZi/nLRRU7QLVgsNDkU=", v7, i8, 1);
    }

    @Override // com.google.android.gms.internal.ads.AbstractCallableC2016t5
    public final void a() {
        V3 v5 = this.f21035d;
        v5.d();
        C1496j4.z0((C1496j4) v5.f20255H, "E");
        if (f20232h == null) {
            synchronized (f20233i) {
                try {
                    if (f20232h == null) {
                        f20232h = (String) this.f21036e.invoke(null, new Object[0]);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        synchronized (this.f21035d) {
            V3 v7 = this.f21035d;
            String str = f20232h;
            v7.d();
            C1496j4.z0((C1496j4) v7.f20255H, str);
        }
    }
}
