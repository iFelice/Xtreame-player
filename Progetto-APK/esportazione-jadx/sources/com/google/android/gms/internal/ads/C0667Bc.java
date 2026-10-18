package com.google.android.gms.internal.ads;

import android.app.ActivityManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.WebView;
import com.google.ads.interactivemedia.v3.impl.data.zzbz;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Locale;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import okhttp3.HttpUrl;
import p039f.AbstractC2987b;
import p090l3.C3097p;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Bc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0667Bc implements InterfaceC0682Cc {

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public static final Object f12367Q = new Object();

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public static InterfaceC0682Cc f12368R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public static InterfaceC0682Cc f12369S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public static InterfaceC0682Cc f12370T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public static Boolean f12371U;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Context f12373H;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final p120p3.a f12376K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final PackageInfo f12377L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final String f12378M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final String f12379N;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public boolean f12381P;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Object f12372G = new Object();

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final WeakHashMap f12374I = new WeakHashMap();

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final ExecutorService f12375J = Executors.unconfigurableExecutorService(Executors.newCachedThreadPool());

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final AtomicBoolean f12380O = new AtomicBoolean();

    /* JADX WARN: Code duplicated, block: B:11:0x004d  */
    public C0667Bc(Context context, p120p3.a aVar) {
        PackageInfo packageInfoC;
        context = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.f12373H = context;
        this.f12376K = aVar;
        String string = null;
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15829f7)).booleanValue()) {
            E1.W w7 = p120p3.d.f28202b;
            if (context == null || context.getApplicationInfo() == null) {
                packageInfoC = null;
            } else {
                try {
                    packageInfoC = Q3.c.a(context).c(0, context.getApplicationInfo().packageName);
                } catch (PackageManager.NameNotFoundException unused) {
                    packageInfoC = null;
                }
            }
        } else {
            packageInfoC = null;
        }
        this.f12377L = packageInfoC;
        J7 j8 = Q7.f15811d7;
        C3099q c3099q = C3099q.f26624d;
        this.f12378M = ((Boolean) c3099q.f26627c.a(j8)).booleanValue() ? Locale.getDefault().getCountry() : zzbz.UNKNOWN_CONTENT_TYPE;
        if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
            Context context2 = this.f12373H;
            E1.W w8 = p120p3.d.f28202b;
            if (context2 != null) {
                try {
                    PackageInfo packageInfoC2 = Q3.c.a(context2).c(128, "com.android.vending");
                    if (packageInfoC2 != null) {
                        string = Integer.toString(packageInfoC2.versionCode);
                    }
                } catch (PackageManager.NameNotFoundException unused2) {
                }
            }
        } else {
            string = zzbz.UNKNOWN_CONTENT_TYPE;
        }
        this.f12379N = string;
    }

    public static InterfaceC0682Cc a(Context context) {
        synchronized (f12367Q) {
            try {
                if (f12368R == null) {
                    if (i(context)) {
                        f12368R = new C0667Bc(context, p120p3.a.i());
                    } else {
                        f12368R = new C0650Aa(7);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f12368R;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0039  */
    public static InterfaceC0682Cc d(Context context, p120p3.a aVar) {
        boolean z7;
        synchronized (f12367Q) {
            try {
                if (f12370T == null) {
                    if (((Boolean) AbstractC1604l8.f19714c.l()).booleanValue()) {
                        if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.f15769Y6)).booleanValue() || ((Boolean) AbstractC1604l8.f19712a.l()).booleanValue()) {
                            z7 = true;
                        } else {
                            z7 = false;
                        }
                    } else {
                        z7 = false;
                    }
                    if (i(context)) {
                        C0667Bc c0667Bc = new C0667Bc(context, aVar);
                        c0667Bc.h();
                        Thread.setDefaultUncaughtExceptionHandler(new C0652Ac(c0667Bc, Thread.getDefaultUncaughtExceptionHandler(), 0));
                        f12370T = c0667Bc;
                    } else if (!z7 || context == null) {
                        f12370T = new C0650Aa(7);
                    } else {
                        C0667Bc c0667Bc2 = new C0667Bc(context, aVar);
                        c0667Bc2.f12381P = true;
                        c0667Bc2.h();
                        Thread.setDefaultUncaughtExceptionHandler(new C0652Ac(c0667Bc2, Thread.getDefaultUncaughtExceptionHandler(), 0));
                        f12370T = c0667Bc2;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f12370T;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0037 A[Catch: all -> 0x0035, TryCatch #0 {all -> 0x0035, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x0019, B:10:0x0029, B:13:0x0037, B:14:0x003f), top: B:19:0x0003 }] */
    public static InterfaceC0682Cc e(Context context) {
        synchronized (f12367Q) {
            try {
                if (f12369S == null) {
                    J7 j8 = Q7.f15776Z6;
                    C3099q c3099q = C3099q.f26624d;
                    if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
                        if (((Boolean) c3099q.f26627c.a(Q7.f15769Y6)).booleanValue()) {
                            f12369S = new C0650Aa(7);
                        } else {
                            f12369S = new C0667Bc(context, p120p3.a.i());
                        }
                    } else {
                        f12369S = new C0650Aa(7);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f12369S;
    }

    public static String f(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    public static boolean i(Context context) {
        if (context == null) {
            return false;
        }
        J7 j8 = Q7.Zb;
        C3099q c3099q = C3099q.f26624d;
        if (!((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
            if (((Boolean) B8.f12291e.l()).booleanValue()) {
                if (!((Boolean) c3099q.f26627c.a(Q7.f15769Y6)).booleanValue()) {
                    return true;
                }
            }
            return false;
        }
        synchronized (f12367Q) {
            try {
                if (f12371U == null) {
                    f12371U = Boolean.valueOf(C3097p.f26618f.f26623e.nextInt(100) < ((Integer) c3099q.f26627c.a(Q7.Wb)).intValue());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (f12371U.booleanValue()) {
            if (!((Boolean) c3099q.f26627c.a(Q7.f15769Y6)).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0682Cc
    public final void b(String str, Throwable th) {
        if (this.f12381P) {
            return;
        }
        c(th, str, 1.0f);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0682Cc
    public final void c(Throwable th, String str, float f8) {
        Throwable th2;
        boolean zD;
        String packageName;
        PackageInfo packageInfoC;
        ActivityManager activityManager;
        ActivityManager.MemoryInfo memoryInfo;
        String strA;
        Context context = this.f12373H;
        if (this.f12381P) {
            return;
        }
        E1.W w7 = p120p3.d.f28202b;
        if (((Boolean) B8.f12292f.l()).booleanValue()) {
            th2 = th;
        } else {
            LinkedList linkedList = new LinkedList();
            for (Throwable cause = th; cause != null; cause = cause.getCause()) {
                linkedList.push(cause);
            }
            th2 = null;
            while (!linkedList.isEmpty()) {
                Throwable th3 = (Throwable) linkedList.pop();
                StackTraceElement[] stackTrace = th3.getStackTrace();
                boolean z7 = ((Boolean) C3099q.f26624d.f26627c.a(Q7.f15807d2)).booleanValue() && stackTrace != null && stackTrace.length == 0 && p120p3.d.k(th3.getClass().getName());
                ArrayList arrayList = new ArrayList();
                arrayList.add(new StackTraceElement(th3.getClass().getName(), "<filtered>", "<filtered>", 1));
                for (StackTraceElement stackTraceElement : stackTrace) {
                    if (p120p3.d.k(stackTraceElement.getClassName())) {
                        arrayList.add(stackTraceElement);
                        z7 = true;
                    } else {
                        String className = stackTraceElement.getClassName();
                        if (!TextUtils.isEmpty(className) && (className.startsWith("android.") || className.startsWith("java."))) {
                            arrayList.add(stackTraceElement);
                        } else {
                            arrayList.add(new StackTraceElement("<filtered>", "<filtered>", "<filtered>", 1));
                        }
                    }
                }
                if (z7) {
                    th2 = th2 == null ? new Throwable(th3.getMessage()) : new Throwable(th3.getMessage(), th2);
                    th2.setStackTrace((StackTraceElement[]) arrayList.toArray(new StackTraceElement[0]));
                }
            }
        }
        if (th2 != null) {
            String name = th.getClass().getName();
            String strF = f(th);
            boolean zBooleanValue = ((Boolean) C3099q.f26624d.f26627c.a(Q7.c8)).booleanValue();
            String str2 = HttpUrl.FRAGMENT_ENCODE_SET;
            if (zBooleanValue && (strA = p120p3.d.a(f(th), "SHA-256")) != null) {
                str2 = strA;
            }
            double d6 = f8;
            double dRandom = Math.random();
            int i8 = f8 > 0.0f ? (int) (1.0f / f8) : 1;
            if (dRandom < d6) {
                ArrayList arrayList2 = new ArrayList();
                try {
                    zD = Q3.c.a(context).d();
                } catch (Throwable th4) {
                    p120p3.h.e("Error fetching instant app info", th4);
                    zD = false;
                }
                try {
                    packageName = context.getPackageName();
                } catch (Throwable unused) {
                    p120p3.h.g("Cannot obtain package name, proceeding.");
                    packageName = zzbz.UNKNOWN_CONTENT_TYPE;
                }
                Uri.Builder builderAppendQueryParameter = new Uri.Builder().scheme("https").path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("is_aia", Boolean.toString(zD)).appendQueryParameter("id", "gmob-apps-report-exception").appendQueryParameter("os", Build.VERSION.RELEASE);
                int i9 = Build.VERSION.SDK_INT;
                Uri.Builder builderAppendQueryParameter2 = builderAppendQueryParameter.appendQueryParameter("api", String.valueOf(i9));
                String str3 = Build.MANUFACTURER;
                String strL = Build.MODEL;
                if (!strL.startsWith(str3)) {
                    strL = com.google.protobuf.U2.l(str3, " ", strL);
                }
                Uri.Builder builderAppendQueryParameter3 = builderAppendQueryParameter2.appendQueryParameter("device", strL);
                p120p3.a aVar = this.f12376K;
                Uri.Builder builderAppendQueryParameter4 = builderAppendQueryParameter3.appendQueryParameter("js", aVar.f28196G).appendQueryParameter("appid", packageName).appendQueryParameter("exceptiontype", name).appendQueryParameter("stacktrace", strF);
                C3099q c3099q = C3099q.f26624d;
                Uri.Builder builderAppendQueryParameter5 = builderAppendQueryParameter4.appendQueryParameter("eids", TextUtils.join(",", c3099q.f26625a.b())).appendQueryParameter("exceptionkey", str).appendQueryParameter("cl", "679313570").appendQueryParameter("rc", "dev").appendQueryParameter("sampling_rate", Integer.toString(i8)).appendQueryParameter("pb_tm", String.valueOf(B8.f12289c.l()));
                J3.f.f4145b.getClass();
                Uri.Builder builderAppendQueryParameter6 = builderAppendQueryParameter5.appendQueryParameter("gmscv", String.valueOf(J3.f.a(context))).appendQueryParameter("lite", true != aVar.f28200K ? "0" : "1");
                if (!TextUtils.isEmpty(str2)) {
                    builderAppendQueryParameter6.appendQueryParameter("hash", str2);
                }
                J7 j8 = Q7.f15820e7;
                O7 o7 = c3099q.f26627c;
                if (((Boolean) o7.a(j8)).booleanValue()) {
                    if (context == null || (activityManager = (ActivityManager) context.getSystemService("activity")) == null) {
                        memoryInfo = null;
                    } else {
                        memoryInfo = new ActivityManager.MemoryInfo();
                        try {
                            activityManager.getMemoryInfo(memoryInfo);
                        } catch (NullPointerException unused2) {
                            p120p3.h.g("Error retrieving the memory information.");
                        }
                    }
                    if (memoryInfo != null) {
                        builderAppendQueryParameter6.appendQueryParameter("available_memory", Long.toString(memoryInfo.availMem));
                        builderAppendQueryParameter6.appendQueryParameter("total_memory", Long.toString(memoryInfo.totalMem));
                        builderAppendQueryParameter6.appendQueryParameter("is_low_memory", true != memoryInfo.lowMemory ? "0" : "1");
                    }
                }
                if (((Boolean) o7.a(Q7.f15811d7)).booleanValue()) {
                    String str4 = this.f12378M;
                    if (!TextUtils.isEmpty(str4)) {
                        builderAppendQueryParameter6.appendQueryParameter("countrycode", str4);
                    }
                    String str5 = this.f12379N;
                    if (!TextUtils.isEmpty(str5)) {
                        builderAppendQueryParameter6.appendQueryParameter("psv", str5);
                    }
                    if (i9 >= 26) {
                        packageInfoC = WebView.getCurrentWebViewPackage();
                    } else if (context == null) {
                        packageInfoC = null;
                    } else {
                        try {
                            packageInfoC = Q3.c.a(context).c(128, "com.android.webview");
                        } catch (PackageManager.NameNotFoundException unused3) {
                            packageInfoC = null;
                        }
                    }
                    if (packageInfoC != null) {
                        builderAppendQueryParameter6.appendQueryParameter("wvvc", Integer.toString(packageInfoC.versionCode));
                        builderAppendQueryParameter6.appendQueryParameter("wvvn", packageInfoC.versionName);
                        builderAppendQueryParameter6.appendQueryParameter("wvpn", packageInfoC.packageName);
                    }
                }
                PackageInfo packageInfo = this.f12377L;
                if (packageInfo != null) {
                    builderAppendQueryParameter6.appendQueryParameter("appvc", String.valueOf(packageInfo.versionCode));
                    builderAppendQueryParameter6.appendQueryParameter("appvn", packageInfo.versionName);
                }
                arrayList2.add(builderAppendQueryParameter6.toString());
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    this.f12375J.execute(new RunnableC0755Ha(11, new p120p3.k(null), (String) it.next()));
                }
            }
        }
    }

    public final void g(Throwable th) {
        Context context;
        SharedPreferences sharedPreferences;
        if (th != null) {
            boolean zK = false;
            boolean zEquals = false;
            for (Throwable cause = th; cause != null; cause = cause.getCause()) {
                for (StackTraceElement stackTraceElement : cause.getStackTrace()) {
                    zK |= p120p3.d.k(stackTraceElement.getClassName());
                    zEquals |= C0667Bc.class.getName().equals(stackTraceElement.getClassName());
                }
            }
            if (!zK || zEquals) {
                return;
            }
            if (!this.f12381P) {
                b(HttpUrl.FRAGMENT_ENCODE_SET, th);
            }
            if (this.f12380O.getAndSet(true) || !((Boolean) AbstractC1604l8.f19714c.l()).booleanValue() || (sharedPreferences = (context = this.f12373H).getSharedPreferences("admob", 0)) == null) {
                return;
            }
            sharedPreferences.edit().putInt("crash_without_write", AbstractC2987b.A0(context, "crash_without_write") + 1).commit();
        }
    }

    public final void h() {
        Thread thread = Looper.getMainLooper().getThread();
        if (thread == null) {
            return;
        }
        synchronized (this.f12372G) {
            this.f12374I.put(thread, Boolean.TRUE);
        }
        thread.setUncaughtExceptionHandler(new C0652Ac(this, thread.getUncaughtExceptionHandler(), 1));
    }
}
