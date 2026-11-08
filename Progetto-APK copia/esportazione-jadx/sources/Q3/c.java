package Q3;

import android.content.Context;
import com.google.android.gms.internal.measurement.U1;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final c f6036b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public U1 f6037a;

    static {
        c cVar = new c();
        cVar.f6037a = null;
        f6036b = cVar;
    }

    public static U1 a(Context context) {
        U1 u7;
        c cVar = f6036b;
        synchronized (cVar) {
            try {
                if (cVar.f6037a == null) {
                    if (context.getApplicationContext() != null) {
                        context = context.getApplicationContext();
                    }
                    cVar.f6037a = new U1(context);
                }
                u7 = cVar.f6037a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return u7;
    }
}
