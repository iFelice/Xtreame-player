package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import java.util.Locale;
import p039f.AbstractC2987b;
import p090l3.C3097p;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Yc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1001Yc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f17610a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f17611b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f17612c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f17613d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f17614e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f17615f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f17616g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f17617h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f17618i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f17619j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final float f17620k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f17621l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f17622m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f17623n;

    /* JADX WARN: Code duplicated, block: B:12:0x0063  */
    public C1001Yc(Context context) {
        ActivityInfo activityInfo;
        String str;
        DisplayMetrics displayMetrics;
        PackageManager packageManager = context.getPackageManager();
        Q7.a(context);
        c(context);
        e(context);
        d(context);
        Locale locale = Locale.getDefault();
        this.f17612c = b(packageManager, "geo:0,0?q=donuts") != null;
        this.f17613d = b(packageManager, "http://www.google.com") != null;
        this.f17614e = locale.getCountry();
        p113o3.O o4 = p083k3.l.f25980A.f25983c;
        p120p3.d dVar = C3097p.f26618f.f26619a;
        this.f17615f = p120p3.d.m();
        this.f17616g = AbstractC2987b.u(context);
        this.f17617h = AbstractC2987b.i0(context);
        this.f17618i = locale.getLanguage();
        ResolveInfo resolveInfoB = b(packageManager, "market://details?id=com.google.android.gms.ads");
        String str2 = null;
        if (resolveInfoB == null || (activityInfo = resolveInfoB.activityInfo) == null) {
            str = null;
        } else {
            try {
                PackageInfo packageInfoC = Q3.c.a(context).c(0, activityInfo.packageName);
                if (packageInfoC != null) {
                    str = packageInfoC.versionCode + "." + activityInfo.packageName;
                } else {
                    str = null;
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        this.f17619j = str;
        try {
            PackageInfo packageInfoC2 = Q3.c.a(context).c(128, "com.android.vending");
            if (packageInfoC2 != null) {
                str2 = packageInfoC2.versionCode + "." + packageInfoC2.packageName;
            }
        } catch (Exception unused2) {
        }
        this.f17623n = str2;
        Resources resources = context.getResources();
        if (resources == null || (displayMetrics = resources.getDisplayMetrics()) == null) {
            return;
        }
        this.f17620k = displayMetrics.density;
        this.f17621l = displayMetrics.widthPixels;
        this.f17622m = displayMetrics.heightPixels;
    }

    public static ResolveInfo b(PackageManager packageManager, String str) {
        try {
            return packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)), 65536);
        } catch (Throwable th) {
            p083k3.l.f25980A.f25987g.i("DeviceInfo.getResolveInfo", th);
            return null;
        }
    }

    public final C1015Zc a() {
        return new C1015Zc(this.f17612c, this.f17613d, this.f17614e, this.f17615f, this.f17616g, this.f17617h, this.f17618i, this.f17619j, this.f17623n, this.f17610a, this.f17611b, this.f17620k, this.f17621l, this.f17622m);
    }

    public final void c(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager != null) {
            try {
                audioManager.getMode();
                audioManager.isMusicActive();
                audioManager.isSpeakerphoneOn();
                audioManager.getStreamVolume(3);
                audioManager.getRingerMode();
                audioManager.getStreamVolume(2);
            } catch (Throwable th) {
                p083k3.l.f25980A.f25987g.i("DeviceInfo.gatherAudioInfo", th);
            }
        }
    }

    public final void d(Context context) {
        IntentFilter intentFilter = new IntentFilter("android.intent.action.BATTERY_CHANGED");
        Intent intentRegisterReceiver = (!((Boolean) C3099q.f26624d.f26627c.a(Q7.na)).booleanValue() || Build.VERSION.SDK_INT < 33) ? context.registerReceiver(null, intentFilter) : context.registerReceiver(null, intentFilter, 4);
        if (intentRegisterReceiver != null) {
            intentRegisterReceiver.getIntExtra("status", -1);
            intentRegisterReceiver.getIntExtra("level", -1);
            intentRegisterReceiver.getIntExtra("scale", -1);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x002d  */
    public final void e(Context context) {
        int networkType;
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        telephonyManager.getNetworkOperator();
        if (U2.m.b()) {
            networkType = ((Boolean) C3099q.f26624d.f26627c.a(Q7.S7)).booleanValue() ? 0 : telephonyManager.getNetworkType();
        }
        this.f17611b = networkType;
        telephonyManager.getPhoneType();
        this.f17610a = -2;
        p113o3.O o4 = p083k3.l.f25980A.f25983c;
        if (p113o3.O.a(context, "android.permission.ACCESS_NETWORK_STATE")) {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                this.f17610a = activeNetworkInfo.getType();
                activeNetworkInfo.getDetailedState().ordinal();
            } else {
                this.f17610a = -1;
            }
            connectivityManager.isActiveNetworkMetered();
        }
    }

    public C1001Yc(Context context, C1015Zc c1015Zc) {
        Q7.a(context);
        c(context);
        e(context);
        d(context);
        String str = Build.FINGERPRINT;
        String str2 = Build.DEVICE;
        C1036a8.a(context);
        this.f17612c = c1015Zc.f17769a;
        this.f17613d = c1015Zc.f17770b;
        this.f17614e = c1015Zc.f17771c;
        this.f17615f = c1015Zc.f17772d;
        this.f17616g = c1015Zc.f17773e;
        this.f17617h = c1015Zc.f17774f;
        this.f17618i = c1015Zc.f17775g;
        this.f17619j = c1015Zc.f17776h;
        this.f17623n = c1015Zc.f17777i;
        this.f17620k = c1015Zc.f17780l;
        this.f17621l = c1015Zc.f17781m;
        this.f17622m = c1015Zc.f17782n;
    }
}
