package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import p090l3.C3097p;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Qd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0890Qd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicReference f16031a = new AtomicReference(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f16032b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f16033c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AtomicBoolean f16034d = new AtomicBoolean(false);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AtomicInteger f16035e = new AtomicInteger(-1);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AtomicReference f16036f = new AtomicReference(null);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AtomicReference f16037g = new AtomicReference(null);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ConcurrentHashMap f16038h = new ConcurrentHashMap(9);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Object f16039i;

    public C0890Qd() {
        new AtomicReference(null);
        new ArrayBlockingQueue(20);
        this.f16039i = new Object();
    }

    public static final Bundle f(Map map) {
        Bundle bundle = new Bundle();
        if (map != null) {
            for (String str : map.keySet()) {
                try {
                    if (Objects.equals(str, "value")) {
                        bundle.putDouble(str, Double.parseDouble((String) map.get(str)));
                    } else {
                        bundle.putString(str, (String) map.get(str));
                    }
                } catch (NullPointerException | NumberFormatException unused) {
                }
            }
        }
        return bundle;
    }

    public static final boolean g(Context context) {
        J7 j8 = Q7.f15831g0;
        C3099q c3099q = C3099q.f26624d;
        if (!((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
            return false;
        }
        int iA = S3.c.a(context, ModuleDescriptor.MODULE_ID);
        J7 j9 = Q7.f15840h0;
        O7 o7 = c3099q.f26627c;
        if (iA < ((Integer) o7.a(j9)).intValue()) {
            return false;
        }
        if (((Boolean) o7.a(Q7.f15849i0)).booleanValue()) {
            try {
                context.getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics");
                return false;
            } catch (ClassNotFoundException unused) {
            }
        }
        return true;
    }

    public final String a(Context context) {
        Object objH;
        if (e(context) && (objH = h(context, "generateEventId")) != null) {
            return objH.toString();
        }
        return null;
    }

    public final String b(Context context) {
        if (!e(context)) {
            return null;
        }
        J7 j8 = Q7.f15813e0;
        C3099q c3099q = C3099q.f26624d;
        long jLongValue = ((Long) c3099q.f26627c.a(j8)).longValue();
        if (jLongValue < 0) {
            return (String) h(context, "getAppInstanceId");
        }
        AtomicReference atomicReference = this.f16031a;
        if (atomicReference.get() == null) {
            J7 j9 = Q7.f15822f0;
            O7 o7 = c3099q.f26627c;
            ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(((Integer) o7.a(j9)).intValue(), ((Integer) o7.a(j9)).intValue(), 1L, TimeUnit.MINUTES, new LinkedBlockingQueue(), new ThreadFactoryC0876Pd(0));
            while (!atomicReference.compareAndSet(null, threadPoolExecutor) && (atomicReference.get() == null || atomicReference.get() == null)) {
            }
        }
        try {
            return (String) ((ExecutorService) atomicReference.get()).submit(new CallableC1497j5(2, this, context)).get(jLongValue, TimeUnit.MILLISECONDS);
        } catch (TimeoutException unused) {
            return "TIME_OUT";
        } catch (Exception unused2) {
            return null;
        }
    }

    public final String c(Context context) {
        if (!e(context)) {
            return null;
        }
        synchronized (this.f16032b) {
            try {
                String str = this.f16033c;
                if (str != null) {
                    return str;
                }
                String str2 = (String) h(context, "getGmpAppId");
                this.f16033c = str2;
                return str2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void d(Context context, String str, String str2, String str3, int i8) {
        if (e(context)) {
            Bundle bundle = new Bundle();
            bundle.putString("_ai", str2);
            bundle.putString("reward_type", str3);
            bundle.putInt("reward_value", i8);
            k(context, "_ar", str, bundle);
            p113o3.I.k("Log a Firebase reward video event, reward type: " + str3 + ", reward value: " + i8);
        }
    }

    public final boolean e(Context context) {
        int iC;
        J7 j8 = Q7.f15763Y;
        C3099q c3099q = C3099q.f26624d;
        if (((Boolean) c3099q.f26627c.a(j8)).booleanValue() && !this.f16034d.get()) {
            if (((Boolean) c3099q.f26627c.a(Q7.f15858j0)).booleanValue()) {
                return true;
            }
            AtomicInteger atomicInteger = this.f16035e;
            if (atomicInteger.get() == -1) {
                p120p3.d dVar = C3097p.f26618f.f26619a;
                J3.f fVar = J3.f.f4145b;
                if (fVar.c(context, 12451000) != 0 && ((iC = fVar.c(context, 12451000)) == 0 || iC == 2)) {
                    p120p3.h.g("Google Play Service is out of date, the Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires updated Google Play Service.");
                    atomicInteger.set(0);
                } else {
                    atomicInteger.set(1);
                }
            }
            if (atomicInteger.get() == 1) {
                return true;
            }
        }
        return false;
    }

    public final Object h(Context context, String str) {
        AtomicReference atomicReference = this.f16036f;
        if (!m(context, "com.google.android.gms.measurement.AppMeasurement", atomicReference, true)) {
            return null;
        }
        try {
            return i(context, str).invoke(atomicReference.get(), new Object[0]);
        } catch (Exception unused) {
            l(str, true);
            return null;
        }
    }

    public final Method i(Context context, String str) {
        ConcurrentHashMap concurrentHashMap = this.f16038h;
        Method method = (Method) concurrentHashMap.get(str);
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod(str, new Class[0]);
            concurrentHashMap.put(str, declaredMethod);
            return declaredMethod;
        } catch (Exception unused) {
            l(str, false);
            return null;
        }
    }

    public final void j(Context context, String str, String str2) {
        AtomicReference atomicReference = this.f16036f;
        if (m(context, "com.google.android.gms.measurement.AppMeasurement", atomicReference, true)) {
            ConcurrentHashMap concurrentHashMap = this.f16038h;
            Method declaredMethod = (Method) concurrentHashMap.get(str2);
            if (declaredMethod == null) {
                try {
                    declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod(str2, String.class);
                    concurrentHashMap.put(str2, declaredMethod);
                } catch (Exception unused) {
                    l(str2, false);
                    declaredMethod = null;
                }
            }
            try {
                declaredMethod.invoke(atomicReference.get(), str);
                p113o3.I.k("Invoke Firebase method " + str2 + ", Ad Unit Id: " + str);
            } catch (Exception unused2) {
                l(str2, false);
            }
        }
    }

    public final void k(Context context, String str, String str2, Bundle bundle) {
        if (e(context)) {
            Bundle bundle2 = new Bundle();
            try {
                bundle2.putLong("_aeid", Long.parseLong(str2));
            } catch (NullPointerException | NumberFormatException e8) {
                p120p3.h.e("Invalid event ID: ".concat(String.valueOf(str2)), e8);
            }
            if ("_ac".equals(str)) {
                bundle2.putInt("_r", 1);
            }
            if (bundle != null) {
                bundle2.putAll(bundle);
            }
            AtomicReference atomicReference = this.f16036f;
            if (m(context, "com.google.android.gms.measurement.AppMeasurement", atomicReference, true)) {
                ConcurrentHashMap concurrentHashMap = this.f16038h;
                Method declaredMethod = (Method) concurrentHashMap.get("logEventInternal");
                if (declaredMethod == null) {
                    try {
                        declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod("logEventInternal", String.class, String.class, Bundle.class);
                        concurrentHashMap.put("logEventInternal", declaredMethod);
                    } catch (Exception unused) {
                        l("logEventInternal", true);
                        declaredMethod = null;
                    }
                }
                try {
                    declaredMethod.invoke(atomicReference.get(), "am", str, bundle2);
                } catch (Exception unused2) {
                    l("logEventInternal", true);
                }
            }
        }
    }

    public final void l(String str, boolean z7) {
        AtomicBoolean atomicBoolean = this.f16034d;
        if (atomicBoolean.get()) {
            return;
        }
        p120p3.h.g("Invoke Firebase method " + str + " error.");
        if (z7) {
            p120p3.h.g("The Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires the latest Firebase SDK jar, but Firebase SDK is either missing or out of date");
            atomicBoolean.set(true);
        }
    }

    public final boolean m(Context context, String str, AtomicReference atomicReference, boolean z7) {
        if (atomicReference.get() == null) {
            try {
                Object objInvoke = context.getClassLoader().loadClass(str).getDeclaredMethod("getInstance", Context.class).invoke(null, context);
                while (!atomicReference.compareAndSet(null, objInvoke) && (atomicReference.get() == null || atomicReference.get() == null)) {
                }
            } catch (Exception unused) {
                l("getInstance", z7);
                return false;
            }
        }
        return true;
    }
}
