package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.InstallSourceInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.au, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1073au implements InterfaceC2108uu, InterfaceC2056tu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ApplicationInfo f17993a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PackageInfo f17994b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f17995c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C0693Cn f17996d;

    public C1073au(ApplicationInfo applicationInfo, PackageInfo packageInfo, Context context, C0693Cn c0693Cn) {
        this.f17993a = applicationInfo;
        this.f17994b = packageInfo;
        this.f17995c = context;
        this.f17996d = c0693Cn;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2056tu
    public final void a(Object obj) {
        Context context = this.f17995c;
        Bundle bundle = (Bundle) obj;
        ApplicationInfo applicationInfo = this.f17993a;
        String str = applicationInfo.packageName;
        PackageInfo packageInfo = this.f17994b;
        Integer numValueOf = packageInfo == null ? null : Integer.valueOf(packageInfo.versionCode);
        bundle.putString("pn", str);
        C0693Cn c0693Cn = this.f17996d;
        if (numValueOf != null) {
            bundle.putInt("vc", numValueOf.intValue());
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15780a2)).booleanValue()) {
                c0693Cn.a("vc", numValueOf.toString());
            }
        }
        String str2 = packageInfo != null ? packageInfo.versionName : null;
        if (str2 != null) {
            bundle.putString("vnm", str2);
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15780a2)).booleanValue()) {
                c0693Cn.a("vn", str2);
            }
        }
        try {
            String str3 = applicationInfo.packageName;
            p113o3.J j8 = p113o3.O.f27924l;
            Context context2 = Q3.c.a(context).f23010G;
            bundle.putString("dl", String.valueOf(context2.getPackageManager().getApplicationLabel(context2.getPackageManager().getApplicationInfo(str3, 0))));
        } catch (PackageManager.NameNotFoundException unused) {
        }
        if (Build.VERSION.SDK_INT >= 30) {
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.Yb)).booleanValue()) {
                try {
                    InstallSourceInfo installSourceInfo = context.getPackageManager().getInstallSourceInfo(str);
                    if (installSourceInfo == null) {
                        return;
                    }
                    String installingPackageName = installSourceInfo.getInstallingPackageName();
                    if (TextUtils.isEmpty(installingPackageName)) {
                        p113o3.I.k("No installing package name found");
                    } else {
                        bundle.putString("ins_pn", installingPackageName);
                    }
                    String initiatingPackageName = installSourceInfo.getInitiatingPackageName();
                    if (TextUtils.isEmpty(initiatingPackageName)) {
                        p113o3.I.k("No initiating package name found");
                    } else {
                        bundle.putString("ini_pn", initiatingPackageName);
                    }
                } catch (PackageManager.NameNotFoundException e8) {
                    p083k3.l.f25980A.f25987g.i("PackageInfoSignalsource.compose", e8);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final int zza() {
        return 29;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final D4.b zzb() {
        return Cw.N1(this);
    }
}
