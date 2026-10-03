package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.os.UserManager;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public abstract class K1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static UserManager f22949a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile boolean f22950b = !a();

    public static boolean a() {
        return Build.VERSION.SDK_INT >= 24;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x004e A[Catch: all -> 0x000f, TryCatch #1 {all -> 0x000f, blocks: (B:7:0x0009, B:9:0x000d, B:16:0x0017, B:18:0x001b, B:19:0x0023, B:32:0x004e, B:33:0x0050, B:22:0x0029, B:24:0x002f, B:28:0x003c, B:30:0x004a), top: B:39:0x0009, inners: #0 }] */
    public static boolean b(Context context) {
        if (f22950b) {
            return true;
        }
        synchronized (K1.class) {
            try {
                if (f22950b) {
                    return true;
                }
                int i8 = 1;
                while (true) {
                    boolean z7 = false;
                    if (i8 <= 2) {
                        if (f22949a == null) {
                            f22949a = (UserManager) context.getSystemService(UserManager.class);
                        }
                        UserManager userManager = f22949a;
                        if (userManager == null) {
                            z7 = true;
                        } else {
                            try {
                                if (userManager.isUserUnlocked() || !userManager.isUserRunning(Process.myUserHandle())) {
                                    z7 = true;
                                }
                            } catch (NullPointerException e8) {
                                Log.w("DirectBootUtils", "Failed to check if user is unlocked.", e8);
                                f22949a = null;
                                i8++;
                            }
                        }
                        if (z7) {
                            f22950b = true;
                        }
                        return z7;
                    }
                    if (z7) {
                        f22949a = null;
                    }
                    if (z7) {
                        f22950b = true;
                    }
                    return z7;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
