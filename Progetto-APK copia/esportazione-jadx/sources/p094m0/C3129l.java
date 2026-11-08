package p094m0;

import com.google.android.gms.internal.ads.CO;
import com.google.android.gms.internal.measurement.H1;
import java.util.Objects;
import p117p0.M;

/* JADX INFO: renamed from: m0.l, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3129l {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ int f26943e = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f26944a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f26945b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f26946c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f26947d;

    static {
        CO co = new CO(0, 1);
        H1.d(co.f12629b <= co.f12630c);
        new C3129l(co);
        M.L(0);
        M.L(1);
        M.L(2);
        M.L(3);
    }

    public C3129l(CO co) {
        this.f26944a = co.f12628a;
        this.f26945b = co.f12629b;
        this.f26946c = co.f12630c;
        this.f26947d = (String) co.f12631d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3129l)) {
            return false;
        }
        C3129l c3129l = (C3129l) obj;
        return this.f26944a == c3129l.f26944a && this.f26945b == c3129l.f26945b && this.f26946c == c3129l.f26946c && Objects.equals(this.f26947d, c3129l.f26947d);
    }

    public final int hashCode() {
        int i8 = (((((527 + this.f26944a) * 31) + this.f26945b) * 31) + this.f26946c) * 31;
        String str = this.f26947d;
        return i8 + (str == null ? 0 : str.hashCode());
    }
}
