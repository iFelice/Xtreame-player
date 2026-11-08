package p094m0;

import com.google.protobuf.U2;
import p039f.S;
import p117p0.M;

/* JADX INFO: renamed from: m0.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3121d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final C3121d f26823b = new C3121d();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public S f26824a;

    static {
        U2.r(0, 1, 2, 3, 4);
        M.L(5);
    }

    public final S a() {
        if (this.f26824a == null) {
            this.f26824a = new S(this, 0);
        }
        return this.f26824a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C3121d.class != obj.getClass()) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return -2092275855;
    }
}
