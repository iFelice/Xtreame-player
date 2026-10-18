package p117p0;

import p094m0.C3134q;

/* JADX INFO: loaded from: classes.dex */
public final class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f28122a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public C3134q f28123b = new C3134q(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f28124c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f28125d;

    public w(Object obj) {
        this.f28122a = obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || w.class != obj.getClass()) {
            return false;
        }
        return this.f28122a.equals(((w) obj).f28122a);
    }

    public final int hashCode() {
        return this.f28122a.hashCode();
    }
}
