package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import java.util.List;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.a8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1036a8 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public p109o.j f17837a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public p109o.e f17838b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public RJ f17839c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public p004a3.b f17840d;

    public static boolean a(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://www.example.com"));
            ResolveInfo resolveInfoResolveActivity = packageManager.resolveActivity(intent, 0);
            List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
            if (listQueryIntentActivities != null && resolveInfoResolveActivity != null) {
                for (int i8 = 0; i8 < listQueryIntentActivities.size(); i8++) {
                    if (resolveInfoResolveActivity.activityInfo.name.equals(listQueryIntentActivities.get(i8).activityInfo.name)) {
                        return resolveInfoResolveActivity.activityInfo.packageName.equals(Cw.m0(context));
                    }
                }
            }
        }
        return false;
    }
}
