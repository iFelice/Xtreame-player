package J;

import D.q;
import android.os.Build;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final g f4052b = a(new Locale[0]);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final i f4053a;

    public g(i iVar) {
        this.f4053a = iVar;
    }

    public static g a(Locale... localeArr) {
        return Build.VERSION.SDK_INT >= 24 ? new g(new j(q.b(localeArr))) : new g(new h(localeArr));
    }

    public static g b(String str) {
        if (str == null || str.isEmpty()) {
            return f4052b;
        }
        String[] strArrSplit = str.split(",", -1);
        int length = strArrSplit.length;
        Locale[] localeArr = new Locale[length];
        for (int i8 = 0; i8 < length; i8++) {
            String str2 = strArrSplit[i8];
            int i9 = f.f4051a;
            localeArr[i8] = Locale.forLanguageTag(str2);
        }
        return a(localeArr);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof g) {
            if (this.f4053a.equals(((g) obj).f4053a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f4053a.hashCode();
    }

    public final String toString() {
        return this.f4053a.toString();
    }
}
