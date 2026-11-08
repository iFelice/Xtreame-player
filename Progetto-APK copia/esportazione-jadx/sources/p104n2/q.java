package p104n2;

import android.content.Context;
import android.os.PowerManager;
import p027d2.n;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public abstract class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f27459a;

    static {
        String strF = n.f("WakeLocks");
        q0.g(strF, "tagWithPrefix(\"WakeLocks\")");
        f27459a = strF;
    }

    public static final PowerManager.WakeLock a(Context context, String str) {
        q0.h(context, "context");
        q0.h(str, "tag");
        Object systemService = context.getApplicationContext().getSystemService("power");
        q0.f(systemService, "null cannot be cast to non-null type android.os.PowerManager");
        String strConcat = "WorkManager: ".concat(str);
        PowerManager.WakeLock wakeLockNewWakeLock = ((PowerManager) systemService).newWakeLock(1, strConcat);
        synchronized (r.f27460a) {
        }
        q0.g(wakeLockNewWakeLock, "wakeLock");
        return wakeLockNewWakeLock;
    }
}
