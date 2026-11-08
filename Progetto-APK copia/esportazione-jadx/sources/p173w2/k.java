package p173w2;

import U4.b;
import android.text.TextUtils;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final b f30995e = new b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f30996a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final j f30997b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f30998c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public volatile byte[] f30999d;

    public k(String str, Object obj, j jVar) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Must not be null or empty");
        }
        this.f30998c = str;
        this.f30996a = obj;
        this.f30997b = jVar;
    }

    public static k a(Object obj, String str) {
        return new k(str, obj, f30995e);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof k) {
            return this.f30998c.equals(((k) obj).f30998c);
        }
        return false;
    }

    public final int hashCode() {
        return this.f30998c.hashCode();
    }

    public final String toString() {
        return r.j(new StringBuilder("Option{key='"), this.f30998c, "'}");
    }
}
