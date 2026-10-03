package J2;

import F2.G;
import F2.v;
import Y.AbstractActivityC0409v;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
public final class n implements Handler.Callback {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final G f4108K = new G(9);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public volatile com.bumptech.glide.n f4109G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final G f4110H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final g f4111I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final l f4112J;

    public n(G g8) {
        g8 = g8 == null ? f4108K : g8;
        this.f4110H = g8;
        this.f4112J = new l(g8);
        this.f4111I = (v.f3168f && v.f3167e) ? new f() : new G(7);
    }

    public static Activity a(Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            return a(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    public final com.bumptech.glide.n b(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("You cannot start a load on a null Context");
        }
        char[] cArr = P2.o.f5906a;
        if (Looper.myLooper() == Looper.getMainLooper() && !(context instanceof Application)) {
            if (context instanceof AbstractActivityC0409v) {
                AbstractActivityC0409v abstractActivityC0409v = (AbstractActivityC0409v) context;
                if (!(Looper.myLooper() == Looper.getMainLooper())) {
                    return b(abstractActivityC0409v.getApplicationContext());
                }
                if (abstractActivityC0409v.isDestroyed()) {
                    throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
                }
                this.f4111I.c(abstractActivityC0409v);
                Activity activityA = a(abstractActivityC0409v);
                return this.f4112J.a(abstractActivityC0409v, com.bumptech.glide.b.a(abstractActivityC0409v.getApplicationContext()), abstractActivityC0409v.f8579J, abstractActivityC0409v.f7985X.R(), activityA == null || !activityA.isFinishing());
            }
            if (context instanceof ContextWrapper) {
                ContextWrapper contextWrapper = (ContextWrapper) context;
                if (contextWrapper.getBaseContext().getApplicationContext() != null) {
                    return b(contextWrapper.getBaseContext());
                }
            }
        }
        if (this.f4109G == null) {
            synchronized (this) {
                try {
                    if (this.f4109G == null) {
                        com.bumptech.glide.b bVarA = com.bumptech.glide.b.a(context.getApplicationContext());
                        G g8 = this.f4110H;
                        G g9 = new G(5);
                        G g10 = new G(8);
                        Context applicationContext = context.getApplicationContext();
                        g8.getClass();
                        this.f4109G = new com.bumptech.glide.n(bVarA, g9, g10, applicationContext);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f4109G;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        return false;
    }
}
