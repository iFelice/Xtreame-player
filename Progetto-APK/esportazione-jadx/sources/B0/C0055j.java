package B0;

import android.text.TextUtils;
import com.google.android.gms.internal.measurement.H1;
import com.google.protobuf.U2;
import p094m0.C3136t;

/* JADX INFO: renamed from: B0.j, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0055j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f993a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C3136t f994b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C3136t f995c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f996d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f997e;

    public C0055j(String str, C3136t c3136t, C3136t c3136t2, int i8, int i9) {
        H1.d(i8 == 0 || i9 == 0);
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException();
        }
        this.f993a = str;
        c3136t.getClass();
        this.f994b = c3136t;
        c3136t2.getClass();
        this.f995c = c3136t2;
        this.f996d = i8;
        this.f997e = i9;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0055j.class != obj.getClass()) {
            return false;
        }
        C0055j c0055j = (C0055j) obj;
        return this.f996d == c0055j.f996d && this.f997e == c0055j.f997e && this.f993a.equals(c0055j.f993a) && this.f994b.equals(c0055j.f994b) && this.f995c.equals(c0055j.f995c);
    }

    public final int hashCode() {
        return this.f995c.hashCode() + ((this.f994b.hashCode() + U2.e(this.f993a, (((527 + this.f996d) * 31) + this.f997e) * 31, 31)) * 31);
    }
}
