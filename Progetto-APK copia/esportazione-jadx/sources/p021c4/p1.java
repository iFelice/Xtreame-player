package p021c4;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.job.JobScheduler;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import com.google.android.gms.internal.measurement.F;

/* JADX INFO: loaded from: classes.dex */
public final class p1 extends u1 {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final AlarmManager f11330J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public C0592j1 f11331K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public Integer f11332L;

    public p1(A1 a8) {
        super(a8);
        this.f11330J = (AlarmManager) ((C0597l0) this.f10616G).f11250G.getSystemService("alarm");
    }

    @Override // p021c4.u1
    public final boolean p() {
        AlarmManager alarmManager = this.f11330J;
        if (alarmManager != null) {
            alarmManager.cancel(s());
        }
        if (Build.VERSION.SDK_INT < 24) {
            return false;
        }
        u();
        return false;
    }

    public final void q() {
        n();
        T t7 = ((C0597l0) this.f10616G).f11258O;
        C0597l0.k(t7);
        t7.f11047T.a("Unscheduling upload");
        AlarmManager alarmManager = this.f11330J;
        if (alarmManager != null) {
            alarmManager.cancel(s());
        }
        t().a();
        if (Build.VERSION.SDK_INT >= 24) {
            u();
        }
    }

    public final int r() {
        if (this.f11332L == null) {
            this.f11332L = Integer.valueOf("measurement".concat(String.valueOf(((C0597l0) this.f10616G).f11250G.getPackageName())).hashCode());
        }
        return this.f11332L.intValue();
    }

    public final PendingIntent s() {
        Context context = ((C0597l0) this.f10616G).f11250G;
        return PendingIntent.getBroadcast(context, 0, new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementReceiver").setAction("com.google.android.gms.measurement.UPLOAD"), F.f22911a);
    }

    public final AbstractC0604p t() {
        if (this.f11331K == null) {
            this.f11331K = new C0592j1(this, this.f11343H.f10663R, 1);
        }
        return this.f11331K;
    }

    public final void u() {
        JobScheduler jobScheduler = (JobScheduler) ((C0597l0) this.f10616G).f11250G.getSystemService("jobscheduler");
        if (jobScheduler != null) {
            jobScheduler.cancel(r());
        }
    }
}
