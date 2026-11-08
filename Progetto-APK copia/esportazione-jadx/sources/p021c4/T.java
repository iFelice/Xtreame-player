package p021c4;

import Y.Y;
import android.text.TextUtils;
import android.util.Log;
import com.bumptech.glide.c;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class T extends AbstractC0610s0 {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public char f11036I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public long f11037J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public String f11038K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final Q f11039L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final Q f11040M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final Q f11041N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final Q f11042O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final Q f11043P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final Q f11044Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final Q f11045R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final Q f11046S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final Q f11047T;

    public T(C0597l0 c0597l0) {
        super(c0597l0);
        this.f11036I = (char) 0;
        this.f11037J = -1L;
        this.f11039L = new Q(this, 6, false, false);
        this.f11040M = new Q(this, 6, true, false);
        this.f11041N = new Q(this, 6, false, true);
        this.f11042O = new Q(this, 5, false, false);
        this.f11043P = new Q(this, 5, true, false);
        this.f11044Q = new Q(this, 5, false, true);
        this.f11045R = new Q(this, 4, false, false);
        this.f11046S = new Q(this, 3, false, false);
        this.f11047T = new Q(this, 2, false, false);
    }

    public static S t(String str) {
        if (str == null) {
            return null;
        }
        return new S(str);
    }

    public static String u(boolean z7, String str, Object obj, Object obj2, Object obj3) {
        String strW = w(obj, z7);
        String strW2 = w(obj2, z7);
        String strW3 = w(obj3, z7);
        StringBuilder sb = new StringBuilder();
        String str2 = HttpUrl.FRAGMENT_ENCODE_SET;
        if (str == null) {
            str = HttpUrl.FRAGMENT_ENCODE_SET;
        }
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
            str2 = ": ";
        }
        String str3 = ", ";
        if (!TextUtils.isEmpty(strW)) {
            sb.append(str2);
            sb.append(strW);
            str2 = ", ";
        }
        if (TextUtils.isEmpty(strW2)) {
            str3 = str2;
        } else {
            sb.append(str2);
            sb.append(strW2);
        }
        if (!TextUtils.isEmpty(strW3)) {
            sb.append(str3);
            sb.append(strW3);
        }
        return sb.toString();
    }

    public static String w(Object obj, boolean z7) {
        int iLastIndexOf;
        String className;
        int iLastIndexOf2;
        String str = HttpUrl.FRAGMENT_ENCODE_SET;
        if (obj == null) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        if (obj instanceof Integer) {
            obj = Long.valueOf(((Integer) obj).intValue());
        }
        if (obj instanceof Long) {
            if (!z7) {
                return obj.toString();
            }
            Long l4 = (Long) obj;
            if (Math.abs(l4.longValue()) < 100) {
                return obj.toString();
            }
            char cCharAt = obj.toString().charAt(0);
            String strValueOf = String.valueOf(Math.abs(l4.longValue()));
            long jRound = Math.round(Math.pow(10.0d, strValueOf.length() - 1));
            long jRound2 = Math.round(Math.pow(10.0d, strValueOf.length()) - 1.0d);
            StringBuilder sb = new StringBuilder();
            if (cCharAt == '-') {
                str = "-";
            }
            sb.append(str);
            sb.append(jRound);
            sb.append("...");
            sb.append(str);
            sb.append(jRound2);
            return sb.toString();
        }
        if (obj instanceof Boolean) {
            return obj.toString();
        }
        if (!(obj instanceof Throwable)) {
            if (obj instanceof S) {
                return ((S) obj).f11029a;
            }
            return z7 ? "-" : obj.toString();
        }
        Throwable th = (Throwable) obj;
        StringBuilder sb2 = new StringBuilder(z7 ? th.getClass().getName() : th.toString());
        String canonicalName = C0597l0.class.getCanonicalName();
        String strSubstring = (TextUtils.isEmpty(canonicalName) || (iLastIndexOf = canonicalName.lastIndexOf(46)) == -1) ? HttpUrl.FRAGMENT_ENCODE_SET : canonicalName.substring(0, iLastIndexOf);
        for (StackTraceElement stackTraceElement : th.getStackTrace()) {
            if (!stackTraceElement.isNativeMethod() && (className = stackTraceElement.getClassName()) != null) {
                if (((TextUtils.isEmpty(className) || (iLastIndexOf2 = className.lastIndexOf(46)) == -1) ? HttpUrl.FRAGMENT_ENCODE_SET : className.substring(0, iLastIndexOf2)).equals(strSubstring)) {
                    sb2.append(": ");
                    sb2.append(stackTraceElement);
                    break;
                }
            }
        }
        return sb2.toString();
    }

    @Override // p021c4.AbstractC0610s0
    public final boolean n() {
        return false;
    }

    public final Q q() {
        return this.f11039L;
    }

    public final Q r() {
        return this.f11047T;
    }

    public final Q s() {
        return this.f11042O;
    }

    public final String x() {
        String str;
        synchronized (this) {
            try {
                if (this.f11038K == null) {
                    Object obj = this.f10616G;
                    String str2 = ((C0597l0) obj).f11253J;
                    if (str2 != null) {
                        this.f11038K = str2;
                    } else {
                        ((C0597l0) ((C0597l0) obj).f11256M.f10616G).getClass();
                        this.f11038K = "FA";
                    }
                }
                c.h(this.f11038K);
                str = this.f11038K;
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }

    public final void y(int i8, boolean z7, boolean z8, String str, Object obj, Object obj2, Object obj3) {
        if (!z7 && Log.isLoggable(x(), i8)) {
            Log.println(i8, x(), u(false, str, obj, obj2, obj3));
        }
        if (z8 || i8 < 5) {
            return;
        }
        c.h(str);
        C0591j0 c0591j0 = ((C0597l0) this.f10616G).f11259P;
        if (c0591j0 == null) {
            Log.println(6, x(), "Scheduler not set. Not logging error/warn");
        } else if (c0591j0.f11367H) {
            c0591j0.x(new Y(this, i8 >= 9 ? 8 : i8, str, obj, obj2, obj3, 1));
        } else {
            Log.println(6, x(), "Scheduler not initialized. Not logging error/warn");
        }
    }
}
