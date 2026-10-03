package p094m0;

import java.util.Objects;
import p117p0.M;

/* JADX INFO: renamed from: m0.w, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3139w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f27060a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f27061b;

    static {
        M.L(0);
        M.L(1);
    }

    public C3139w(String str, String str2) {
        this.f27060a = M.S(str);
        this.f27061b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C3139w.class != obj.getClass()) {
            return false;
        }
        C3139w c3139w = (C3139w) obj;
        return Objects.equals(this.f27060a, c3139w.f27060a) && Objects.equals(this.f27061b, c3139w.f27061b);
    }

    public final int hashCode() {
        int iHashCode = this.f27061b.hashCode() * 31;
        String str = this.f27060a;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }
}
