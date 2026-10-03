package androidx.work.impl.workers;

import P1.x;
import P1.z;
import Q3.b;
import S3.e;
import android.content.Context;
import android.database.Cursor;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;
import p027d2.d;
import p027d2.k;
import p027d2.l;
import p027d2.n;
import p034e2.y;
import p096m2.i;
import p096m2.q;
import p096m2.s;
import p096m2.u;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class DiagnosticsWorker extends Worker {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiagnosticsWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        q0.h(context, "context");
        q0.h(workerParameters, "parameters");
    }

    @Override // androidx.work.Worker
    public final l doWork() throws Throwable {
        z zVar;
        i iVar;
        p096m2.l lVar;
        u uVar;
        WorkDatabase workDatabase = y.w(getApplicationContext()).f24844c;
        q0.g(workDatabase, "workManager.workDatabase");
        s sVarU = workDatabase.u();
        p096m2.l lVarS = workDatabase.s();
        u uVarV = workDatabase.v();
        i iVarR = workDatabase.r();
        long jCurrentTimeMillis = System.currentTimeMillis() - TimeUnit.DAYS.toMillis(1L);
        sVarU.getClass();
        z zVarN = z.N(1, "SELECT * FROM workspec WHERE last_enqueue_time >= ? AND state IN (2, 3, 5) ORDER BY last_enqueue_time DESC");
        zVarN.w(1, jCurrentTimeMillis);
        x xVar = sVarU.f27263a;
        xVar.b();
        Cursor cursorL = xVar.l(zVarN, null);
        try {
            int i8 = b.i(cursorL, "id");
            int i9 = b.i(cursorL, "state");
            int i10 = b.i(cursorL, "worker_class_name");
            int i11 = b.i(cursorL, "input_merger_class_name");
            int i12 = b.i(cursorL, "input");
            int i13 = b.i(cursorL, "output");
            int i14 = b.i(cursorL, "initial_delay");
            int i15 = b.i(cursorL, "interval_duration");
            int i16 = b.i(cursorL, "flex_duration");
            int i17 = b.i(cursorL, "run_attempt_count");
            int i18 = b.i(cursorL, "backoff_policy");
            int i19 = b.i(cursorL, "backoff_delay_duration");
            int i20 = b.i(cursorL, "last_enqueue_time");
            int i21 = b.i(cursorL, "minimum_retention_duration");
            zVar = zVarN;
            try {
                int i22 = b.i(cursorL, "schedule_requested_at");
                int i23 = b.i(cursorL, "run_in_foreground");
                int i24 = b.i(cursorL, "out_of_quota_policy");
                int i25 = b.i(cursorL, "period_count");
                int i26 = b.i(cursorL, "generation");
                int i27 = b.i(cursorL, "required_network_type");
                int i28 = b.i(cursorL, "requires_charging");
                int i29 = b.i(cursorL, "requires_device_idle");
                int i30 = b.i(cursorL, "requires_battery_not_low");
                int i31 = b.i(cursorL, "requires_storage_not_low");
                int i32 = b.i(cursorL, "trigger_content_update_delay");
                int i33 = b.i(cursorL, "trigger_max_content_delay");
                int i34 = b.i(cursorL, "content_uri_triggers");
                int i35 = i21;
                ArrayList arrayList = new ArrayList(cursorL.getCount());
                while (cursorL.moveToNext()) {
                    String string = cursorL.isNull(i8) ? null : cursorL.getString(i8);
                    int iG = e.g(cursorL.getInt(i9));
                    String string2 = cursorL.isNull(i10) ? null : cursorL.getString(i10);
                    String string3 = cursorL.isNull(i11) ? null : cursorL.getString(i11);
                    p027d2.e eVarA = p027d2.e.a(cursorL.isNull(i12) ? null : cursorL.getBlob(i12));
                    p027d2.e eVarA2 = p027d2.e.a(cursorL.isNull(i13) ? null : cursorL.getBlob(i13));
                    long j8 = cursorL.getLong(i14);
                    long j9 = cursorL.getLong(i15);
                    long j10 = cursorL.getLong(i16);
                    int i36 = cursorL.getInt(i17);
                    int iD = e.d(cursorL.getInt(i18));
                    long j11 = cursorL.getLong(i19);
                    long j12 = cursorL.getLong(i20);
                    int i37 = i35;
                    long j13 = cursorL.getLong(i37);
                    int i38 = i18;
                    int i39 = i22;
                    long j14 = cursorL.getLong(i39);
                    i22 = i39;
                    i23 = i23;
                    boolean z7 = cursorL.getInt(i23) != 0;
                    int iF = e.f(cursorL.getInt(i24));
                    i24 = i24;
                    int i40 = i25;
                    int i41 = cursorL.getInt(i40);
                    i25 = i40;
                    int i42 = i26;
                    int i43 = cursorL.getInt(i42);
                    i26 = i42;
                    int i44 = i27;
                    int iE = e.e(cursorL.getInt(i44));
                    i27 = i44;
                    i28 = i28;
                    boolean z8 = cursorL.getInt(i28) != 0;
                    boolean z9 = cursorL.getInt(i29) != 0;
                    boolean z10 = cursorL.getInt(i30) != 0;
                    boolean z11 = cursorL.getInt(i31) != 0;
                    long j15 = cursorL.getLong(i32);
                    i32 = i32;
                    int i45 = i33;
                    long j16 = cursorL.getLong(i45);
                    i33 = i45;
                    int i46 = i34;
                    i34 = i46;
                    arrayList.add(new q(string, iG, string2, string3, eVarA, eVarA2, j8, j9, j10, new d(iE, z8, z9, z10, z11, j15, j16, e.a(cursorL.isNull(i46) ? null : cursorL.getBlob(i46))), i36, iD, j11, j12, j13, j14, z7, iF, i41, i43));
                    i18 = i38;
                    i35 = i37;
                }
                cursorL.close();
                zVar.O();
                ArrayList arrayListC = sVarU.c();
                ArrayList arrayListA = sVarU.a();
                if (!arrayList.isEmpty()) {
                    n nVarD = n.d();
                    String str = p127q2.b.f29574a;
                    nVarD.e(str, "Recently completed work:\n\n");
                    iVar = iVarR;
                    lVar = lVarS;
                    uVar = uVarV;
                    n.d().e(str, p127q2.b.a(lVar, uVar, iVar, arrayList));
                } else {
                    iVar = iVarR;
                    lVar = lVarS;
                    uVar = uVarV;
                }
                if (!arrayListC.isEmpty()) {
                    n nVarD2 = n.d();
                    String str2 = p127q2.b.f29574a;
                    nVarD2.e(str2, "Running work:\n\n");
                    n.d().e(str2, p127q2.b.a(lVar, uVar, iVar, arrayListC));
                }
                if (!arrayListA.isEmpty()) {
                    n nVarD3 = n.d();
                    String str3 = p127q2.b.f29574a;
                    nVarD3.e(str3, "Enqueued work:\n\n");
                    n.d().e(str3, p127q2.b.a(lVar, uVar, iVar, arrayListA));
                }
                return new k(p027d2.e.f24629c);
            } catch (Throwable th) {
                th = th;
                cursorL.close();
                zVar.O();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            zVar = zVarN;
        }
    }
}
