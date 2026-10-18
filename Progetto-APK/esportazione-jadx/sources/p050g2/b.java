package p050g2;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.SystemAlarmService;
import java.util.concurrent.Callable;
import p027d2.n;
import p027d2.v;
import p096m2.d;
import p096m2.g;
import p096m2.i;
import p096m2.j;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f25305a = n.f("Alarms");

    public static void a(Context context, j jVar, int i8) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        String str = c.f25306K;
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction("ACTION_DELAY_MET");
        c.e(intent, jVar);
        PendingIntent service = PendingIntent.getService(context, i8, intent, Build.VERSION.SDK_INT >= 23 ? 603979776 : 536870912);
        if (service == null || alarmManager == null) {
            return;
        }
        n.d().a(f25305a, "Cancelling existing alarm with (workSpecId, systemId) (" + jVar + ", " + i8 + ")");
        alarmManager.cancel(service);
    }

    public static void b(Context context, WorkDatabase workDatabase, j jVar, long j8) {
        i iVarR = workDatabase.r();
        g gVarM = iVarR.m(jVar);
        if (gVarM != null) {
            int i8 = gVarM.f27219c;
            a(context, jVar, i8);
            c(context, jVar, i8, j8);
            return;
        }
        final int i9 = 0;
        final p104n2.i iVar = new p104n2.i(workDatabase, 0);
        Object objM = iVar.f27448a.m(new Callable() { // from class: n2.g
            @Override // java.util.concurrent.Callable
            public final Object call() {
                int i10 = i9;
                Object obj = iVar;
                switch (i10) {
                    case 0:
                        i iVar2 = (i) obj;
                        q0.h(iVar2, "this$0");
                        WorkDatabase workDatabase2 = iVar2.f27448a;
                        Long lZ = workDatabase2.q().z("next_alarm_manager_id");
                        int iLongValue = lZ != null ? (int) lZ.longValue() : 0;
                        workDatabase2.q().C(new d("next_alarm_manager_id", Long.valueOf(iLongValue != Integer.MAX_VALUE ? iLongValue + 1 : 0)));
                        return Integer.valueOf(iLongValue);
                    case 1:
                        ((v) obj).getClass();
                        return null;
                    default:
                        ((p052g4.i) obj).b(null);
                        return null;
                }
            }
        });
        q0.g(objM, "workDatabase.runInTransa…ANAGER_ID_KEY)\n        })");
        int iIntValue = ((Number) objM).intValue();
        iVarR.n(new g(jVar.f27228a, jVar.f27229b, iIntValue));
        c(context, jVar, iIntValue, j8);
    }

    public static void c(Context context, j jVar, int i8, long j8) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        int i9 = Build.VERSION.SDK_INT >= 23 ? 201326592 : 134217728;
        String str = c.f25306K;
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction("ACTION_DELAY_MET");
        c.e(intent, jVar);
        PendingIntent service = PendingIntent.getService(context, i8, intent, i9);
        if (alarmManager != null) {
            a.a(alarmManager, 0, j8, service);
        }
    }
}
