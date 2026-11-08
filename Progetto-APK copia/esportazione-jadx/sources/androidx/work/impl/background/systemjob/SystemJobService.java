package androidx.work.impl.background.systemjob;

import android.app.Application;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.os.Build;
import android.os.PersistableBundle;
import com.google.android.gms.internal.atv_ads_framework.x0;
import java.util.Arrays;
import java.util.HashMap;
import p027d2.n;
import p034e2.c;
import p034e2.r;
import p034e2.y;
import p058h2.d;
import p058h2.e;
import p096m2.j;
import p096m2.u;

/* JADX INFO: loaded from: classes.dex */
public class SystemJobService extends JobService implements c {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final String f9791J = n.f("SystemJobService");

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public y f9792G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final HashMap f9793H = new HashMap();

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final x0 f9794I = new x0(6);

    public static j a(JobParameters jobParameters) {
        try {
            PersistableBundle extras = jobParameters.getExtras();
            if (extras == null || !extras.containsKey("EXTRA_WORK_SPEC_ID")) {
                return null;
            }
            return new j(extras.getString("EXTRA_WORK_SPEC_ID"), extras.getInt("EXTRA_WORK_SPEC_GENERATION"));
        } catch (NullPointerException unused) {
            return null;
        }
    }

    @Override // p034e2.c
    public final void b(j jVar, boolean z7) {
        JobParameters jobParameters;
        n.d().a(f9791J, jVar.f27228a + " executed on JobScheduler");
        synchronized (this.f9793H) {
            jobParameters = (JobParameters) this.f9793H.remove(jVar);
        }
        this.f9794I.t(jVar);
        if (jobParameters != null) {
            jobFinished(jobParameters, z7);
        }
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        try {
            y yVarW = y.w(getApplicationContext());
            this.f9792G = yVarW;
            yVarW.f24847f.a(this);
        } catch (IllegalStateException unused) {
            if (!Application.class.equals(getApplication().getClass())) {
                throw new IllegalStateException("WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().");
            }
            n.d().g(f9791J, "Could not find WorkManager instance; this may be because an auto-backup is in progress. Ignoring JobScheduler commands for now. Please make sure that you are initializing WorkManager if you have manually disabled WorkManagerInitializer.");
        }
    }

    @Override // android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        y yVar = this.f9792G;
        if (yVar != null) {
            yVar.f24847f.g(this);
        }
    }

    @Override // android.app.job.JobService
    public final boolean onStartJob(JobParameters jobParameters) {
        u uVar;
        if (this.f9792G == null) {
            n.d().a(f9791J, "WorkManager is not initialized; requesting retry.");
            jobFinished(jobParameters, true);
            return false;
        }
        j jVarA = a(jobParameters);
        if (jVarA == null) {
            n.d().b(f9791J, "WorkSpec id not found!");
            return false;
        }
        synchronized (this.f9793H) {
            try {
                if (this.f9793H.containsKey(jVarA)) {
                    n.d().a(f9791J, "Job is already being executed by SystemJobService: " + jVarA);
                    return false;
                }
                n.d().a(f9791J, "onStartJob for " + jVarA);
                this.f9793H.put(jVarA, jobParameters);
                int i8 = Build.VERSION.SDK_INT;
                if (i8 >= 24) {
                    uVar = new u(21);
                    if (d.b(jobParameters) != null) {
                        uVar.f27279I = Arrays.asList(d.b(jobParameters));
                    }
                    if (d.a(jobParameters) != null) {
                        uVar.f27278H = Arrays.asList(d.a(jobParameters));
                    }
                    if (i8 >= 28) {
                        uVar.f27280J = e.a(jobParameters);
                    }
                } else {
                    uVar = null;
                }
                this.f9792G.z(this.f9794I.y(jVarA), uVar);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.app.job.JobService
    public final boolean onStopJob(JobParameters jobParameters) {
        if (this.f9792G == null) {
            n.d().a(f9791J, "WorkManager is not initialized; requesting retry.");
            return true;
        }
        j jVarA = a(jobParameters);
        if (jVarA == null) {
            n.d().b(f9791J, "WorkSpec id not found!");
            return false;
        }
        n.d().a(f9791J, "onStopJob for " + jVarA);
        synchronized (this.f9793H) {
            this.f9793H.remove(jVarA);
        }
        r rVarT = this.f9794I.t(jVarA);
        if (rVarT != null) {
            this.f9792G.A(rVarT);
        }
        return !this.f9792G.f24847f.e(jVarA.f27228a);
    }
}
