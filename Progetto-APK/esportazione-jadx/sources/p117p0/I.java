package p117p0;

import android.os.Handler;
import com.google.android.gms.internal.measurement.H1;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class I implements q {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ArrayList f28042b = new ArrayList(50);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Handler f28043a;

    public I(Handler handler) {
        this.f28043a = handler;
    }

    public static H b() {
        H h8;
        ArrayList arrayList = f28042b;
        synchronized (arrayList) {
            try {
                h8 = arrayList.isEmpty() ? new H() : (H) arrayList.remove(arrayList.size() - 1);
            } catch (Throwable th) {
                throw th;
            }
        }
        return h8;
    }

    public final H a(int i8, Object obj) {
        H hB = b();
        hB.f28041a = this.f28043a.obtainMessage(i8, obj);
        return hB;
    }

    public final boolean c(Runnable runnable) {
        return this.f28043a.post(runnable);
    }

    public final void d(int i8) {
        H1.d(i8 != 0);
        this.f28043a.removeMessages(i8);
    }

    public final boolean e(int i8) {
        return this.f28043a.sendEmptyMessage(i8);
    }
}
