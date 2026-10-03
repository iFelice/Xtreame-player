package J;

import android.os.Build;
import java.util.Locale;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f4044a = 0;

    static {
        int i8 = Build.VERSION.SDK_INT;
        if (i8 >= 30) {
            H.a.b(30);
        }
        if (i8 >= 30) {
            H.a.b(31);
        }
        if (i8 >= 30) {
            H.a.b(33);
        }
        if (i8 >= 30) {
            H.a.b(1000000);
        }
    }

    public static final boolean a(String str, String str2) {
        if (q0.c("REL", str2)) {
            return false;
        }
        Locale locale = Locale.ROOT;
        String upperCase = str2.toUpperCase(locale);
        q0.g(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        String upperCase2 = str.toUpperCase(locale);
        q0.g(upperCase2, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        return upperCase.compareTo(upperCase2) >= 0;
    }

    public static final boolean b() {
        int i8 = Build.VERSION.SDK_INT;
        if (i8 < 35) {
            if (i8 >= 34) {
                String str = Build.VERSION.CODENAME;
                q0.g(str, "CODENAME");
                if (a("VanillaIceCream", str)) {
                }
            }
            return false;
        }
        return true;
    }
}
