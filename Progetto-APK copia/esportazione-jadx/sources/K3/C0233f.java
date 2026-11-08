package K3;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.SparseIntArray;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.AbstractC0631g;
import com.google.android.gms.common.internal.AbstractC0637m;
import com.google.android.gms.common.internal.C0634j;
import com.google.android.gms.common.internal.C0642s;
import com.google.android.gms.common.internal.C0643t;
import com.google.protobuf.U2;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: K3.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0233f implements Handler.Callback {

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public static final Status f4534U = new Status(4, "Sign-out occurred while this API call was in progress.", null, null);

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public static final Status f4535V = new Status(4, "The user must be signed in to make this API call.", null, null);

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public static final Object f4536W = new Object();

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public static C0233f f4537X;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public long f4538G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public boolean f4539H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public C0643t f4540I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public N3.b f4541J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final Context f4542K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final J3.e f4543L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final p096m2.l f4544M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final AtomicInteger f4545N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final AtomicInteger f4546O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final ConcurrentHashMap f4547P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final p132r.g f4548Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final p132r.g f4549R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final X3.d f4550S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public volatile boolean f4551T;

    public C0233f(Context context, Looper looper) {
        J3.e eVar = J3.e.f4143d;
        this.f4538G = 10000L;
        this.f4539H = false;
        this.f4545N = new AtomicInteger(1);
        this.f4546O = new AtomicInteger(0);
        this.f4547P = new ConcurrentHashMap(5, 0.75f, 1);
        this.f4548Q = new p132r.g(0);
        this.f4549R = new p132r.g(0);
        this.f4551T = true;
        this.f4542K = context;
        X3.d dVar = new X3.d(looper, this, 0);
        this.f4550S = dVar;
        this.f4543L = eVar;
        this.f4544M = new p096m2.l();
        PackageManager packageManager = context.getPackageManager();
        if (AbstractC2987b.f25033K == null) {
            AbstractC2987b.f25033K = Boolean.valueOf(U2.m.a() && packageManager.hasSystemFeature("android.hardware.type.automotive"));
        }
        if (AbstractC2987b.f25033K.booleanValue()) {
            this.f4551T = false;
        }
        dVar.sendMessage(dVar.obtainMessage(6));
    }

    public static Status c(C0228a c0228a, J3.b bVar) {
        return new Status(17, U2.m("API: ", c0228a.f4526b.f11762b, " is not available on this device. Connection failed with: ", String.valueOf(bVar)), bVar.f4134I, bVar);
    }

    public static C0233f f(Context context) {
        C0233f c0233f;
        synchronized (f4536W) {
            try {
                if (f4537X == null) {
                    Looper looper = AbstractC0637m.b().getLooper();
                    Context applicationContext = context.getApplicationContext();
                    Object obj = J3.e.f4142c;
                    f4537X = new C0233f(applicationContext, looper);
                }
                c0233f = f4537X;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0233f;
    }

    public final boolean a() {
        if (this.f4539H) {
            return false;
        }
        C0642s c0642s = com.google.android.gms.common.internal.r.a().f11892a;
        if (c0642s != null && !c0642s.f11894H) {
            return false;
        }
        int i8 = ((SparseIntArray) this.f4544M.f27231H).get(203400000, -1);
        return i8 == -1 || i8 == 0;
    }

    public final boolean b(J3.b bVar, int i8) {
        J3.e eVar = this.f4543L;
        eVar.getClass();
        Context context = this.f4542K;
        if (Q3.b.p(context)) {
            return false;
        }
        int i9 = bVar.f4133H;
        PendingIntent activity = bVar.f4134I;
        if (!((i9 == 0 || activity == null) ? false : true)) {
            activity = null;
            Intent intentB = eVar.b(i9, context, null);
            if (intentB != null) {
                activity = PendingIntent.getActivity(context, 0, intentB, Build.VERSION.SDK_INT >= 23 ? 201326592 : 134217728);
            }
        }
        if (activity == null) {
            return false;
        }
        int i10 = GoogleApiActivity.f11749H;
        Intent intent = new Intent(context, (Class<?>) GoogleApiActivity.class);
        intent.putExtra("pending_intent", activity);
        intent.putExtra("failing_client_id", i8);
        intent.putExtra("notify_manager", true);
        eVar.h(context, i9, PendingIntent.getActivity(context, 0, intent, X3.c.f7658a | 134217728));
        return true;
    }

    public final z d(com.google.android.gms.common.api.j jVar) {
        ConcurrentHashMap concurrentHashMap = this.f4547P;
        C0228a apiKey = jVar.getApiKey();
        z zVar = (z) concurrentHashMap.get(apiKey);
        if (zVar == null) {
            zVar = new z(this, jVar);
            concurrentHashMap.put(apiKey, zVar);
        }
        if (zVar.f4581H.requiresSignIn()) {
            this.f4549R.add(apiKey);
        }
        zVar.l();
        return zVar;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0046  */
    public final void e(p052g4.i iVar, int i8, com.google.android.gms.common.api.j jVar) {
        F f8;
        if (i8 != 0) {
            C0228a apiKey = jVar.getApiKey();
            if (a()) {
                C0642s c0642s = com.google.android.gms.common.internal.r.a().f11892a;
                boolean z7 = true;
                if (c0642s != null) {
                    if (c0642s.f11894H) {
                        z zVar = (z) this.f4547P.get(apiKey);
                        if (zVar != null) {
                            Object obj = zVar.f4581H;
                            if (obj instanceof AbstractC0631g) {
                                AbstractC0631g abstractC0631g = (AbstractC0631g) obj;
                                if (!abstractC0631g.hasConnectionInfo() || abstractC0631g.isConnecting()) {
                                    z7 = c0642s.f11895I;
                                } else {
                                    C0634j c0634jA = F.a(zVar, abstractC0631g, i8);
                                    if (c0634jA != null) {
                                        zVar.f4591R++;
                                        z7 = c0634jA.f11855I;
                                    }
                                }
                            }
                        } else {
                            z7 = c0642s.f11895I;
                        }
                    }
                    f8 = null;
                }
                f8 = new F(this, i8, apiKey, z7 ? System.currentTimeMillis() : 0L, z7 ? SystemClock.elapsedRealtime() : 0L);
            } else {
                f8 = null;
            }
            if (f8 != null) {
                final X3.d dVar = this.f4550S;
                dVar.getClass();
                Executor executor = new Executor() { // from class: K3.x
                    @Override // java.util.concurrent.Executor
                    public final void execute(Runnable runnable) {
                        dVar.post(runnable);
                    }
                };
                p052g4.r rVar = iVar.f25345a;
                rVar.getClass();
                rVar.f25370b.i(new p052g4.o(executor, f8));
                rVar.o();
            }
        }
    }

    public final p052g4.r g(com.google.android.gms.common.api.j jVar, AbstractC0240m abstractC0240m, AbstractC0246t abstractC0246t, Runnable runnable) {
        p052g4.i iVar = new p052g4.i();
        e(iVar, abstractC0240m.f4560d, jVar);
        H h8 = new H(new Q(new I(abstractC0240m, abstractC0246t, runnable), iVar), this.f4546O.get(), jVar);
        X3.d dVar = this.f4550S;
        dVar.sendMessage(dVar.obtainMessage(8, h8));
        return iVar.f25345a;
    }

    public final void h(J3.b bVar, int i8) {
        if (b(bVar, i8)) {
            return;
        }
        X3.d dVar = this.f4550S;
        dVar.sendMessage(dVar.obtainMessage(5, i8, 0, bVar));
    }

    /* JADX WARN: Code duplicated, block: B:147:0x0352  */
    /* JADX WARN: Code duplicated, block: B:158:0x037c  */
    /* JADX WARN: Code duplicated, block: B:160:0x0382  */
    /* JADX WARN: Code duplicated, block: B:161:0x03a1  */
    /* JADX WARN: Code duplicated, block: B:162:0x03ac  */
    /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r2v9 K3.z, still in use, count: 2, list:
          (r2v9 K3.z) from 0x0374: IGET (r2v9 K3.z) A[WRAPPED] (LINE:885) K3.z.M int
          (r2v9 K3.z) from 0x037a: PHI (r2 I:??) = (r2v6 K3.z), (r2v9 K3.z) binds: [B:156:0x0379, B:208:0x037a] A[DONT_GENERATE, DONT_INLINE]
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
        	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:93)
        	at jadx.core.dex.visitors.regions.TernaryMod.makeTernaryInsn(TernaryMod.java:132)
        	at jadx.core.dex.visitors.regions.TernaryMod.processRegion(TernaryMod.java:67)
        	at jadx.core.dex.visitors.regions.TernaryMod.enterRegion(TernaryMod.java:50)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:96)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
        	at jadx.core.dex.visitors.regions.TernaryMod.process(TernaryMod.java:36)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.process(IfRegionVisitor.java:44)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.visit(IfRegionVisitor.java:30)
        */
    @Override // android.os.Handler.Callback
    public final boolean handleMessage(android.os.Message r12) {
        /*
            Method dump skipped, instruction units count: 1162
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: K3.C0233f.handleMessage(android.os.Message):boolean");
    }
}
