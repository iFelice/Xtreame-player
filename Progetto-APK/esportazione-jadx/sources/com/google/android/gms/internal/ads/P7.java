package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.StrictMode;
import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;
import p039f.AbstractC2987b;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class P7 implements Gz {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f15334G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Context f15335H;

    public /* synthetic */ P7(Context context, int i8) {
        this.f15334G = i8;
        this.f15335H = context;
    }

    /* JADX WARN: Code duplicated, block: B:49:0x00c5 A[Catch: all -> 0x006f, TRY_ENTER, TryCatch #4 {all -> 0x006f, blocks: (B:26:0x005d, B:29:0x0067, B:35:0x0074, B:38:0x0080, B:39:0x008a, B:41:0x0090, B:43:0x00a0, B:45:0x00b7, B:49:0x00c5, B:51:0x00c9, B:53:0x00d9, B:55:0x00f0, B:58:0x00fc, B:70:0x0153, B:78:0x0168, B:80:0x0180, B:82:0x0184, B:83:0x0187, B:61:0x010d, B:63:0x011b, B:65:0x0123, B:67:0x0143, B:68:0x0146, B:73:0x0159, B:74:0x015c, B:66:0x0127), top: B:99:0x005d, outer: #1, inners: #3 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00c9 A[Catch: all -> 0x006f, TryCatch #4 {all -> 0x006f, blocks: (B:26:0x005d, B:29:0x0067, B:35:0x0074, B:38:0x0080, B:39:0x008a, B:41:0x0090, B:43:0x00a0, B:45:0x00b7, B:49:0x00c5, B:51:0x00c9, B:53:0x00d9, B:55:0x00f0, B:58:0x00fc, B:70:0x0153, B:78:0x0168, B:80:0x0180, B:82:0x0184, B:83:0x0187, B:61:0x010d, B:63:0x011b, B:65:0x0123, B:67:0x0143, B:68:0x0146, B:73:0x0159, B:74:0x015c, B:66:0x0127), top: B:99:0x005d, outer: #1, inners: #3 }] */
    /* JADX WARN: Code duplicated, block: B:58:0x00fc A[Catch: all -> 0x006f, TRY_ENTER, TryCatch #4 {all -> 0x006f, blocks: (B:26:0x005d, B:29:0x0067, B:35:0x0074, B:38:0x0080, B:39:0x008a, B:41:0x0090, B:43:0x00a0, B:45:0x00b7, B:49:0x00c5, B:51:0x00c9, B:53:0x00d9, B:55:0x00f0, B:58:0x00fc, B:70:0x0153, B:78:0x0168, B:80:0x0180, B:82:0x0184, B:83:0x0187, B:61:0x010d, B:63:0x011b, B:65:0x0123, B:67:0x0143, B:68:0x0146, B:73:0x0159, B:74:0x015c, B:66:0x0127), top: B:99:0x005d, outer: #1, inners: #3 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x010c  */
    /* JADX WARN: Code duplicated, block: B:61:0x010d A[Catch: all -> 0x006f, TryCatch #4 {all -> 0x006f, blocks: (B:26:0x005d, B:29:0x0067, B:35:0x0074, B:38:0x0080, B:39:0x008a, B:41:0x0090, B:43:0x00a0, B:45:0x00b7, B:49:0x00c5, B:51:0x00c9, B:53:0x00d9, B:55:0x00f0, B:58:0x00fc, B:70:0x0153, B:78:0x0168, B:80:0x0180, B:82:0x0184, B:83:0x0187, B:61:0x010d, B:63:0x011b, B:65:0x0123, B:67:0x0143, B:68:0x0146, B:73:0x0159, B:74:0x015c, B:66:0x0127), top: B:99:0x005d, outer: #1, inners: #3 }] */
    /* JADX WARN: Code duplicated, block: B:63:0x011b A[Catch: all -> 0x006f, TryCatch #4 {all -> 0x006f, blocks: (B:26:0x005d, B:29:0x0067, B:35:0x0074, B:38:0x0080, B:39:0x008a, B:41:0x0090, B:43:0x00a0, B:45:0x00b7, B:49:0x00c5, B:51:0x00c9, B:53:0x00d9, B:55:0x00f0, B:58:0x00fc, B:70:0x0153, B:78:0x0168, B:80:0x0180, B:82:0x0184, B:83:0x0187, B:61:0x010d, B:63:0x011b, B:65:0x0123, B:67:0x0143, B:68:0x0146, B:73:0x0159, B:74:0x015c, B:66:0x0127), top: B:99:0x005d, outer: #1, inners: #3 }] */
    /* JADX WARN: Code duplicated, block: B:76:0x015f A[Catch: all -> 0x0026, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x0026, blocks: (B:11:0x001f, B:13:0x0023, B:17:0x0029, B:19:0x002e, B:20:0x0030, B:22:0x0042, B:23:0x0046, B:24:0x0048, B:46:0x00bb, B:47:0x00c2, B:56:0x00f4, B:76:0x015f, B:84:0x018e, B:85:0x0195, B:87:0x0197, B:88:0x019e, B:26:0x005d, B:29:0x0067, B:35:0x0074, B:38:0x0080, B:39:0x008a, B:41:0x0090, B:43:0x00a0, B:45:0x00b7, B:49:0x00c5, B:51:0x00c9, B:53:0x00d9, B:55:0x00f0, B:58:0x00fc, B:70:0x0153, B:78:0x0168, B:80:0x0180, B:82:0x0184, B:83:0x0187, B:61:0x010d, B:63:0x011b, B:65:0x0123, B:67:0x0143, B:68:0x0146, B:73:0x0159, B:74:0x015c), top: B:94:0x001f, inners: #4 }] */
    /* JADX WARN: Code duplicated, block: B:78:0x0168 A[Catch: all -> 0x006f, TRY_ENTER, TryCatch #4 {all -> 0x006f, blocks: (B:26:0x005d, B:29:0x0067, B:35:0x0074, B:38:0x0080, B:39:0x008a, B:41:0x0090, B:43:0x00a0, B:45:0x00b7, B:49:0x00c5, B:51:0x00c9, B:53:0x00d9, B:55:0x00f0, B:58:0x00fc, B:70:0x0153, B:78:0x0168, B:80:0x0180, B:82:0x0184, B:83:0x0187, B:61:0x010d, B:63:0x011b, B:65:0x0123, B:67:0x0143, B:68:0x0146, B:73:0x0159, B:74:0x015c, B:66:0x0127), top: B:99:0x005d, outer: #1, inners: #3 }] */
    /* JADX WARN: Code duplicated, block: B:80:0x0180 A[Catch: all -> 0x006f, TryCatch #4 {all -> 0x006f, blocks: (B:26:0x005d, B:29:0x0067, B:35:0x0074, B:38:0x0080, B:39:0x008a, B:41:0x0090, B:43:0x00a0, B:45:0x00b7, B:49:0x00c5, B:51:0x00c9, B:53:0x00d9, B:55:0x00f0, B:58:0x00fc, B:70:0x0153, B:78:0x0168, B:80:0x0180, B:82:0x0184, B:83:0x0187, B:61:0x010d, B:63:0x011b, B:65:0x0123, B:67:0x0143, B:68:0x0146, B:73:0x0159, B:74:0x015c, B:66:0x0127), top: B:99:0x005d, outer: #1, inners: #3 }] */
    @Override // com.google.android.gms.internal.ads.Gz
    public final Object zza() {
        SharedPreferences sharedPreferencesD;
        SharedPreferences sharedPreferences;
        StrictMode.ThreadPolicy threadPolicy;
        String string;
        SharedPreferences sharedPreferences2;
        C1294f8 c1294f8;
        switch (this.f15334G) {
            case 0:
                J7 j8 = Q7.f15777a;
                O7 o7 = C3099q.f26624d.f26627c;
                Context applicationContext = this.f15335H;
                if (!o7.f15135c) {
                    synchronized (o7.f15133a) {
                        try {
                            if (!o7.f15135c) {
                                if (!o7.f15136d) {
                                    o7.f15136d = true;
                                }
                                o7.f15141i = TextUtils.equals(applicationContext.getPackageName(), "com.google.android.gms");
                                if (applicationContext.getApplicationContext() != null) {
                                    applicationContext = applicationContext.getApplicationContext();
                                }
                                o7.f15139g = applicationContext;
                                try {
                                    o7.f15138f = Q3.c.a(applicationContext).b(128, o7.f15139g.getPackageName()).metaData;
                                    break;
                                } catch (PackageManager.NameNotFoundException | NullPointerException unused) {
                                }
                                try {
                                    Context context = o7.f15139g;
                                    Context contextA = J3.j.a(context);
                                    if (contextA != null || context == null || (contextA = context.getApplicationContext()) != null) {
                                        context = contextA;
                                    }
                                    if (context != null) {
                                        C1561kH c1561kH = C3099q.f26624d.f26626b;
                                        sharedPreferencesD = C1561kH.d(context);
                                    } else {
                                        sharedPreferencesD = null;
                                    }
                                    if (sharedPreferencesD != null) {
                                        F8.f13323a.set(new N7(sharedPreferencesD));
                                    }
                                    if (!o7.f15141i) {
                                        C1294f8 c1294f9 = AbstractC1604l8.f19715d;
                                        if (((Long) c1294f9.l()).longValue() > 0 && AbstractC2987b.A0(o7.f15139g, "crash_without_write") >= ((Long) c1294f9.l()).longValue()) {
                                            o7.f15142j = true;
                                            o7.f15135c = true;
                                            o7.f15136d = false;
                                            o7.f15134b.open();
                                        } else if (o7.f15141i) {
                                            Context context2 = o7.f15139g;
                                            if (!((Boolean) AbstractC1915r8.f20685h.l()).booleanValue()) {
                                                if (((Boolean) AbstractC1915r8.f20686i.l()).booleanValue()) {
                                                    threadPolicy = StrictMode.getThreadPolicy();
                                                    StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().permitDiskWrites().build());
                                                    string = sharedPreferences.getString("app_settings_json", "{}");
                                                    StrictMode.setThreadPolicy(threadPolicy);
                                                    if (new JSONObject(string).optBoolean("local_flags_enabled")) {
                                                    }
                                                }
                                                if (context == null) {
                                                    o7.f15136d = false;
                                                    o7.f15134b.open();
                                                } else {
                                                    C1561kH c1561kH2 = C3099q.f26624d.f26626b;
                                                    o7.f15137e = C1561kH.d(context);
                                                    if (!((Boolean) AbstractC1915r8.f20678a.l()).booleanValue()) {
                                                        sharedPreferences2.registerOnSharedPreferenceChangeListener(o7);
                                                    }
                                                    o7.c(o7.f15137e);
                                                    o7.f15135c = true;
                                                    o7.f15136d = false;
                                                    o7.f15134b.open();
                                                }
                                            }
                                            context = o7.f15139g;
                                            if (context == null) {
                                                o7.f15136d = false;
                                                o7.f15134b.open();
                                            } else {
                                                C1561kH c1561kH3 = C3099q.f26624d.f26626b;
                                                o7.f15137e = C1561kH.d(context);
                                                if (!((Boolean) AbstractC1915r8.f20678a.l()).booleanValue()) {
                                                    sharedPreferences2.registerOnSharedPreferenceChangeListener(o7);
                                                }
                                                o7.c(o7.f15137e);
                                                o7.f15135c = true;
                                                o7.f15136d = false;
                                                o7.f15134b.open();
                                            }
                                        } else {
                                            c1294f8 = AbstractC1604l8.f19717f;
                                            if (((Long) c1294f8.l()).longValue() > 0 || AbstractC2987b.A0(o7.f15139g, "init_without_write") < ((Long) c1294f8.l()).longValue()) {
                                                Context context3 = o7.f15139g;
                                                if (!((Boolean) AbstractC1915r8.f20685h.l()).booleanValue()) {
                                                    if (((Boolean) AbstractC1915r8.f20686i.l()).booleanValue() && (sharedPreferences = context3.getSharedPreferences("admob", 0)) != null) {
                                                        threadPolicy = StrictMode.getThreadPolicy();
                                                        try {
                                                            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().permitDiskWrites().build());
                                                            string = sharedPreferences.getString("app_settings_json", "{}");
                                                            StrictMode.setThreadPolicy(threadPolicy);
                                                            try {
                                                                if (new JSONObject(string).optBoolean("local_flags_enabled")) {
                                                                }
                                                            } catch (JSONException unused2) {
                                                            }
                                                        } catch (Throwable th) {
                                                            StrictMode.setThreadPolicy(threadPolicy);
                                                            throw th;
                                                        }
                                                    }
                                                    if (context == null) {
                                                        o7.f15136d = false;
                                                        o7.f15134b.open();
                                                    } else {
                                                        C1561kH c1561kH4 = C3099q.f26624d.f26626b;
                                                        o7.f15137e = C1561kH.d(context);
                                                        if (!((Boolean) AbstractC1915r8.f20678a.l()).booleanValue() && (sharedPreferences2 = o7.f15137e) != null) {
                                                            sharedPreferences2.registerOnSharedPreferenceChangeListener(o7);
                                                        }
                                                        o7.c(o7.f15137e);
                                                        o7.f15135c = true;
                                                        o7.f15136d = false;
                                                        o7.f15134b.open();
                                                    }
                                                }
                                                context = o7.f15139g;
                                                if (context == null) {
                                                    o7.f15136d = false;
                                                    o7.f15134b.open();
                                                } else {
                                                    C1561kH c1561kH5 = C3099q.f26624d.f26626b;
                                                    o7.f15137e = C1561kH.d(context);
                                                    if (!((Boolean) AbstractC1915r8.f20678a.l()).booleanValue()) {
                                                        sharedPreferences2.registerOnSharedPreferenceChangeListener(o7);
                                                    }
                                                    o7.c(o7.f15137e);
                                                    o7.f15135c = true;
                                                    o7.f15136d = false;
                                                    o7.f15134b.open();
                                                }
                                            } else {
                                                o7.f15142j = true;
                                                o7.f15135c = true;
                                                o7.f15136d = false;
                                                o7.f15134b.open();
                                            }
                                        }
                                    } else if (o7.f15141i) {
                                        c1294f8 = AbstractC1604l8.f19717f;
                                        if (((Long) c1294f8.l()).longValue() > 0) {
                                            Context context4 = o7.f15139g;
                                            if (!((Boolean) AbstractC1915r8.f20685h.l()).booleanValue()) {
                                                if (((Boolean) AbstractC1915r8.f20686i.l()).booleanValue()) {
                                                    threadPolicy = StrictMode.getThreadPolicy();
                                                    StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().permitDiskWrites().build());
                                                    string = sharedPreferences.getString("app_settings_json", "{}");
                                                    StrictMode.setThreadPolicy(threadPolicy);
                                                    if (new JSONObject(string).optBoolean("local_flags_enabled")) {
                                                    }
                                                }
                                                if (context == null) {
                                                    o7.f15136d = false;
                                                    o7.f15134b.open();
                                                } else {
                                                    C1561kH c1561kH6 = C3099q.f26624d.f26626b;
                                                    o7.f15137e = C1561kH.d(context);
                                                    if (!((Boolean) AbstractC1915r8.f20678a.l()).booleanValue()) {
                                                        sharedPreferences2.registerOnSharedPreferenceChangeListener(o7);
                                                    }
                                                    o7.c(o7.f15137e);
                                                    o7.f15135c = true;
                                                    o7.f15136d = false;
                                                    o7.f15134b.open();
                                                }
                                            }
                                            context = o7.f15139g;
                                            if (context == null) {
                                                o7.f15136d = false;
                                                o7.f15134b.open();
                                            } else {
                                                C1561kH c1561kH7 = C3099q.f26624d.f26626b;
                                                o7.f15137e = C1561kH.d(context);
                                                if (!((Boolean) AbstractC1915r8.f20678a.l()).booleanValue()) {
                                                    sharedPreferences2.registerOnSharedPreferenceChangeListener(o7);
                                                }
                                                o7.c(o7.f15137e);
                                                o7.f15135c = true;
                                                o7.f15136d = false;
                                                o7.f15134b.open();
                                            }
                                        } else {
                                            Context context5 = o7.f15139g;
                                            if (!((Boolean) AbstractC1915r8.f20685h.l()).booleanValue()) {
                                                if (((Boolean) AbstractC1915r8.f20686i.l()).booleanValue()) {
                                                    threadPolicy = StrictMode.getThreadPolicy();
                                                    StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().permitDiskWrites().build());
                                                    string = sharedPreferences.getString("app_settings_json", "{}");
                                                    StrictMode.setThreadPolicy(threadPolicy);
                                                    if (new JSONObject(string).optBoolean("local_flags_enabled")) {
                                                    }
                                                }
                                                if (context == null) {
                                                    o7.f15136d = false;
                                                    o7.f15134b.open();
                                                } else {
                                                    C1561kH c1561kH8 = C3099q.f26624d.f26626b;
                                                    o7.f15137e = C1561kH.d(context);
                                                    if (!((Boolean) AbstractC1915r8.f20678a.l()).booleanValue()) {
                                                        sharedPreferences2.registerOnSharedPreferenceChangeListener(o7);
                                                    }
                                                    o7.c(o7.f15137e);
                                                    o7.f15135c = true;
                                                    o7.f15136d = false;
                                                    o7.f15134b.open();
                                                }
                                            }
                                            context = o7.f15139g;
                                            if (context == null) {
                                                o7.f15136d = false;
                                                o7.f15134b.open();
                                            } else {
                                                C1561kH c1561kH9 = C3099q.f26624d.f26626b;
                                                o7.f15137e = C1561kH.d(context);
                                                if (!((Boolean) AbstractC1915r8.f20678a.l()).booleanValue()) {
                                                    sharedPreferences2.registerOnSharedPreferenceChangeListener(o7);
                                                }
                                                o7.c(o7.f15137e);
                                                o7.f15135c = true;
                                                o7.f15136d = false;
                                                o7.f15134b.open();
                                            }
                                        }
                                    } else {
                                        Context context6 = o7.f15139g;
                                        if (!((Boolean) AbstractC1915r8.f20685h.l()).booleanValue()) {
                                            if (((Boolean) AbstractC1915r8.f20686i.l()).booleanValue()) {
                                                threadPolicy = StrictMode.getThreadPolicy();
                                                StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().permitDiskWrites().build());
                                                string = sharedPreferences.getString("app_settings_json", "{}");
                                                StrictMode.setThreadPolicy(threadPolicy);
                                                if (new JSONObject(string).optBoolean("local_flags_enabled")) {
                                                }
                                            }
                                            if (context == null) {
                                                o7.f15136d = false;
                                                o7.f15134b.open();
                                            } else {
                                                C1561kH c1561kH10 = C3099q.f26624d.f26626b;
                                                o7.f15137e = C1561kH.d(context);
                                                if (!((Boolean) AbstractC1915r8.f20678a.l()).booleanValue()) {
                                                    sharedPreferences2.registerOnSharedPreferenceChangeListener(o7);
                                                }
                                                o7.c(o7.f15137e);
                                                o7.f15135c = true;
                                                o7.f15136d = false;
                                                o7.f15134b.open();
                                            }
                                        }
                                        context = o7.f15139g;
                                        if (context == null) {
                                            o7.f15136d = false;
                                            o7.f15134b.open();
                                        } else {
                                            C1561kH c1561kH11 = C3099q.f26624d.f26626b;
                                            o7.f15137e = C1561kH.d(context);
                                            if (!((Boolean) AbstractC1915r8.f20678a.l()).booleanValue()) {
                                                sharedPreferences2.registerOnSharedPreferenceChangeListener(o7);
                                            }
                                            o7.c(o7.f15137e);
                                            o7.f15135c = true;
                                            o7.f15136d = false;
                                            o7.f15134b.open();
                                        }
                                    }
                                } catch (Throwable th2) {
                                    o7.f15136d = false;
                                    o7.f15134b.open();
                                    throw th2;
                                }
                            }
                        } catch (Throwable th3) {
                            throw th3;
                        }
                    }
                }
                return null;
            default:
                return new C1983sO(this.f15335H);
        }
    }
}
