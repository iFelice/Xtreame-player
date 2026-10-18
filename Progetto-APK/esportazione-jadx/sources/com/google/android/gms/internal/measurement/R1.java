package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.net.Uri;
import android.os.Build;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public abstract class R1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile p190y4.j f22988a = p190y4.a.f31418G;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Object f22989b = new Object();

    /* JADX WARN: Code duplicated, block: B:29:0x0079 A[Catch: all -> 0x004b, TRY_LEAVE, TryCatch #1 {all -> 0x004b, blocks: (B:12:0x0035, B:14:0x003d, B:15:0x0049, B:19:0x004d, B:21:0x0059, B:25:0x0069, B:27:0x006f, B:34:0x008a, B:35:0x0095, B:29:0x0079, B:30:0x007d, B:31:0x0083), top: B:43:0x0035 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x0089  */
    public static boolean a(Context context, Uri uri) {
        String authority = uri.getAuthority();
        boolean z7 = false;
        if (!"com.google.android.gms.phenotype".equals(authority)) {
            Log.e("PhenotypeClientHelper", String.valueOf(authority).concat(" is an unsupported authority. Only com.google.android.gms.phenotype authority is supported."));
            return false;
        }
        if (f22988a.b()) {
            return ((Boolean) f22988a.a()).booleanValue();
        }
        synchronized (f22989b) {
            try {
                if (f22988a.b()) {
                    return ((Boolean) f22988a.a()).booleanValue();
                }
                if (!"com.google.android.gms".equals(context.getPackageName())) {
                    ProviderInfo providerInfoResolveContentProvider = context.getPackageManager().resolveContentProvider("com.google.android.gms.phenotype", Build.VERSION.SDK_INT < 29 ? 0 : 268435456);
                    if (providerInfoResolveContentProvider != null && "com.google.android.gms".equals(providerInfoResolveContentProvider.packageName)) {
                        try {
                            if ((context.getPackageManager().getApplicationInfo("com.google.android.gms", 0).flags & 129) != 0) {
                                z7 = true;
                            }
                        } catch (PackageManager.NameNotFoundException unused) {
                        }
                    }
                } else if ((context.getPackageManager().getApplicationInfo("com.google.android.gms", 0).flags & 129) != 0) {
                    z7 = true;
                }
                f22988a = new p190y4.n(Boolean.valueOf(z7));
                return ((Boolean) f22988a.a()).booleanValue();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
