package p104n2;

import P1.x;
import P1.z;
import Z3.C;
import android.app.ActivityManager;
import android.app.AlarmManager;
import android.app.ApplicationExitInfo;
import android.app.PendingIntent;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteAccessPermException;
import android.database.sqlite.SQLiteCantOpenDatabaseException;
import android.database.sqlite.SQLiteConstraintException;
import android.database.sqlite.SQLiteDatabaseCorruptException;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteDiskIOException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteTableLockedException;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.utils.ForceStopRunnable$BroadcastReceiver;
import b7.Z;
import com.google.android.gms.internal.measurement.H1;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import p027d2.b;
import p027d2.n;
import p034e2.y;
import p058h2.c;
import p096m2.d;
import p096m2.i;
import p096m2.j;
import p096m2.o;
import p096m2.q;
import p096m2.s;

/* JADX INFO: loaded from: classes.dex */
public final class f implements Runnable {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final String f27437K = n.f("ForceStopRunnable");

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final long f27438L = TimeUnit.DAYS.toMillis(3650);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f27439G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final y f27440H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final i f27441I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f27442J = 0;

    public f(Context context, y yVar) {
        this.f27439G = context.getApplicationContext();
        this.f27440H = yVar;
        this.f27441I = yVar.f24848g;
    }

    public static void c(Context context) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        int i8 = Build.VERSION.SDK_INT >= 31 ? 167772160 : 134217728;
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(context, (Class<?>) ForceStopRunnable$BroadcastReceiver.class));
        intent.setAction("ACTION_FORCE_STOP_RESCHEDULE");
        PendingIntent broadcast = PendingIntent.getBroadcast(context, -1, intent, i8);
        long jCurrentTimeMillis = System.currentTimeMillis() + f27438L;
        if (alarmManager != null) {
            alarmManager.setExact(0, jCurrentTimeMillis, broadcast);
        }
    }

    /* JADX WARN: Code duplicated, block: B:105:0x0203  */
    /* JADX WARN: Code duplicated, block: B:108:0x021f  */
    /* JADX WARN: Code duplicated, block: B:139:? A[RETURN, SYNTHETIC] */
    public final void a() {
        boolean z7;
        i iVar = this.f27441I;
        int i8 = Build.VERSION.SDK_INT;
        boolean z8 = true;
        Context context = this.f27439G;
        y yVar = this.f27440H;
        if (i8 >= 23) {
            String str = c.f25397K;
            JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
            ArrayList<JobInfo> arrayListF = c.f(context, jobScheduler);
            i iVarR = yVar.f24844c.r();
            iVarR.getClass();
            z zVarN = z.N(0, "SELECT DISTINCT work_spec_id FROM SystemIdInfo");
            ((x) iVarR.f27224H).b();
            Cursor cursorH = C.h((x) iVarR.f27224H, zVarN);
            try {
                ArrayList arrayList = new ArrayList(cursorH.getCount());
                while (cursorH.moveToNext()) {
                    arrayList.add(cursorH.isNull(0) ? null : cursorH.getString(0));
                }
                cursorH.close();
                zVarN.O();
                HashSet hashSet = new HashSet(arrayListF != null ? arrayListF.size() : 0);
                if (arrayListF != null && !arrayListF.isEmpty()) {
                    for (JobInfo jobInfo : arrayListF) {
                        j jVarG = c.g(jobInfo);
                        if (jVarG != null) {
                            hashSet.add(jVarG.f27228a);
                        } else {
                            c.b(jobScheduler, jobInfo.getId());
                        }
                    }
                }
                Iterator it = arrayList.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (!hashSet.contains((String) it.next())) {
                            n.d().a(c.f25397K, "Reconciling jobs");
                            z7 = true;
                            break;
                        }
                    } else {
                        z7 = false;
                        break;
                    }
                }
                if (z7) {
                    WorkDatabase workDatabase = yVar.f24844c;
                    workDatabase.c();
                    try {
                        s sVarU = workDatabase.u();
                        Iterator it2 = arrayList.iterator();
                        while (it2.hasNext()) {
                            sVarU.i(-1L, (String) it2.next());
                        }
                        workDatabase.n();
                        workDatabase.j();
                    } catch (Throwable th) {
                        workDatabase.j();
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                cursorH.close();
                zVarN.O();
                throw th2;
            }
        } else {
            z7 = false;
        }
        WorkDatabase workDatabase2 = yVar.f24844c;
        s sVarU2 = workDatabase2.u();
        o oVarT = workDatabase2.t();
        workDatabase2.c();
        try {
            ArrayList<q> arrayListC = sVarU2.c();
            boolean z9 = !arrayListC.isEmpty();
            if (z9) {
                for (q qVar : arrayListC) {
                    sVarU2.l(1, qVar.f27242a);
                    sVarU2.i(-1L, qVar.f27242a);
                }
            }
            oVarT.i();
            workDatabase2.n();
            workDatabase2.j();
            if (!z9 && !z7) {
                z8 = false;
            }
            Long lZ = yVar.f24848g.f27448a.q().z("reschedule_needed");
            String str2 = f27437K;
            if (lZ != null && lZ.longValue() == 1) {
                n.d().a(str2, "Rescheduling Workers.");
                yVar.y();
                i iVar2 = yVar.f24848g;
                iVar2.getClass();
                iVar2.f27448a.q().C(new d("reschedule_needed", 0L));
                return;
            }
            try {
                int i9 = Build.VERSION.SDK_INT;
                int i10 = i9 >= 31 ? 570425344 : 536870912;
                Intent intent = new Intent();
                intent.setComponent(new ComponentName(context, (Class<?>) ForceStopRunnable$BroadcastReceiver.class));
                intent.setAction("ACTION_FORCE_STOP_RESCHEDULE");
                PendingIntent broadcast = PendingIntent.getBroadcast(context, -1, intent, i10);
                if (i9 < 30) {
                    if (broadcast == null) {
                        c(context);
                        n.d().a(str2, "Application was force-stopped, rescheduling.");
                        yVar.y();
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        iVar.getClass();
                        iVar.f27448a.q().C(new d("last_force_stop_ms", Long.valueOf(jCurrentTimeMillis)));
                        return;
                    }
                    if (z8) {
                        n.d().a(str2, "Found unfinished work, scheduling it.");
                        p034e2.q.a(yVar.f24843b, yVar.f24844c, yVar.f24846e);
                    }
                }
                if (broadcast != null) {
                    broadcast.cancel();
                }
                List historicalProcessExitReasons = ((ActivityManager) context.getSystemService("activity")).getHistoricalProcessExitReasons(null, 0, 0);
                if (historicalProcessExitReasons != null && !historicalProcessExitReasons.isEmpty()) {
                    Long lZ2 = iVar.f27448a.q().z("last_force_stop_ms");
                    long jLongValue = lZ2 != null ? lZ2.longValue() : 0L;
                    for (int i11 = 0; i11 < historicalProcessExitReasons.size(); i11++) {
                        ApplicationExitInfo applicationExitInfoE = Z.e(historicalProcessExitReasons.get(i11));
                        if (applicationExitInfoE.getReason() == 10 && applicationExitInfoE.getTimestamp() >= jLongValue) {
                            n.d().a(str2, "Application was force-stopped, rescheduling.");
                            yVar.y();
                            long jCurrentTimeMillis2 = System.currentTimeMillis();
                            iVar.getClass();
                            iVar.f27448a.q().C(new d("last_force_stop_ms", Long.valueOf(jCurrentTimeMillis2)));
                            return;
                        }
                    }
                }
                if (z8) {
                    n.d().a(str2, "Found unfinished work, scheduling it.");
                    p034e2.q.a(yVar.f24843b, yVar.f24844c, yVar.f24846e);
                }
            } catch (IllegalArgumentException e8) {
                e = e8;
                if (n.d().f24643a <= 5) {
                    Log.w(str2, "Ignoring exception", e);
                }
            } catch (SecurityException e9) {
                e = e9;
                if (n.d().f24643a <= 5) {
                    Log.w(str2, "Ignoring exception", e);
                }
            }
        } catch (Throwable th3) {
            workDatabase2.j();
            throw th3;
        }
    }

    public final boolean b() {
        b bVar = this.f27440H.f24843b;
        bVar.getClass();
        boolean zIsEmpty = TextUtils.isEmpty(null);
        String str = f27437K;
        if (zIsEmpty) {
            n.d().a(str, "The default process name was not specified.");
            return true;
        }
        boolean zA = n.a(this.f27439G, bVar);
        n.d().a(str, "Is default app process = " + zA);
        return zA;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str = f27437K;
        y yVar = this.f27440H;
        try {
            if (!b()) {
                yVar.x();
                return;
            }
            while (true) {
                try {
                    H1.s(this.f27439G);
                    n.d().a(str, "Performing cleanup operations.");
                    try {
                        a();
                        yVar.x();
                        return;
                    } catch (SQLiteAccessPermException | SQLiteCantOpenDatabaseException | SQLiteConstraintException | SQLiteDatabaseCorruptException | SQLiteDatabaseLockedException | SQLiteDiskIOException | SQLiteTableLockedException e8) {
                        int i8 = this.f27442J + 1;
                        this.f27442J = i8;
                        if (i8 >= 3) {
                            n.d().c(str, "The file system on the device is in a bad state. WorkManager cannot access the app's internal data store.", e8);
                            IllegalStateException illegalStateException = new IllegalStateException("The file system on the device is in a bad state. WorkManager cannot access the app's internal data store.", e8);
                            yVar.f24843b.getClass();
                            throw illegalStateException;
                        }
                        long j8 = ((long) i8) * 300;
                        String str2 = "Retrying after " + j8;
                        if (n.d().f24643a <= 3) {
                            Log.d(str, str2, e8);
                        }
                        try {
                            Thread.sleep(((long) this.f27442J) * 300);
                        } catch (InterruptedException unused) {
                        }
                    }
                } catch (SQLiteException e9) {
                    n.d().b(str, "Unexpected SQLite exception during migrations");
                    IllegalStateException illegalStateException2 = new IllegalStateException("Unexpected SQLite exception during migrations", e9);
                    yVar.f24843b.getClass();
                    throw illegalStateException2;
                }
            }
        } catch (Throwable th) {
            yVar.x();
            throw th;
        }
    }
}
