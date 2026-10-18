package p021c4;

import S3.g;
import com.google.android.gms.internal.ads.Cw;

/* JADX INFO: loaded from: classes.dex */
public final class D {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Object f10701f = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f10702a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C f10703b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f10704c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f10705d = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public volatile Object f10706e = null;

    public /* synthetic */ D(String str, Object obj, C c8) {
        this.f10702a = str;
        this.f10704c = obj;
        this.f10703b = c8;
    }

    public final Object a(Object obj) {
        synchronized (this.f10705d) {
        }
        if (obj != null) {
            return obj;
        }
        if (Cw.f12725i == null) {
            return this.f10704c;
        }
        synchronized (f10701f) {
            try {
                if (g.d()) {
                    return this.f10706e == null ? this.f10704c : this.f10706e;
                }
                try {
                    for (D d6 : E.f10764a) {
                        if (g.d()) {
                            throw new IllegalStateException("Refreshing flag cache must be done on a worker thread.");
                        }
                        Object objZza = null;
                        try {
                            C c8 = d6.f10703b;
                            if (c8 != null) {
                                objZza = c8.zza();
                            }
                        } catch (IllegalStateException unused) {
                        }
                        synchronized (f10701f) {
                            d6.f10706e = objZza;
                        }
                    }
                } catch (SecurityException unused2) {
                }
                C c9 = this.f10703b;
                if (c9 != null) {
                    try {
                        return c9.zza();
                    } catch (IllegalStateException | SecurityException unused3) {
                    }
                }
                return this.f10704c;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
