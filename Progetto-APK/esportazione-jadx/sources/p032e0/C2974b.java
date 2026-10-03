package p032e0;

import java.lang.reflect.Method;

/* JADX INFO: renamed from: e0.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2974b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f24733a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Method f24734b;

    public C2974b(Method method, int i8) {
        this.f24733a = i8;
        this.f24734b = method;
        method.setAccessible(true);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2974b)) {
            return false;
        }
        C2974b c2974b = (C2974b) obj;
        return this.f24733a == c2974b.f24733a && this.f24734b.getName().equals(c2974b.f24734b.getName());
    }

    public final int hashCode() {
        return this.f24734b.getName().hashCode() + (this.f24733a * 31);
    }
}
