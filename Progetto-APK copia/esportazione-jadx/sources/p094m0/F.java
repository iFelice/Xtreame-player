package p094m0;

import android.net.Uri;
import android.os.Bundle;
import java.util.Objects;
import p096m2.u;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class F {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final F f26683d = new F(new u(13));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Uri f26684a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f26685b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Bundle f26686c;

    static {
        M.L(0);
        M.L(1);
        M.L(2);
    }

    public F(u uVar) {
        this.f26684a = (Uri) uVar.f27278H;
        this.f26685b = (String) uVar.f27279I;
        this.f26686c = (Bundle) uVar.f27280J;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof F)) {
            return false;
        }
        F f8 = (F) obj;
        if (Objects.equals(this.f26684a, f8.f26684a) && Objects.equals(this.f26685b, f8.f26685b)) {
            if ((this.f26686c == null) == (f8.f26686c == null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        Uri uri = this.f26684a;
        int iHashCode = (uri == null ? 0 : uri.hashCode()) * 31;
        String str = this.f26685b;
        return ((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + (this.f26686c != null ? 1 : 0);
    }
}
