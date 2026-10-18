package p104n2;

import android.content.ComponentName;
import android.content.Context;
import android.util.Log;
import p027d2.n;

/* JADX INFO: loaded from: classes.dex */
public abstract class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f27449a = n.f("PackageManagerHelper");

    public static void a(Context context, Class cls, boolean z7) {
        String str = f27449a;
        try {
            context.getPackageManager().setComponentEnabledSetting(new ComponentName(context, cls.getName()), z7 ? 1 : 2, 1);
            n nVarD = n.d();
            StringBuilder sb = new StringBuilder();
            sb.append(cls.getName());
            sb.append(" ");
            sb.append(z7 ? "enabled" : "disabled");
            nVarD.a(str, sb.toString());
        } catch (Exception e8) {
            n nVarD2 = n.d();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(cls.getName());
            sb2.append("could not be ");
            sb2.append(z7 ? "enabled" : "disabled");
            String string = sb2.toString();
            if (nVarD2.f24643a <= 3) {
                Log.d(str, string, e8);
            }
        }
    }
}
