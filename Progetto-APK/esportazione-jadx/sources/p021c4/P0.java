package p021c4;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.os.Build;
import android.os.PersistableBundle;
import com.bumptech.glide.c;
import com.google.android.gms.internal.ads.AbstractC2090uc;

/* JADX INFO: loaded from: classes.dex */
public final class P0 extends B {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public JobScheduler f11010I;

    @Override // p021c4.B
    public final boolean p() {
        return true;
    }

    public final void q() {
        this.f11010I = (JobScheduler) ((C0597l0) this.f10616G).f11250G.getSystemService("jobscheduler");
    }

    public final int r() {
        n();
        m();
        C0597l0 c0597l0 = (C0597l0) this.f10616G;
        if (!c0597l0.f11256M.B(null, E.f10749S0)) {
            return 9;
        }
        if (this.f11010I == null) {
            return 7;
        }
        Boolean boolZ = c0597l0.f11256M.z("google_analytics_sgtm_upload_enabled");
        if (boolZ == null || !boolZ.booleanValue()) {
            return 8;
        }
        C0597l0 c0597l1 = (C0597l0) this.f10616G;
        if (c0597l1.n().f10945P < 119000) {
            return 6;
        }
        if (!I1.k0(c0597l0.f11250G, "com.google.android.gms.measurement.AppMeasurementJobService")) {
            return 3;
        }
        if (Build.VERSION.SDK_INT >= 24) {
            return !c0597l1.r().A() ? 5 : 2;
        }
        return 4;
    }

    public final void s(long j8) {
        n();
        m();
        JobScheduler jobScheduler = this.f11010I;
        if (jobScheduler != null && jobScheduler.getPendingJob("measurement-client".concat(String.valueOf(((C0597l0) this.f10616G).f11250G.getPackageName())).hashCode()) != null) {
            T t7 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t7);
            t7.f11047T.a("[sgtm] There's an existing pending job, skip this schedule.");
            return;
        }
        int iR = r();
        if (iR != 2) {
            T t8 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t8);
            t8.f11047T.b(AbstractC2090uc.B(iR), "[sgtm] Not eligible for Scion upload");
            return;
        }
        C0597l0 c0597l0 = (C0597l0) this.f10616G;
        T t9 = c0597l0.f11258O;
        C0597l0.k(t9);
        t9.f11047T.b(Long.valueOf(j8), "[sgtm] Scheduling Scion upload, millis");
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putString("action", "com.google.android.gms.measurement.SCION_UPLOAD");
        JobInfo jobInfoBuild = new JobInfo.Builder("measurement-client".concat(String.valueOf(((C0597l0) this.f10616G).f11250G.getPackageName())).hashCode(), new ComponentName(c0597l0.f11250G, "com.google.android.gms.measurement.AppMeasurementJobService")).setRequiredNetworkType(1).setMinimumLatency(j8).setOverrideDeadline(j8 + j8).setExtras(persistableBundle).build();
        JobScheduler jobScheduler2 = this.f11010I;
        c.h(jobScheduler2);
        int iSchedule = jobScheduler2.schedule(jobInfoBuild);
        T t10 = c0597l0.f11258O;
        C0597l0.k(t10);
        t10.f11047T.b(iSchedule == 1 ? "SUCCESS" : "FAILURE", "[sgtm] Scion upload job scheduled with result");
    }
}
