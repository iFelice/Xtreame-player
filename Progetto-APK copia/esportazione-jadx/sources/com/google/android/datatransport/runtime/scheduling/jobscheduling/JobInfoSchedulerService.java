package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import U0.r;
import U2.i;
import U2.q;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.util.Base64;
import p004a3.f;
import p004a3.j;
import p035e3.a;
import p096m2.u;

/* JADX INFO: loaded from: classes.dex */
public class JobInfoSchedulerService extends JobService {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final /* synthetic */ int f11631G = 0;

    @Override // android.app.job.JobService
    public final boolean onStartJob(JobParameters jobParameters) {
        String string = jobParameters.getExtras().getString("backendName");
        String string2 = jobParameters.getExtras().getString("extras");
        int i8 = jobParameters.getExtras().getInt("priority");
        int i9 = jobParameters.getExtras().getInt("attemptNumber");
        q.b(getApplicationContext());
        u uVarA = i.a();
        uVarA.R(string);
        uVarA.S(a.b(i8));
        if (string2 != null) {
            uVarA.f27279I = Base64.decode(string2, 0);
        }
        j jVar = q.a().f6972d;
        i iVarJ = uVarA.j();
        r rVar = new r(12, this, jobParameters);
        jVar.getClass();
        jVar.f8680e.execute(new f(jVar, iVarJ, i9, rVar));
        return true;
    }

    @Override // android.app.job.JobService
    public final boolean onStopJob(JobParameters jobParameters) {
        return true;
    }
}
