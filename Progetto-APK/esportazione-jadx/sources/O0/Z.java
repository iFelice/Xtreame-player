package O0;

import okhttp3.HttpUrl;
import p094m0.g0;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final class Z {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Z f5181d = new Z(new g0[0]);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f5182a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final d0 f5183b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5184c;

    static {
        p117p0.M.L(0);
    }

    public Z(g0... g0VarArr) {
        this.f5183b = z4.H.t(g0VarArr);
        this.f5182a = g0VarArr.length;
        int i8 = 0;
        while (true) {
            d0 d0Var = this.f5183b;
            if (i8 >= d0Var.size()) {
                return;
            }
            int i9 = i8 + 1;
            for (int i10 = i9; i10 < d0Var.size(); i10++) {
                if (((g0) d0Var.get(i8)).equals(d0Var.get(i10))) {
                    p117p0.x.d("TrackGroupArray", HttpUrl.FRAGMENT_ENCODE_SET, new IllegalArgumentException("Multiple identical TrackGroups added to one TrackGroupArray."));
                }
            }
            i8 = i9;
        }
    }

    public final g0 a(int i8) {
        return (g0) this.f5183b.get(i8);
    }

    public final int b(g0 g0Var) {
        int iIndexOf = this.f5183b.indexOf(g0Var);
        if (iIndexOf >= 0) {
            return iIndexOf;
        }
        return -1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Z.class != obj.getClass()) {
            return false;
        }
        Z z7 = (Z) obj;
        return this.f5182a == z7.f5182a && this.f5183b.equals(z7.f5183b);
    }

    public final int hashCode() {
        if (this.f5184c == 0) {
            this.f5184c = this.f5183b.hashCode();
        }
        return this.f5184c;
    }

    public final String toString() {
        return this.f5183b.toString();
    }
}
