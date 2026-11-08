package p019c2;

import android.content.pm.PackageInfo;
import android.os.Build;
import java.lang.reflect.InvocationTargetException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p011b2.e;

/* JADX INFO: loaded from: classes.dex */
public final class l extends c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Pattern f10633d;

    public l() {
        super("ALGORITHMIC_DARKENING", "ALGORITHMIC_DARKENING");
        this.f10633d = Pattern.compile("\\A\\d+");
    }

    @Override // p019c2.c
    public final boolean a() {
        return Build.VERSION.SDK_INT >= 33;
    }

    @Override // p019c2.c
    public final boolean b() {
        int i8;
        PackageInfo packageInfoB;
        boolean zB = super.b();
        if (!zB || (i8 = Build.VERSION.SDK_INT) >= 29) {
            return zB;
        }
        int i9 = e.f9832a;
        if (i8 >= 26) {
            packageInfoB = d.a();
        } else {
            try {
                packageInfoB = e.b();
            } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                packageInfoB = null;
            }
        }
        if (packageInfoB == null) {
            return false;
        }
        Matcher matcher = this.f10633d.matcher(packageInfoB.versionName);
        return matcher.find() && Integer.parseInt(packageInfoB.versionName.substring(matcher.start(), matcher.end())) >= 105;
    }
}
