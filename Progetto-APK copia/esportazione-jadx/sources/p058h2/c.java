package p058h2;

import P1.x;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import android.os.PersistableBundle;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemjob.SystemJobService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Callable;
import p027d2.n;
import p034e2.p;
import p034e2.y;
import p079k.AbstractC3012d;
import p096m2.d;
import p096m2.f;
import p096m2.g;
import p096m2.j;
import p096m2.q;
import p104n2.i;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class c implements p {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final String f25397K = n.f("SystemJobScheduler");

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f25398G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final JobScheduler f25399H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final y f25400I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final b f25401J;

    public c(Context context, y yVar) {
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        b bVar = new b(context);
        this.f25398G = context;
        this.f25400I = yVar;
        this.f25399H = jobScheduler;
        this.f25401J = bVar;
    }

    public static void b(JobScheduler jobScheduler, int i8) {
        try {
            jobScheduler.cancel(i8);
        } catch (Throwable th) {
            n.d().c(f25397K, String.format(Locale.getDefault(), "Exception while trying to cancel job (%d)", Integer.valueOf(i8)), th);
        }
    }

    public static ArrayList e(Context context, JobScheduler jobScheduler, String str) {
        ArrayList<JobInfo> arrayListF = f(context, jobScheduler);
        if (arrayListF == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(2);
        for (JobInfo jobInfo : arrayListF) {
            j jVarG = g(jobInfo);
            if (jVarG != null && str.equals(jVarG.f27228a)) {
                arrayList.add(Integer.valueOf(jobInfo.getId()));
            }
        }
        return arrayList;
    }

    public static ArrayList f(Context context, JobScheduler jobScheduler) {
        List<JobInfo> allPendingJobs;
        try {
            allPendingJobs = jobScheduler.getAllPendingJobs();
        } catch (Throwable th) {
            n.d().c(f25397K, "getAllPendingJobs() is not reliable on this device.", th);
            allPendingJobs = null;
        }
        if (allPendingJobs == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(allPendingJobs.size());
        ComponentName componentName = new ComponentName(context, (Class<?>) SystemJobService.class);
        for (JobInfo jobInfo : allPendingJobs) {
            if (componentName.equals(jobInfo.getService())) {
                arrayList.add(jobInfo);
            }
        }
        return arrayList;
    }

    public static j g(JobInfo jobInfo) {
        PersistableBundle extras = jobInfo.getExtras();
        if (extras == null) {
            return null;
        }
        try {
            if (!extras.containsKey("EXTRA_WORK_SPEC_ID")) {
                return null;
            }
            return new j(extras.getString("EXTRA_WORK_SPEC_ID"), extras.getInt("EXTRA_WORK_SPEC_GENERATION", 0));
        } catch (NullPointerException unused) {
            return null;
        }
    }

    @Override // p034e2.p
    public final boolean a() {
        return true;
    }

    @Override // p034e2.p
    public final void c(q... qVarArr) {
        int iIntValue;
        ArrayList arrayListE;
        int iIntValue2;
        y yVar = this.f25400I;
        WorkDatabase workDatabase = yVar.f24844c;
        final i iVar = new i(workDatabase, 0);
        for (q qVar : qVarArr) {
            workDatabase.c();
            try {
                q qVarH = workDatabase.u().h(qVar.f27242a);
                String str = f25397K;
                String str2 = qVar.f27242a;
                if (qVarH == null) {
                    n.d().g(str, "Skipping scheduling " + str2 + " because it's no longer in the DB");
                    workDatabase.n();
                } else if (qVarH.f27243b != 1) {
                    n.d().g(str, "Skipping scheduling " + str2 + " because it is no longer enqueued");
                    workDatabase.n();
                } else {
                    j jVarA = f.a(qVar);
                    g gVarM = workDatabase.r().m(jVarA);
                    WorkDatabase workDatabase2 = iVar.f27448a;
                    if (gVarM != null) {
                        iIntValue = gVarM.f27219c;
                    } else {
                        yVar.f24843b.getClass();
                        final int i8 = yVar.f24843b.f24615g;
                        Object objM = workDatabase2.m(new Callable() { // from class: n2.h

                            /* JADX INFO: renamed from: b, reason: collision with root package name */
                            public final /* synthetic */ int f27446b = 0;

                            @Override // java.util.concurrent.Callable
                            public final Object call() {
                                i iVar2 = iVar;
                                q0.h(iVar2, "this$0");
                                WorkDatabase workDatabase3 = iVar2.f27448a;
                                Long lZ = workDatabase3.q().z("next_job_scheduler_id");
                                int iLongValue = lZ != null ? (int) lZ.longValue() : 0;
                                workDatabase3.q().C(new d("next_job_scheduler_id", Long.valueOf(iLongValue != Integer.MAX_VALUE ? iLongValue + 1 : 0)));
                                int i9 = this.f27446b;
                                if (i9 > iLongValue || iLongValue > i8) {
                                    workDatabase3.q().C(new d("next_job_scheduler_id", Long.valueOf(i9 + 1)));
                                    iLongValue = i9;
                                }
                                return Integer.valueOf(iLongValue);
                            }
                        });
                        q0.g(objM, "workDatabase.runInTransa…            id\n        })");
                        iIntValue = ((Number) objM).intValue();
                    }
                    if (gVarM == null) {
                        yVar.f24844c.r().n(new g(jVarA.f27228a, jVarA.f27229b, iIntValue));
                    }
                    h(qVar, iIntValue);
                    if (Build.VERSION.SDK_INT == 23 && (arrayListE = e(this.f25398G, this.f25399H, str2)) != null) {
                        int iIndexOf = arrayListE.indexOf(Integer.valueOf(iIntValue));
                        if (iIndexOf >= 0) {
                            arrayListE.remove(iIndexOf);
                        }
                        if (arrayListE.isEmpty()) {
                            yVar.f24843b.getClass();
                            final int i9 = yVar.f24843b.f24615g;
                            Object objM2 = workDatabase2.m(new Callable() { // from class: n2.h

                                /* JADX INFO: renamed from: b, reason: collision with root package name */
                                public final /* synthetic */ int f27446b = 0;

                                @Override // java.util.concurrent.Callable
                                public final Object call() {
                                    i iVar2 = iVar;
                                    q0.h(iVar2, "this$0");
                                    WorkDatabase workDatabase3 = iVar2.f27448a;
                                    Long lZ = workDatabase3.q().z("next_job_scheduler_id");
                                    int iLongValue = lZ != null ? (int) lZ.longValue() : 0;
                                    workDatabase3.q().C(new d("next_job_scheduler_id", Long.valueOf(iLongValue != Integer.MAX_VALUE ? iLongValue + 1 : 0)));
                                    int i10 = this.f27446b;
                                    if (i10 > iLongValue || iLongValue > i9) {
                                        workDatabase3.q().C(new d("next_job_scheduler_id", Long.valueOf(i10 + 1)));
                                        iLongValue = i10;
                                    }
                                    return Integer.valueOf(iLongValue);
                                }
                            });
                            q0.g(objM2, "workDatabase.runInTransa…            id\n        })");
                            iIntValue2 = ((Number) objM2).intValue();
                        } else {
                            iIntValue2 = ((Integer) arrayListE.get(0)).intValue();
                        }
                        h(qVar, iIntValue2);
                    }
                    workDatabase.n();
                }
                workDatabase.j();
            } catch (Throwable th) {
                workDatabase.j();
                throw th;
            }
        }
    }

    @Override // p034e2.p
    public final void d(String str) {
        Context context = this.f25398G;
        JobScheduler jobScheduler = this.f25399H;
        ArrayList arrayListE = e(context, jobScheduler, str);
        if (arrayListE == null || arrayListE.isEmpty()) {
            return;
        }
        Iterator it = arrayListE.iterator();
        while (it.hasNext()) {
            b(jobScheduler, ((Integer) it.next()).intValue());
        }
        p096m2.i iVarR = this.f25400I.f24844c.r();
        ((x) iVarR.f27224H).b();
        T1.i iVarC = ((AbstractC3012d) iVarR.f27227K).c();
        if (str == null) {
            iVarC.J(1);
        } else {
            iVarC.g(1, str);
        }
        ((x) iVarR.f27224H).c();
        try {
            iVarC.l();
            ((x) iVarR.f27224H).n();
        } finally {
            ((x) iVarR.f27224H).j();
            ((AbstractC3012d) iVarR.f27227K).m(iVarC);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0075, code lost:
    
        if (r10 < 26) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void h(p096m2.q r19, int r20) {
        /*
            Method dump skipped, instruction units count: 540
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: p058h2.c.h(m2.q, int):void");
    }
}
