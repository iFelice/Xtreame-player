package com.google.android.gms.internal.measurement;

import Z3.C0433o;
import android.content.ContentResolver;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Binder;
import android.os.StrictMode;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class M1 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final p132r.f f22959h = new p132r.f(0);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String[] f22960i = {"key", "value"};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ContentResolver f22961a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Uri f22962b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Runnable f22963c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final I1 f22964d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile Map f22966f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f22965e = new Object();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ArrayList f22967g = new ArrayList();

    public M1(ContentResolver contentResolver, Uri uri, T1 t7) {
        contentResolver.getClass();
        uri.getClass();
        this.f22961a = contentResolver;
        this.f22962b = uri;
        this.f22963c = t7;
        this.f22964d = new I1(this, 1);
    }

    public static M1 a(ContentResolver contentResolver, Uri uri, T1 t7) {
        M1 m7;
        synchronized (M1.class) {
            p132r.f fVar = f22959h;
            m7 = (M1) fVar.get(uri);
            if (m7 == null) {
                try {
                    M1 m8 = new M1(contentResolver, uri, t7);
                    try {
                        contentResolver.registerContentObserver(uri, false, m8.f22964d);
                        fVar.put(uri, m8);
                    } catch (SecurityException unused) {
                    }
                    m7 = m8;
                } catch (SecurityException unused2) {
                }
            }
        }
        return m7;
    }

    public static synchronized void d() {
        try {
            p132r.f fVar = f22959h;
            for (M1 m7 : (p132r.e) fVar.values()) {
                m7.f22961a.unregisterContentObserver(m7.f22964d);
            }
            fVar.clear();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final /* bridge */ /* synthetic */ Object b(String str) {
        return (String) c().get(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v4, types: [android.os.StrictMode$ThreadPolicy, java.util.Map] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    public final Map c() {
        Map mapEmptyMap;
        ?? r7;
        Object objZ;
        Map map = this.f22966f;
        ?? r8 = map;
        if (map == null) {
            synchronized (this.f22965e) {
                ?? r9 = this.f22966f;
                r7 = r9;
                if (r9 == 0) {
                    try {
                        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
                        try {
                            try {
                                C0433o c0433o = new C0433o(this, 1);
                                try {
                                    objZ = c0433o.z();
                                } catch (SecurityException unused) {
                                    long jClearCallingIdentity = Binder.clearCallingIdentity();
                                    try {
                                        objZ = c0433o.z();
                                        Binder.restoreCallingIdentity(jClearCallingIdentity);
                                    } catch (Throwable th) {
                                        Binder.restoreCallingIdentity(jClearCallingIdentity);
                                        throw th;
                                    }
                                }
                                mapEmptyMap = (Map) objZ;
                            } catch (SQLiteException e8) {
                                e = e8;
                                Log.w("ConfigurationContentLdr", "Unable to query ContentProvider, using default values", e);
                                mapEmptyMap = Collections.emptyMap();
                            } catch (IllegalStateException e9) {
                                e = e9;
                                Log.w("ConfigurationContentLdr", "Unable to query ContentProvider, using default values", e);
                                mapEmptyMap = Collections.emptyMap();
                            }
                        } catch (SecurityException e10) {
                            e = e10;
                            Log.w("ConfigurationContentLdr", "Unable to query ContentProvider, using default values", e);
                            mapEmptyMap = Collections.emptyMap();
                        }
                        StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                        this.f22966f = mapEmptyMap;
                        r7 = mapEmptyMap;
                    } catch (Throwable th2) {
                        StrictMode.setThreadPolicy(r9);
                        throw th2;
                    }
                }
            }
            r8 = r7;
        }
        return r8 != 0 ? r8 : Collections.emptyMap();
    }
}
