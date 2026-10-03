package p021c4;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.bumptech.glide.c;
import java.lang.reflect.InvocationTargetException;
import okhttp3.HttpUrl;
import p018c1.d;

/* JADX INFO: renamed from: c4.h, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0584h extends d {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Boolean f11191H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public String f11192I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public InterfaceC0581g f11193J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public Boolean f11194K;

    public final String A(String str, D d6) {
        return TextUtils.isEmpty(str) ? (String) d6.a(null) : (String) d6.a(this.f11193J.v(str, d6.f10702a));
    }

    public final boolean B(String str, D d6) {
        if (TextUtils.isEmpty(str)) {
            return ((Boolean) d6.a(null)).booleanValue();
        }
        String strV = this.f11193J.v(str, d6.f10702a);
        return TextUtils.isEmpty(strV) ? ((Boolean) d6.a(null)).booleanValue() : ((Boolean) d6.a(Boolean.valueOf("1".equals(strV)))).booleanValue();
    }

    public final boolean C() {
        Boolean boolZ = z("google_analytics_automatic_screen_reporting_enabled");
        return boolZ == null || boolZ.booleanValue();
    }

    public final boolean n() {
        ((C0597l0) this.f10616G).getClass();
        Boolean boolZ = z("firebase_analytics_collection_deactivated");
        return boolZ != null && boolZ.booleanValue();
    }

    public final boolean o(String str) {
        return "1".equals(this.f11193J.v(str, "measurement.event_sampling_enabled"));
    }

    public final boolean p() {
        if (this.f11191H == null) {
            Boolean boolZ = z("app_measurement_lite");
            this.f11191H = boolZ;
            if (boolZ == null) {
                this.f11191H = Boolean.FALSE;
            }
        }
        return this.f11191H.booleanValue() || !((C0597l0) this.f10616G).f11254K;
    }

    public final String q(String str) {
        try {
            String str2 = (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, str, HttpUrl.FRAGMENT_ENCODE_SET);
            c.h(str2);
            return str2;
        } catch (ClassNotFoundException e8) {
            T t7 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t7);
            t7.f11039L.b(e8, "Could not find SystemProperties class");
            return HttpUrl.FRAGMENT_ENCODE_SET;
        } catch (IllegalAccessException e9) {
            T t8 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t8);
            t8.f11039L.b(e9, "Could not access SystemProperties.get()");
            return HttpUrl.FRAGMENT_ENCODE_SET;
        } catch (NoSuchMethodException e10) {
            T t9 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t9);
            t9.f11039L.b(e10, "Could not find SystemProperties.get() method");
            return HttpUrl.FRAGMENT_ENCODE_SET;
        } catch (InvocationTargetException e11) {
            T t10 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t10);
            t10.f11039L.b(e11, "SystemProperties.get() threw an exception");
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
    }

    public final double r(String str, D d6) {
        if (TextUtils.isEmpty(str)) {
            return ((Double) d6.a(null)).doubleValue();
        }
        String strV = this.f11193J.v(str, d6.f10702a);
        if (TextUtils.isEmpty(strV)) {
            return ((Double) d6.a(null)).doubleValue();
        }
        try {
            return ((Double) d6.a(Double.valueOf(Double.parseDouble(strV)))).doubleValue();
        } catch (NumberFormatException unused) {
            return ((Double) d6.a(null)).doubleValue();
        }
    }

    public final int s(String str, boolean z7) {
        if (z7) {
            return Math.max(Math.min(t(str, E.f10786h0), 500), 100);
        }
        return 500;
    }

    public final int t(String str, D d6) {
        if (TextUtils.isEmpty(str)) {
            return ((Integer) d6.a(null)).intValue();
        }
        String strV = this.f11193J.v(str, d6.f10702a);
        if (TextUtils.isEmpty(strV)) {
            return ((Integer) d6.a(null)).intValue();
        }
        try {
            return ((Integer) d6.a(Integer.valueOf(Integer.parseInt(strV)))).intValue();
        } catch (NumberFormatException unused) {
            return ((Integer) d6.a(null)).intValue();
        }
    }

    public final long u() {
        ((C0597l0) this.f10616G).getClass();
        return 119002L;
    }

    public final long w(String str, D d6) {
        if (TextUtils.isEmpty(str)) {
            return ((Long) d6.a(null)).longValue();
        }
        String strV = this.f11193J.v(str, d6.f10702a);
        if (TextUtils.isEmpty(strV)) {
            return ((Long) d6.a(null)).longValue();
        }
        try {
            return ((Long) d6.a(Long.valueOf(Long.parseLong(strV)))).longValue();
        } catch (NumberFormatException unused) {
            return ((Long) d6.a(null)).longValue();
        }
    }

    public final Bundle x() {
        try {
            C0597l0 c0597l0 = (C0597l0) this.f10616G;
            Context context = c0597l0.f11250G;
            Context context2 = c0597l0.f11250G;
            PackageManager packageManager = context.getPackageManager();
            T t7 = c0597l0.f11258O;
            if (packageManager == null) {
                C0597l0.k(t7);
                t7.f11039L.a("Failed to load metadata: PackageManager is null");
                return null;
            }
            ApplicationInfo applicationInfoB = Q3.c.a(context2).b(128, context2.getPackageName());
            if (applicationInfoB != null) {
                return applicationInfoB.metaData;
            }
            C0597l0.k(t7);
            t7.f11039L.a("Failed to load metadata: ApplicationInfo is null");
            return null;
        } catch (PackageManager.NameNotFoundException e8) {
            T t8 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t8);
            t8.f11039L.b(e8, "Failed to load metadata: Package name not found");
            return null;
        }
    }

    public final EnumC0614u0 y(String str, boolean z7) {
        Object obj;
        c.e(str);
        C0597l0 c0597l0 = (C0597l0) this.f10616G;
        Bundle bundleX = x();
        if (bundleX == null) {
            T t7 = c0597l0.f11258O;
            C0597l0.k(t7);
            t7.f11039L.a("Failed to load metadata: Metadata bundle is null");
            obj = null;
        } else {
            obj = bundleX.get(str);
        }
        EnumC0614u0 enumC0614u0 = EnumC0614u0.UNINITIALIZED;
        if (obj == null) {
            return enumC0614u0;
        }
        if (Boolean.TRUE.equals(obj)) {
            return EnumC0614u0.GRANTED;
        }
        if (Boolean.FALSE.equals(obj)) {
            return EnumC0614u0.DENIED;
        }
        if (z7 && "eu_consent_policy".equals(obj)) {
            return EnumC0614u0.POLICY;
        }
        T t8 = c0597l0.f11258O;
        C0597l0.k(t8);
        t8.f11042O.b(str, "Invalid manifest metadata for");
        return enumC0614u0;
    }

    public final Boolean z(String str) {
        c.e(str);
        Bundle bundleX = x();
        if (bundleX != null) {
            if (bundleX.containsKey(str)) {
                return Boolean.valueOf(bundleX.getBoolean(str));
            }
            return null;
        }
        T t7 = ((C0597l0) this.f10616G).f11258O;
        C0597l0.k(t7);
        t7.f11039L.a("Failed to load metadata: Metadata bundle is null");
        return null;
    }
}
