package com.google.android.gms.internal.pal;

/* JADX INFO: loaded from: classes.dex */
public final class V6 extends S6 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final d7 f23678G = new d7();

    public final boolean equals(Object obj) {
        if (obj != this) {
            return (obj instanceof V6) && ((V6) obj).f23678G.equals(this.f23678G);
        }
        return true;
    }

    public final int hashCode() {
        return this.f23678G.hashCode();
    }

    public final S6 l(String str) {
        return (S6) this.f23678G.get(str);
    }
}
