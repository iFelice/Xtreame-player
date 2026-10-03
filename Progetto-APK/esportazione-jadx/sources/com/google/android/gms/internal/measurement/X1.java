package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.net.Uri;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public abstract class X1 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Object f23041f = new Object();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static volatile L1 f23042g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final AtomicInteger f23043h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p113o3.G f23044a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f23045b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f23046c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public volatile int f23047d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public volatile Object f23048e;

    static {
        new AtomicReference();
        f23043h = new AtomicInteger();
    }

    public /* synthetic */ X1(p113o3.G g8, String str, Object obj) {
        if (((Uri) g8.f27884d) == null) {
            throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
        }
        this.f23044a = g8;
        this.f23045b = str;
        this.f23046c = obj;
    }

    public abstract Object a(Object obj);

    /* JADX WARN: Code duplicated, block: B:22:0x005a A[PHI: r2
      0x005a: PHI (r2v1 y4.j) = (r2v0 y4.j), (r2v0 y4.j), (r2v4 y4.j), (r2v4 y4.j) binds: [B:8:0x0014, B:10:0x0018, B:12:0x0024, B:18:0x0049] A[DONT_GENERATE, DONT_INLINE]] */
    public final Object b() {
        String str;
        String strB;
        Object objB;
        p190y4.t tVar;
        p132r.m mVar;
        int i8 = f23043h.get();
        if (this.f23047d < i8) {
            synchronized (this) {
                try {
                    if (this.f23047d < i8) {
                        L1 l4 = f23042g;
                        p190y4.j jVar = p190y4.a.f31418G;
                        Object objA = null;
                        if (l4 == null || (tVar = l4.f22955b) == null) {
                            str = null;
                        } else {
                            jVar = (p190y4.j) tVar.get();
                            if (jVar.b()) {
                                N1 n7 = (N1) jVar.a();
                                Uri uri = (Uri) this.f23044a.f27884d;
                                String str2 = this.f23045b;
                                if (uri != null) {
                                    mVar = (p132r.m) n7.f22973a.get(uri.toString());
                                } else {
                                    n7.getClass();
                                    mVar = null;
                                }
                                if (mVar == null) {
                                    str = null;
                                } else {
                                    str = (String) mVar.get(HttpUrl.FRAGMENT_ENCODE_SET.concat(str2));
                                }
                            } else {
                                str = null;
                            }
                        }
                        p190y4.k.v("Must call PhenotypeFlagInitializer.maybeInit() first", l4 != null);
                        p113o3.G g8 = this.f23044a;
                        Uri uri2 = (Uri) g8.f27884d;
                        if (uri2 == null) {
                            Context context = l4.f22954a;
                            throw null;
                        }
                        M1 m1A = R1.a(l4.f22954a, uri2) ? M1.a(l4.f22954a.getContentResolver(), uri2, new T1(0)) : null;
                        Object objA2 = (m1A == null || (objB = m1A.b(this.f23045b)) == null) ? null : a(objB);
                        if (objA2 == null) {
                            if (!g8.f27882b && (strB = P1.a(l4.f22954a).b(this.f23045b)) != null) {
                                objA = a(strB);
                            }
                            objA2 = objA == null ? this.f23046c : objA;
                        }
                        if (jVar.b()) {
                            objA2 = str == null ? this.f23046c : a(str);
                        }
                        this.f23048e = objA2;
                        this.f23047d = i8;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f23048e;
    }
}
