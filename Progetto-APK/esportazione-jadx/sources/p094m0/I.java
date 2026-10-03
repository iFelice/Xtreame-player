package p094m0;

import android.net.Uri;
import java.util.Objects;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class I {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f26701a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final E f26702b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final D f26703c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final L f26704d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final C3142z f26705e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final F f26706f;

    static {
        new C3140x().a();
        M.L(0);
        M.L(1);
        M.L(2);
        M.L(3);
        M.L(4);
        M.L(5);
    }

    public I(String str, C3142z c3142z, E e8, D d6, L l4, F f8) {
        this.f26701a = str;
        this.f26702b = e8;
        this.f26703c = d6;
        this.f26704d = l4;
        this.f26705e = c3142z;
        this.f26706f = f8;
    }

    public static I a(Uri uri) {
        C3140x c3140x = new C3140x();
        c3140x.f27067b = uri;
        return c3140x.a();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof I)) {
            return false;
        }
        I i8 = (I) obj;
        return Objects.equals(this.f26701a, i8.f26701a) && this.f26705e.equals(i8.f26705e) && Objects.equals(this.f26702b, i8.f26702b) && Objects.equals(this.f26703c, i8.f26703c) && Objects.equals(this.f26704d, i8.f26704d) && Objects.equals(this.f26706f, i8.f26706f);
    }

    public final int hashCode() {
        int iHashCode = this.f26701a.hashCode() * 31;
        E e8 = this.f26702b;
        return this.f26706f.hashCode() + ((this.f26704d.hashCode() + ((this.f26705e.hashCode() + ((this.f26703c.hashCode() + ((iHashCode + (e8 != null ? e8.hashCode() : 0)) * 31)) * 31)) * 31)) * 31);
    }
}
