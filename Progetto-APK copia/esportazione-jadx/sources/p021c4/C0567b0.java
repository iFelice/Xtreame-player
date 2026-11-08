package p021c4;

import Q3.c;
import com.google.android.gms.internal.measurement.U1;

/* JADX INFO: renamed from: c4.b0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0567b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0597l0 f11124a;

    public C0567b0(A1 a8) {
        this.f11124a = a8.f10663R;
    }

    public final boolean a() {
        C0597l0 c0597l0 = this.f11124a;
        try {
            U1 u1A = c.a(c0597l0.f11250G);
            if (u1A != null) {
                return u1A.c(128, "com.android.vending").versionCode >= 80837300;
            }
            T t7 = c0597l0.f11258O;
            C0597l0.k(t7);
            t7.f11047T.a("Failed to get PackageManager for Install Referrer Play Store compatibility check");
            return false;
        } catch (Exception e8) {
            T t8 = c0597l0.f11258O;
            C0597l0.k(t8);
            t8.f11047T.b(e8, "Failed to retrieve Play Store version for Install Referrer");
            return false;
        }
    }
}
