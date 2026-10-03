package Q5;

import A0.O;
import android.content.SharedPreferences;
import android.util.Log;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public SharedPreferences f6038a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Map f6039b;

    public static void d(String str, String str2, ClassCastException classCastException) {
        Log.e("PowerPreference", O.C("The value of {", str, "} key is not a ", str2, "."), classCastException);
    }

    public final boolean a(String str, boolean z7) {
        try {
            return this.f6038a.getBoolean(str, z7);
        } catch (ClassCastException e8) {
            d(str, "Boolean", e8);
            return z7;
        }
    }

    public final int b(String str) {
        try {
            return this.f6038a.getInt(str, 0);
        } catch (ClassCastException e8) {
            d(str, "Int", e8);
            return 0;
        }
    }

    public final String c(String str, String str2) {
        try {
            return this.f6038a.getString(str, str2);
        } catch (ClassCastException e8) {
            d(str, "String", e8);
            return str2;
        }
    }

    public final a e(String str, boolean z7) {
        this.f6038a.edit().putBoolean(str, z7).apply();
        return this;
    }

    public final a f(int i8, String str) {
        this.f6038a.edit().putInt(str, i8).apply();
        return this;
    }

    public final a g(String str, String str2) {
        this.f6038a.edit().putString(str, str2).apply();
        return this;
    }
}
