package p093m;

import android.os.Looper;

/* JADX INFO: loaded from: classes.dex */
public final class b extends Q3.b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static volatile b f26647d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f26648e = new a(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final e f26649c = new e();

    public static b g0() {
        if (f26647d != null) {
            return f26647d;
        }
        synchronized (b.class) {
            try {
                if (f26647d == null) {
                    f26647d = new b();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f26647d;
    }

    public final void h0(Runnable runnable) {
        e eVar = this.f26649c;
        if (eVar.f26655e == null) {
            synchronized (eVar.f26653c) {
                try {
                    if (eVar.f26655e == null) {
                        eVar.f26655e = e.g0(Looper.getMainLooper());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        eVar.f26655e.post(runnable);
    }
}
