package E1;

import android.content.Context;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class H {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static A f2649c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f2650a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f2651b = new ArrayList();

    static {
        Log.isLoggable("MediaRouter", 3);
    }

    public H(Context context) {
        this.f2650a = context;
    }

    public static void b() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new IllegalStateException("The media router service must only be accessed on the application's main thread.");
        }
    }

    public static A c() {
        A a8 = f2649c;
        if (a8 == null) {
            return null;
        }
        a8.d();
        return f2649c;
    }

    public static H d(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("context must not be null");
        }
        b();
        if (f2649c == null) {
            f2649c = new A(context.getApplicationContext());
        }
        ArrayList arrayList = f2649c.f2590g;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                H h8 = new H(context);
                arrayList.add(new WeakReference(h8));
                return h8;
            }
            H h9 = (H) ((WeakReference) arrayList.get(size)).get();
            if (h9 == null) {
                arrayList.remove(size);
            } else if (h9.f2650a == context) {
                return h9;
            }
        }
    }

    public final void a(C0181p c0181p, AbstractC0182q abstractC0182q, int i8) {
        r rVar;
        if (c0181p == null) {
            throw new IllegalArgumentException("selector must not be null");
        }
        if (abstractC0182q == null) {
            throw new IllegalArgumentException("callback must not be null");
        }
        b();
        ArrayList arrayList = this.f2651b;
        int size = arrayList.size();
        boolean z7 = false;
        int i9 = 0;
        while (true) {
            if (i9 >= size) {
                i9 = -1;
                break;
            } else if (((r) arrayList.get(i9)).f2799b == abstractC0182q) {
                break;
            } else {
                i9++;
            }
        }
        if (i9 < 0) {
            rVar = new r(this, abstractC0182q);
            arrayList.add(rVar);
        } else {
            rVar = (r) arrayList.get(i9);
        }
        if (i8 != rVar.f2801d) {
            rVar.f2801d = i8;
            z7 = true;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        boolean z8 = (i8 & 1) == 0 ? z7 : true;
        rVar.f2802e = jElapsedRealtime;
        C0181p c0181p2 = rVar.f2800c;
        c0181p2.a();
        c0181p.a();
        if (!c0181p2.f2797b.containsAll(c0181p.f2797b)) {
            f0 f0Var = new f0(rVar.f2800c);
            f0Var.c(c0181p.b());
            rVar.f2800c = f0Var.d();
        } else if (!z8) {
            return;
        }
        c().m();
    }

    public final void e(AbstractC0182q abstractC0182q) {
        if (abstractC0182q == null) {
            throw new IllegalArgumentException("callback must not be null");
        }
        b();
        ArrayList arrayList = this.f2651b;
        int size = arrayList.size();
        int i8 = 0;
        while (true) {
            if (i8 >= size) {
                i8 = -1;
                break;
            } else if (((r) arrayList.get(i8)).f2799b == abstractC0182q) {
                break;
            } else {
                i8++;
            }
        }
        if (i8 >= 0) {
            arrayList.remove(i8);
            c().m();
        }
    }
}
