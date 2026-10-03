package p094m0;

import U4.b;
import p117p0.M;

/* JADX INFO: renamed from: m0.y, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public class C3141y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f27075a;

    static {
        new C3141y(new b());
        M.L(0);
        M.L(1);
        M.L(2);
        M.L(3);
        M.L(4);
        M.L(5);
        M.L(6);
        M.L(7);
    }

    public C3141y(b bVar) {
        bVar.getClass();
        String str = M.f28050a;
        this.f27075a = Long.MIN_VALUE;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3141y)) {
            return false;
        }
        C3141y c3141y = (C3141y) obj;
        c3141y.getClass();
        return this.f27075a == c3141y.f27075a;
    }

    public final int hashCode() {
        long j8 = this.f27075a;
        return ((((int) 0) * 31) + ((int) (j8 ^ (j8 >>> 32)))) * 923521;
    }
}
