package P1;

import android.content.Context;
import android.content.Intent;
import android.os.RemoteException;
import android.util.Log;
import java.util.Arrays;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f5822a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final l f5823b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Executor f5824c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5825d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final n f5826e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public i f5827f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final o f5828g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AtomicBoolean f5829h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final m f5830i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final m f5831j;

    /* JADX WARN: Type inference failed for: r0v0, types: [P1.m] */
    /* JADX WARN: Type inference failed for: r0v1, types: [P1.m] */
    public q(Context context, String str, Intent intent, l lVar, Executor executor) {
        this.f5822a = str;
        this.f5823b = lVar;
        this.f5824c = executor;
        Context applicationContext = context.getApplicationContext();
        this.f5828g = new o(this);
        final int i8 = 0;
        this.f5829h = new AtomicBoolean(false);
        p pVar = new p(this);
        this.f5830i = new Runnable(this) { // from class: P1.m

            /* JADX INFO: renamed from: H, reason: collision with root package name */
            public final /* synthetic */ q f5816H;

            {
                this.f5816H = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                k kVar;
                switch (i8) {
                    case 0:
                        q qVar = this.f5816H;
                        q0.h(qVar, "this$0");
                        try {
                            i iVar = qVar.f5827f;
                            if (iVar != null) {
                                qVar.f5825d = iVar.X2(qVar.f5828g, qVar.f5822a);
                                l lVar2 = qVar.f5823b;
                                n nVar = qVar.f5826e;
                                if (nVar != null) {
                                    lVar2.a(nVar);
                                    return;
                                } else {
                                    q0.I("observer");
                                    throw null;
                                }
                            }
                            return;
                        } catch (RemoteException e8) {
                            Log.w("ROOM", "Cannot register multi-instance invalidation callback", e8);
                            return;
                        }
                    default:
                        q qVar2 = this.f5816H;
                        q0.h(qVar2, "this$0");
                        l lVar3 = qVar2.f5823b;
                        n nVar2 = qVar2.f5826e;
                        if (nVar2 == null) {
                            q0.I("observer");
                            throw null;
                        }
                        lVar3.getClass();
                        synchronized (lVar3.f5811j) {
                            kVar = (k) lVar3.f5811j.c(nVar2);
                        }
                        if (kVar != null) {
                            j jVar = lVar3.f5810i;
                            int[] iArr = kVar.f5798b;
                            if (jVar.c(Arrays.copyOf(iArr, iArr.length))) {
                                x xVar = lVar3.f5802a;
                                if (xVar.k()) {
                                    lVar3.d(xVar.g().getWritableDatabase());
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        return;
                }
            }
        };
        final int i9 = 1;
        this.f5831j = new Runnable(this) { // from class: P1.m

            /* JADX INFO: renamed from: H, reason: collision with root package name */
            public final /* synthetic */ q f5816H;

            {
                this.f5816H = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                k kVar;
                switch (i9) {
                    case 0:
                        q qVar = this.f5816H;
                        q0.h(qVar, "this$0");
                        try {
                            i iVar = qVar.f5827f;
                            if (iVar != null) {
                                qVar.f5825d = iVar.X2(qVar.f5828g, qVar.f5822a);
                                l lVar2 = qVar.f5823b;
                                n nVar = qVar.f5826e;
                                if (nVar != null) {
                                    lVar2.a(nVar);
                                    return;
                                } else {
                                    q0.I("observer");
                                    throw null;
                                }
                            }
                            return;
                        } catch (RemoteException e8) {
                            Log.w("ROOM", "Cannot register multi-instance invalidation callback", e8);
                            return;
                        }
                    default:
                        q qVar2 = this.f5816H;
                        q0.h(qVar2, "this$0");
                        l lVar3 = qVar2.f5823b;
                        n nVar2 = qVar2.f5826e;
                        if (nVar2 == null) {
                            q0.I("observer");
                            throw null;
                        }
                        lVar3.getClass();
                        synchronized (lVar3.f5811j) {
                            kVar = (k) lVar3.f5811j.c(nVar2);
                        }
                        if (kVar != null) {
                            j jVar = lVar3.f5810i;
                            int[] iArr = kVar.f5798b;
                            if (jVar.c(Arrays.copyOf(iArr, iArr.length))) {
                                x xVar = lVar3.f5802a;
                                if (xVar.k()) {
                                    lVar3.d(xVar.g().getWritableDatabase());
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        return;
                }
            }
        };
        Object[] array = lVar.f5805d.keySet().toArray(new String[0]);
        q0.f(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        this.f5826e = new n(this, (String[]) array);
        applicationContext.bindService(intent, pVar, 1);
    }
}
