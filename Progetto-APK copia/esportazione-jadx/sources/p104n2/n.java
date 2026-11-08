package p104n2;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.util.Log;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.List;
import p027d2.b;
import p027d2.v;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public abstract class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f27450a;

    static {
        String strF = p027d2.n.f("ProcessUtils");
        q0.g(strF, "tagWithPrefix(\"ProcessUtils\")");
        f27450a = strF;
    }

    public static final boolean a(Context context, b bVar) {
        String strA;
        Object next;
        q0.h(context, "context");
        q0.h(bVar, "configuration");
        if (Build.VERSION.SDK_INT >= 28) {
            strA = a.f27425a.a();
        } else {
            strA = null;
            try {
                Method declaredMethod = Class.forName("android.app.ActivityThread", false, v.class.getClassLoader()).getDeclaredMethod("currentProcessName", new Class[0]);
                declaredMethod.setAccessible(true);
                Object objInvoke = declaredMethod.invoke(null, new Object[0]);
                q0.e(objInvoke);
                if (objInvoke instanceof String) {
                    strA = (String) objInvoke;
                } else {
                    int iMyPid = Process.myPid();
                    Object systemService = context.getSystemService("activity");
                    q0.f(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
                    List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) systemService).getRunningAppProcesses();
                    if (runningAppProcesses != null) {
                        Iterator<T> it = runningAppProcesses.iterator();
                        do {
                            if (!it.hasNext()) {
                                next = null;
                                break;
                            }
                            next = it.next();
                        } while (((ActivityManager.RunningAppProcessInfo) next).pid != iMyPid);
                        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = (ActivityManager.RunningAppProcessInfo) next;
                        if (runningAppProcessInfo != null) {
                            strA = runningAppProcessInfo.processName;
                        }
                    }
                }
            } catch (Throwable th) {
                if (p027d2.n.d().f24643a <= 3) {
                    Log.d(f27450a, "Unable to check ActivityThread for processName", th);
                }
            }
        }
        return q0.c(strA, context.getApplicationInfo().processName);
    }
}
