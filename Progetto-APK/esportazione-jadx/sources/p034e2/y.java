package p034e2;

import P1.x;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.os.Build;
import androidx.work.impl.WorkDatabase;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p027d2.b;
import p027d2.n;
import p027d2.v;
import p058h2.c;
import p096m2.o;
import p096m2.r;
import p096m2.s;
import p096m2.u;
import p104n2.i;
import p104n2.p;
import p119p2.a;

/* JADX INFO: loaded from: classes.dex */
public final class y extends v {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static y f24839k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static y f24840l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final Object f24841m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f24842a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final b f24843b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final WorkDatabase f24844c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final a f24845d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f24846e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final n f24847f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final i f24848g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f24849h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public BroadcastReceiver.PendingResult f24850i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final o f24851j;

    static {
        n.f("WorkManagerImpl");
        f24839k = null;
        f24840l = null;
        f24841m = new Object();
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0582 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public y(android.content.Context r31, p027d2.b r32, p096m2.u r33) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 1542
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: p034e2.y.<init>(android.content.Context, d2.b, m2.u):void");
    }

    public static y v() {
        synchronized (f24841m) {
            try {
                y yVar = f24839k;
                if (yVar != null) {
                    return yVar;
                }
                return f24840l;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static y w(Context context) {
        y yVarV;
        synchronized (f24841m) {
            try {
                yVarV = v();
                if (yVarV == null) {
                    context.getApplicationContext();
                    throw new IllegalStateException("WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return yVarV;
    }

    public final void A(r rVar) {
        ((u) this.f24845d).m(new p(this, rVar, false));
    }

    public final void x() {
        synchronized (f24841m) {
            try {
                this.f24849h = true;
                BroadcastReceiver.PendingResult pendingResult = this.f24850i;
                if (pendingResult != null) {
                    pendingResult.finish();
                    this.f24850i = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void y() {
        ArrayList arrayListF;
        if (Build.VERSION.SDK_INT >= 23) {
            Context context = this.f24842a;
            String str = c.f25397K;
            JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
            if (jobScheduler != null && (arrayListF = c.f(context, jobScheduler)) != null && !arrayListF.isEmpty()) {
                Iterator it = arrayListF.iterator();
                while (it.hasNext()) {
                    c.b(jobScheduler, ((JobInfo) it.next()).getId());
                }
            }
        }
        s sVarU = this.f24844c.u();
        x xVar = sVarU.f27263a;
        xVar.b();
        r rVar = sVarU.f27273k;
        T1.i iVarC = rVar.c();
        xVar.c();
        try {
            iVarC.l();
            xVar.n();
            xVar.j();
            rVar.m(iVarC);
            q.a(this.f24843b, this.f24844c, this.f24846e);
        } catch (Throwable th) {
            xVar.j();
            rVar.m(iVarC);
            throw th;
        }
    }

    public final void z(r rVar, u uVar) {
        ((u) this.f24845d).m(new K.a(this, rVar, uVar, 6, 0));
    }
}
