package p094m0;

import android.net.Uri;
import com.google.protobuf.U2;
import java.util.Arrays;
import java.util.Objects;
import java.util.UUID;
import p117p0.M;
import z4.H;
import z4.J;

/* JADX INFO: loaded from: classes.dex */
public final class B {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UUID f26659a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Uri f26660b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final J f26661c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f26662d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f26663e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final H f26664f;

    static {
        U2.r(0, 1, 2, 3, 4);
        M.L(5);
        M.L(6);
        M.L(7);
    }

    public B(A a8) {
        a8.getClass();
        throw null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof B)) {
            return false;
        }
        B b8 = (B) obj;
        return this.f26659a.equals(b8.f26659a) && Objects.equals(this.f26660b, b8.f26660b) && Objects.equals(this.f26661c, b8.f26661c) && this.f26663e == b8.f26663e && this.f26662d == b8.f26662d && this.f26664f.equals(b8.f26664f) && Arrays.equals((byte[]) null, (byte[]) null);
    }

    public final int hashCode() {
        int iHashCode = this.f26659a.hashCode() * 31;
        Uri uri = this.f26660b;
        return Arrays.hashCode((byte[]) null) + ((this.f26664f.hashCode() + ((((((this.f26661c.hashCode() + ((iHashCode + (uri != null ? uri.hashCode() : 0)) * 31)) * 961) + (this.f26663e ? 1 : 0)) * 31) + (this.f26662d ? 1 : 0)) * 31)) * 31);
    }
}
