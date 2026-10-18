package com.google.android.gms.internal.ads;

import android.app.AppOpsManager;
import android.content.Context;
import android.os.Build;
import java.util.concurrent.ExecutorService;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.b5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1085b5 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String[] f18012e = {"android:establish_vpn_service", "android:establish_vpn_manager"};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f18013a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f18014b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f18015c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f18016d;

    public static C1085b5 a(Context context, ExecutorService executorService) {
        String[] strArr = f18012e;
        C1085b5 c1085b5 = new C1085b5();
        c1085b5.f18013a = 0L;
        c1085b5.f18014b = 0L;
        c1085b5.f18015c = -1L;
        c1085b5.f18016d = false;
        if (Build.VERSION.SDK_INT >= 30) {
            try {
                ((AppOpsManager) context.getSystemService("appops")).startWatchingActive(strArr, executorService, new C1033a5(c1085b5));
            } catch (IllegalArgumentException | NoSuchMethodError unused) {
            }
        }
        return c1085b5;
    }
}
