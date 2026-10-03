package D6;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a implements G6.a, Serializable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public transient G6.a f2422G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f2423H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Class f2424I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final String f2425J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final String f2426K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final boolean f2427L;

    public a(Object obj, Class cls, String str, String str2, boolean z7) {
        this.f2423H = obj;
        this.f2424I = cls;
        this.f2425J = str;
        this.f2426K = str2;
        this.f2427L = z7;
    }

    public final b a() {
        Class cls = this.f2424I;
        if (cls == null) {
            return null;
        }
        if (!this.f2427L) {
            return l.a(cls);
        }
        l.f2437a.getClass();
        return new i(cls);
    }
}
