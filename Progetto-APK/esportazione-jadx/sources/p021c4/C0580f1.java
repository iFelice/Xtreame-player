package p021c4;

import E1.I;
import android.content.pm.PackageManager;
import android.os.SystemClock;
import android.util.Pair;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.HashMap;
import java.util.Locale;
import okhttp3.HttpUrl;
import p075j3.a;
import p075j3.b;

/* JADX INFO: renamed from: c4.f1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0580f1 extends u1 {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final HashMap f11182J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final I f11183K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final I f11184L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final I f11185M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final I f11186N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final I f11187O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final I f11188P;

    public C0580f1(A1 a8) {
        super(a8);
        this.f11182J = new HashMap();
        Z z7 = ((C0597l0) this.f10616G).f11257N;
        C0597l0.i(z7);
        this.f11183K = new I(z7, "last_delete_stale", 0L);
        Z z8 = ((C0597l0) this.f10616G).f11257N;
        C0597l0.i(z8);
        this.f11184L = new I(z8, "last_delete_stale_batch", 0L);
        Z z9 = ((C0597l0) this.f10616G).f11257N;
        C0597l0.i(z9);
        this.f11185M = new I(z9, "backoff", 0L);
        Z z10 = ((C0597l0) this.f10616G).f11257N;
        C0597l0.i(z10);
        this.f11186N = new I(z10, "last_upload", 0L);
        Z z11 = ((C0597l0) this.f10616G).f11257N;
        C0597l0.i(z11);
        this.f11187O = new I(z11, "last_upload_attempt", 0L);
        Z z12 = ((C0597l0) this.f10616G).f11257N;
        C0597l0.i(z12);
        this.f11188P = new I(z12, "midnight_offset", 0L);
    }

    @Override // p021c4.u1
    public final boolean p() {
        return false;
    }

    public final Pair q(String str) {
        C0577e1 c0577e1;
        a aVarA;
        m();
        C0597l0 c0597l0 = (C0597l0) this.f10616G;
        c0597l0.f11263T.getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        HashMap map = this.f11182J;
        C0577e1 c0577e2 = (C0577e1) map.get(str);
        if (c0577e2 != null && jElapsedRealtime < c0577e2.f11159c) {
            return new Pair(c0577e2.f11157a, Boolean.valueOf(c0577e2.f11158b));
        }
        long jW = c0597l0.f11256M.w(str, E.f10767b) + jElapsedRealtime;
        try {
            try {
                aVarA = b.a(c0597l0.f11250G);
            } catch (PackageManager.NameNotFoundException unused) {
                aVarA = null;
                if (c0577e2 != null && jElapsedRealtime < c0577e2.f11159c + ((C0597l0) this.f10616G).f11256M.w(str, E.f10770c)) {
                    return new Pair(c0577e2.f11157a, Boolean.valueOf(c0577e2.f11158b));
                }
            }
            if (aVarA == null) {
                return new Pair("00000000-0000-0000-0000-000000000000", Boolean.FALSE);
            }
            String str2 = aVarA.f25695a;
            boolean z7 = aVarA.f25696b;
            c0577e1 = str2 != null ? new C0577e1(jW, str2, z7) : new C0577e1(jW, HttpUrl.FRAGMENT_ENCODE_SET, z7);
            map.put(str, c0577e1);
            return new Pair(c0577e1.f11157a, Boolean.valueOf(c0577e1.f11158b));
        } catch (Exception e8) {
            T t7 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t7);
            t7.f11046S.b(e8, "Unable to get advertising id");
            c0577e1 = new C0577e1(jW, HttpUrl.FRAGMENT_ENCODE_SET, false);
        }
    }

    public final String r(String str, boolean z7) {
        m();
        String str2 = z7 ? (String) q(str).first : "00000000-0000-0000-0000-000000000000";
        MessageDigest messageDigestX = I1.x();
        if (messageDigestX == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new BigInteger(1, messageDigestX.digest(str2.getBytes())));
    }
}
