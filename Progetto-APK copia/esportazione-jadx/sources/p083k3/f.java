package p083k3;

import C2.C0091g;
import J2.t;
import U2.m;
import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.internal.ads.AbstractC1988se;
import com.google.android.gms.internal.ads.C1180cy;
import com.google.android.gms.internal.ads.C2224x5;
import com.google.android.gms.internal.ads.C4;
import com.google.android.gms.internal.ads.Dy;
import com.google.android.gms.internal.ads.E4;
import com.google.android.gms.internal.ads.G4;
import com.google.android.gms.internal.ads.J7;
import com.google.android.gms.internal.ads.O7;
import com.google.android.gms.internal.ads.Q7;
import java.io.File;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicReference;
import okhttp3.HttpUrl;
import p090l3.C3097p;
import p090l3.C3099q;
import p113o3.O;
import p120p3.a;
import p120p3.d;
import p120p3.h;

/* JADX INFO: loaded from: classes.dex */
public final class f implements Runnable, E4 {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public boolean f25946J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final boolean f25947K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final boolean f25948L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final ExecutorService f25949M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final C1180cy f25950N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public Context f25951O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final Context f25952P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public a f25953Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final a f25954R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final boolean f25955S;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public int f25957U;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Vector f25943G = new Vector();

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final AtomicReference f25944H = new AtomicReference();

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final AtomicReference f25945I = new AtomicReference();

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final CountDownLatch f25956T = new CountDownLatch(1);

    public f(Context context, a aVar) {
        this.f25951O = context;
        this.f25952P = context;
        this.f25953Q = aVar;
        this.f25954R = aVar;
        ExecutorService executorServiceNewCachedThreadPool = Executors.newCachedThreadPool();
        this.f25949M = executorServiceNewCachedThreadPool;
        J7 j8 = Q7.f15860j2;
        C3099q c3099q = C3099q.f26624d;
        boolean zBooleanValue = ((Boolean) c3099q.f26627c.a(j8)).booleanValue();
        this.f25955S = zBooleanValue;
        this.f25950N = C1180cy.a(context, executorServiceNewCachedThreadPool, zBooleanValue);
        J7 j9 = Q7.f15833g2;
        O7 o7 = c3099q.f26627c;
        this.f25947K = ((Boolean) o7.a(j9)).booleanValue();
        this.f25948L = ((Boolean) o7.a(Q7.f15869k2)).booleanValue();
        if (((Boolean) o7.a(Q7.f15851i2)).booleanValue()) {
            this.f25957U = 2;
        } else {
            this.f25957U = 1;
        }
        if (!((Boolean) o7.a(Q7.f15852i3)).booleanValue()) {
            this.f25946J = f();
        }
        if (((Boolean) o7.a(Q7.f15799c3)).booleanValue()) {
            AbstractC1988se.f20906a.execute(this);
            return;
        }
        d dVar = C3097p.f26618f.f26619a;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            AbstractC1988se.f20906a.execute(this);
        } else {
            run();
        }
    }

    @Override // com.google.android.gms.internal.ads.E4
    public final void a(View view) {
        E4 e4H = h();
        if (e4H != null) {
            e4H.a(view);
        }
    }

    @Override // com.google.android.gms.internal.ads.E4
    public final void b(StackTraceElement[] stackTraceElementArr) {
        E4 e4H;
        E4 e4H2;
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15988z2)).booleanValue()) {
            if (this.f25956T.getCount() != 0 || (e4H2 = h()) == null) {
                return;
            }
            e4H2.b(stackTraceElementArr);
            return;
        }
        if (!g() || (e4H = h()) == null) {
            return;
        }
        e4H.b(stackTraceElementArr);
    }

    @Override // com.google.android.gms.internal.ads.E4
    public final String c(Context context) {
        E4 e4H;
        if (!g() || (e4H = h()) == null) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        i();
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        return e4H.c(context);
    }

    @Override // com.google.android.gms.internal.ads.E4
    public final String d(Context context, String str, View view, Activity activity) {
        if (!g()) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        E4 e4H = h();
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.V9)).booleanValue()) {
            O o4 = l.f25980A.f25983c;
            O.h(view, 4);
        }
        if (e4H == null) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        i();
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        return e4H.d(context, str, view, activity);
    }

    @Override // com.google.android.gms.internal.ads.E4
    public final String e(Context context, String str, View view) {
        return d(context, str, view, null);
    }

    public final boolean f() {
        Context context = this.f25951O;
        C0091g c0091g = new C0091g(this, 10);
        C1180cy c1180cy = this.f25950N;
        Dy dy = new Dy(this.f25951O, m.h(context, c1180cy), c0091g, ((Boolean) C3099q.f26624d.f26627c.a(Q7.f15842h2)).booleanValue());
        long jCurrentTimeMillis = System.currentTimeMillis();
        synchronized (Dy.f12910f) {
            try {
                C2224x5 c2224x5F = dy.f(1);
                if (c2224x5F == null) {
                    dy.e(4025, jCurrentTimeMillis);
                } else {
                    File fileC = dy.c(c2224x5F.I());
                    if (!new File(fileC, "pcam.jar").exists()) {
                        dy.e(4026, jCurrentTimeMillis);
                    } else {
                        if (new File(fileC, "pcbc").exists()) {
                            dy.e(5019, jCurrentTimeMillis);
                            return true;
                        }
                        dy.e(4027, jCurrentTimeMillis);
                    }
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean g() {
        try {
            this.f25956T.await();
            return true;
        } catch (InterruptedException e8) {
            h.h("Interrupted during GADSignals creation.", e8);
            return false;
        }
    }

    public final E4 h() {
        return ((!this.f25947K || this.f25946J) && this.f25957U == 2) ? (E4) this.f25945I.get() : (E4) this.f25944H.get();
    }

    public final void i() {
        Vector<Object[]> vector = this.f25943G;
        E4 e4H = h();
        if (vector.isEmpty() || e4H == null) {
            return;
        }
        for (Object[] objArr : vector) {
            int length = objArr.length;
            if (length == 1) {
                e4H.zzk((MotionEvent) objArr[0]);
            } else if (length == 3) {
                e4H.zzl(((Integer) objArr[0]).intValue(), ((Integer) objArr[1]).intValue(), ((Integer) objArr[2]).intValue());
            }
        }
        vector.clear();
    }

    public final void j(boolean z7) {
        String str = this.f25953Q.f28196G;
        Context context = this.f25951O;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        Object obj = G4.f13476e0;
        this.f25944H.set(G4.r(context, new t(str, z7)));
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z7;
        try {
            J7 j8 = Q7.f15852i3;
            C3099q c3099q = C3099q.f26624d;
            if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
                this.f25946J = f();
            }
            boolean z8 = this.f25953Q.f28199J;
            boolean z9 = false;
            if (!((Boolean) c3099q.f26627c.a(Q7.f15693P0)).booleanValue() && z8) {
                z9 = true;
            }
            if ((!this.f25947K || this.f25946J) && this.f25957U != 1) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                try {
                    String str = this.f25953Q.f28196G;
                    Context context = this.f25951O;
                    Context applicationContext = context.getApplicationContext();
                    if (applicationContext != null) {
                        context = applicationContext;
                    }
                    C4 c4F = C4.f(str, context, z9, this.f25955S);
                    this.f25945I.set(c4F);
                    if (this.f25948L) {
                        synchronized (c4F) {
                            z7 = c4F.f12581V;
                        }
                        if (!z7) {
                            this.f25957U = 1;
                            j(z9);
                        }
                    }
                } catch (NullPointerException e8) {
                    this.f25957U = 1;
                    j(z9);
                    this.f25950N.b(2031, System.currentTimeMillis() - jCurrentTimeMillis, e8);
                }
            } else {
                j(z9);
                if (this.f25957U == 2) {
                    this.f25949M.execute(new p017c0.a(3, this, z9));
                }
            }
            this.f25956T.countDown();
            this.f25951O = null;
            this.f25953Q = null;
        } catch (Throwable th) {
            this.f25956T.countDown();
            this.f25951O = null;
            this.f25953Q = null;
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.E4
    public final String zzh(Context context, View view, Activity activity) {
        J7 j8 = Q7.U9;
        C3099q c3099q = C3099q.f26624d;
        boolean zBooleanValue = ((Boolean) c3099q.f26627c.a(j8)).booleanValue();
        O7 o7 = c3099q.f26627c;
        if (!zBooleanValue) {
            E4 e4H = h();
            if (((Boolean) o7.a(Q7.V9)).booleanValue()) {
                O o4 = l.f25980A.f25983c;
                O.h(view, 2);
            }
            return e4H != null ? e4H.zzh(context, view, activity) : HttpUrl.FRAGMENT_ENCODE_SET;
        }
        if (!g()) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        E4 e4H2 = h();
        if (((Boolean) o7.a(Q7.V9)).booleanValue()) {
            O o8 = l.f25980A.f25983c;
            O.h(view, 2);
        }
        return e4H2 != null ? e4H2.zzh(context, view, activity) : HttpUrl.FRAGMENT_ENCODE_SET;
    }

    @Override // com.google.android.gms.internal.ads.E4
    public final void zzk(MotionEvent motionEvent) {
        E4 e4H = h();
        if (e4H == null) {
            this.f25943G.add(new Object[]{motionEvent});
        } else {
            i();
            e4H.zzk(motionEvent);
        }
    }

    @Override // com.google.android.gms.internal.ads.E4
    public final void zzl(int i8, int i9, int i10) {
        E4 e4H = h();
        if (e4H == null) {
            this.f25943G.add(new Object[]{Integer.valueOf(i8), Integer.valueOf(i9), Integer.valueOf(i10)});
        } else {
            i();
            e4H.zzl(i8, i9, i10);
        }
    }
}
