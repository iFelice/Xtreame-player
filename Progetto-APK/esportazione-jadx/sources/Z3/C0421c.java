package Z3;

import C2.C0091g;
import android.app.Application;
import android.content.Context;
import com.google.android.gms.internal.ads.C1093bD;

/* JADX INFO: renamed from: Z3.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0421c {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static C0421c f8292i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0421c f8293a = this;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final O1.J f8294b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final X f8295c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final X f8296d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final X f8297e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final X f8298f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final C0426h f8299g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final X f8300h;

    public C0421c(Application application) {
        if (application == null) {
            throw new NullPointerException("instance cannot be null");
        }
        O1.J j8 = new O1.J(application, 3);
        this.f8294b = j8;
        X xA = V.a(new C0424f(j8, 1));
        this.f8295c = xA;
        X xA2 = V.a(C.f8245b);
        this.f8296d = xA2;
        X xA3 = V.a(new C0424f(new C0091g(this, 27)));
        this.f8297e = xA3;
        e0 e0Var = new e0(j8, xA);
        X xA4 = V.a(new S3.g(12, 0));
        this.f8298f = xA4;
        C0426h c0426h = new C0426h(j8, xA, V.a(new C0432n(j8, V.a(new C0424f(j8, 0)))));
        this.f8299g = c0426h;
        this.f8300h = V.a(new C1093bD(xA, new h0(j8, xA2, xA, xA3, e0Var, new C0419a(xA4, c0426h, xA), xA4), xA3, 10));
    }

    public static C0421c a(Context context) {
        C0421c c0421c;
        synchronized (C0421c.class) {
            try {
                if (f8292i == null) {
                    Application application = (Application) context.getApplicationContext();
                    application.getClass();
                    f8292i = new C0421c(application);
                }
                c0421c = f8292i;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0421c;
    }
}
