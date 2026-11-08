package p094m0;

import p117p0.M;
import z4.F;
import z4.H;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final class m0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final m0 f26958b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final H f26959a;

    static {
        F f8 = H.f31804H;
        f26958b = new m0(d0.f31844K);
        M.L(0);
    }

    public m0(d0 d0Var) {
        this.f26959a = H.s(d0Var);
    }

    public final H a() {
        return this.f26959a;
    }

    public final boolean b(int i8) {
        int i9 = 0;
        while (true) {
            H h8 = this.f26959a;
            if (i9 >= h8.size()) {
                return false;
            }
            l0 l0Var = (l0) h8.get(i9);
            if (l0Var.b() && l0Var.a() == i8) {
                return true;
            }
            i9++;
        }
    }

    public final boolean c() {
        int i8 = 0;
        while (true) {
            H h8 = this.f26959a;
            if (i8 >= h8.size()) {
                return false;
            }
            if (((l0) h8.get(i8)).a() == 2 && ((l0) h8.get(i8)).c()) {
                return true;
            }
            i8++;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || m0.class != obj.getClass()) {
            return false;
        }
        return this.f26959a.equals(((m0) obj).f26959a);
    }

    public final int hashCode() {
        return this.f26959a.hashCode();
    }
}
