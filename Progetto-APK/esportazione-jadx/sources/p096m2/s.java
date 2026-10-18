package p096m2;

import P1.x;
import P1.z;
import Q3.b;
import S3.e;
import T1.i;
import android.database.Cursor;
import java.util.ArrayList;
import org.videolan.libvlc.media.MediaPlayer;
import p027d2.d;

/* JADX INFO: loaded from: classes.dex */
public final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final x f27263a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final b f27264b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final r f27265c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final r f27266d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final r f27267e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final r f27268f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final r f27269g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final r f27270h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final r f27271i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final r f27272j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final r f27273k;

    public s(x xVar) {
        this.f27263a = xVar;
        this.f27264b = new b(this, xVar, 5);
        new r(xVar);
        this.f27265c = new r(xVar, 5);
        this.f27266d = new r(xVar, 6);
        this.f27267e = new r(xVar, 7);
        this.f27268f = new r(xVar, 8);
        this.f27269g = new r(xVar, 9);
        this.f27270h = new r(xVar, 10);
        this.f27271i = new r(xVar, 11);
        this.f27272j = new r(xVar, 0);
        this.f27273k = new r(xVar, 1);
        new r(xVar, 2);
        new r(xVar, 3);
    }

    public final ArrayList a() throws Throwable {
        z zVar;
        z zVarN = z.N(1, "SELECT * FROM workspec WHERE state=0 ORDER BY last_enqueue_time LIMIT ?");
        zVarN.w(1, MediaPlayer.MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK);
        x xVar = this.f27263a;
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
                    int i38 = i8;
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
                    i8 = i38;
                    i35 = i37;
                }
                cursorL.close();
                zVar.O();
                return arrayList;
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

    public final ArrayList b(int i8) throws Throwable {
        z zVar;
        z zVarN = z.N(1, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY last_enqueue_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND state NOT IN (2, 3, 5))");
        zVarN.w(1, i8);
        x xVar = this.f27263a;
        xVar.b();
        Cursor cursorL = xVar.l(zVarN, null);
        try {
            int i9 = b.i(cursorL, "id");
            int i10 = b.i(cursorL, "state");
            int i11 = b.i(cursorL, "worker_class_name");
            int i12 = b.i(cursorL, "input_merger_class_name");
            int i13 = b.i(cursorL, "input");
            int i14 = b.i(cursorL, "output");
            int i15 = b.i(cursorL, "initial_delay");
            int i16 = b.i(cursorL, "interval_duration");
            int i17 = b.i(cursorL, "flex_duration");
            int i18 = b.i(cursorL, "run_attempt_count");
            int i19 = b.i(cursorL, "backoff_policy");
            int i20 = b.i(cursorL, "backoff_delay_duration");
            int i21 = b.i(cursorL, "last_enqueue_time");
            int i22 = b.i(cursorL, "minimum_retention_duration");
            zVar = zVarN;
            try {
                int i23 = b.i(cursorL, "schedule_requested_at");
                int i24 = b.i(cursorL, "run_in_foreground");
                int i25 = b.i(cursorL, "out_of_quota_policy");
                int i26 = b.i(cursorL, "period_count");
                int i27 = b.i(cursorL, "generation");
                int i28 = b.i(cursorL, "required_network_type");
                int i29 = b.i(cursorL, "requires_charging");
                int i30 = b.i(cursorL, "requires_device_idle");
                int i31 = b.i(cursorL, "requires_battery_not_low");
                int i32 = b.i(cursorL, "requires_storage_not_low");
                int i33 = b.i(cursorL, "trigger_content_update_delay");
                int i34 = b.i(cursorL, "trigger_max_content_delay");
                int i35 = b.i(cursorL, "content_uri_triggers");
                int i36 = i22;
                ArrayList arrayList = new ArrayList(cursorL.getCount());
                while (cursorL.moveToNext()) {
                    String string = cursorL.isNull(i9) ? null : cursorL.getString(i9);
                    int iG = e.g(cursorL.getInt(i10));
                    String string2 = cursorL.isNull(i11) ? null : cursorL.getString(i11);
                    String string3 = cursorL.isNull(i12) ? null : cursorL.getString(i12);
                    p027d2.e eVarA = p027d2.e.a(cursorL.isNull(i13) ? null : cursorL.getBlob(i13));
                    p027d2.e eVarA2 = p027d2.e.a(cursorL.isNull(i14) ? null : cursorL.getBlob(i14));
                    long j8 = cursorL.getLong(i15);
                    long j9 = cursorL.getLong(i16);
                    long j10 = cursorL.getLong(i17);
                    int i37 = cursorL.getInt(i18);
                    int iD = e.d(cursorL.getInt(i19));
                    long j11 = cursorL.getLong(i20);
                    long j12 = cursorL.getLong(i21);
                    int i38 = i36;
                    long j13 = cursorL.getLong(i38);
                    int i39 = i9;
                    int i40 = i23;
                    long j14 = cursorL.getLong(i40);
                    i23 = i40;
                    i24 = i24;
                    boolean z7 = cursorL.getInt(i24) != 0;
                    int iF = e.f(cursorL.getInt(i25));
                    i25 = i25;
                    int i41 = i26;
                    int i42 = cursorL.getInt(i41);
                    i26 = i41;
                    int i43 = i27;
                    int i44 = cursorL.getInt(i43);
                    i27 = i43;
                    int i45 = i28;
                    int iE = e.e(cursorL.getInt(i45));
                    i28 = i45;
                    i29 = i29;
                    boolean z8 = cursorL.getInt(i29) != 0;
                    boolean z9 = cursorL.getInt(i30) != 0;
                    boolean z10 = cursorL.getInt(i31) != 0;
                    boolean z11 = cursorL.getInt(i32) != 0;
                    long j15 = cursorL.getLong(i33);
                    i33 = i33;
                    int i46 = i34;
                    long j16 = cursorL.getLong(i46);
                    i34 = i46;
                    int i47 = i35;
                    i35 = i47;
                    arrayList.add(new q(string, iG, string2, string3, eVarA, eVarA2, j8, j9, j10, new d(iE, z8, z9, z10, z11, j15, j16, e.a(cursorL.isNull(i47) ? null : cursorL.getBlob(i47))), i37, iD, j11, j12, j13, j14, z7, iF, i42, i44));
                    i9 = i39;
                    i36 = i38;
                }
                cursorL.close();
                zVar.O();
                return arrayList;
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

    public final ArrayList c() throws Throwable {
        z zVar;
        z zVarN = z.N(0, "SELECT * FROM workspec WHERE state=1");
        x xVar = this.f27263a;
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
                    int i38 = i8;
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
                    i8 = i38;
                    i35 = i37;
                }
                cursorL.close();
                zVar.O();
                return arrayList;
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

    public final ArrayList d() {
        z zVar;
        z zVarN = z.N(0, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at<>-1");
        x xVar = this.f27263a;
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
                    int i38 = i8;
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
                    i8 = i38;
                    i35 = i37;
                }
                cursorL.close();
                zVar.O();
                return arrayList;
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

    public final int e(String str) {
        z zVarN = z.N(1, "SELECT state FROM workspec WHERE id=?");
        if (str == null) {
            zVarN.J(1);
        } else {
            zVarN.g(1, str);
        }
        x xVar = this.f27263a;
        xVar.b();
        Integer numValueOf = null;
        Cursor cursorL = xVar.l(zVarN, null);
        try {
            int iG = 0;
            if (cursorL.moveToFirst()) {
                if (!cursorL.isNull(0)) {
                    numValueOf = Integer.valueOf(cursorL.getInt(0));
                }
                if (numValueOf != null) {
                    iG = e.g(numValueOf.intValue());
                }
            }
            return iG;
        } finally {
            cursorL.close();
            zVarN.O();
        }
    }

    public final ArrayList f(String str) {
        z zVarN = z.N(1, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)");
        if (str == null) {
            zVarN.J(1);
        } else {
            zVarN.g(1, str);
        }
        x xVar = this.f27263a;
        xVar.b();
        Cursor cursorL = xVar.l(zVarN, null);
        try {
            ArrayList arrayList = new ArrayList(cursorL.getCount());
            while (cursorL.moveToNext()) {
                arrayList.add(cursorL.isNull(0) ? null : cursorL.getString(0));
            }
            return arrayList;
        } finally {
            cursorL.close();
            zVarN.O();
        }
    }

    public final ArrayList g(String str) {
        z zVarN = z.N(1, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM worktag WHERE tag=?)");
        if (str == null) {
            zVarN.J(1);
        } else {
            zVarN.g(1, str);
        }
        x xVar = this.f27263a;
        xVar.b();
        Cursor cursorL = xVar.l(zVarN, null);
        try {
            ArrayList arrayList = new ArrayList(cursorL.getCount());
            while (cursorL.moveToNext()) {
                arrayList.add(cursorL.isNull(0) ? null : cursorL.getString(0));
            }
            return arrayList;
        } finally {
            cursorL.close();
            zVarN.O();
        }
    }

    public final q h(String str) {
        z zVar;
        q qVar;
        z zVarN = z.N(1, "SELECT * FROM workspec WHERE id=?");
        if (str == null) {
            zVarN.J(1);
        } else {
            zVarN.g(1, str);
        }
        x xVar = this.f27263a;
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
                if (cursorL.moveToFirst()) {
                    qVar = new q(cursorL.isNull(i8) ? null : cursorL.getString(i8), e.g(cursorL.getInt(i9)), cursorL.isNull(i10) ? null : cursorL.getString(i10), cursorL.isNull(i11) ? null : cursorL.getString(i11), p027d2.e.a(cursorL.isNull(i12) ? null : cursorL.getBlob(i12)), p027d2.e.a(cursorL.isNull(i13) ? null : cursorL.getBlob(i13)), cursorL.getLong(i14), cursorL.getLong(i15), cursorL.getLong(i16), new d(e.e(cursorL.getInt(i27)), cursorL.getInt(i28) != 0, cursorL.getInt(i29) != 0, cursorL.getInt(i30) != 0, cursorL.getInt(i31) != 0, cursorL.getLong(i32), cursorL.getLong(i33), e.a(cursorL.isNull(i34) ? null : cursorL.getBlob(i34))), cursorL.getInt(i17), e.d(cursorL.getInt(i18)), cursorL.getLong(i19), cursorL.getLong(i20), cursorL.getLong(i21), cursorL.getLong(i22), cursorL.getInt(i23) != 0, e.f(cursorL.getInt(i24)), cursorL.getInt(i25), cursorL.getInt(i26));
                } else {
                    qVar = null;
                }
                cursorL.close();
                zVar.O();
                return qVar;
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

    public final void i(long j8, String str) {
        x xVar = this.f27263a;
        xVar.b();
        r rVar = this.f27272j;
        i iVarC = rVar.c();
        iVarC.w(1, j8);
        if (str == null) {
            iVarC.J(2);
        } else {
            iVarC.g(2, str);
        }
        xVar.c();
        try {
            iVarC.l();
            xVar.n();
        } finally {
            xVar.j();
            rVar.m(iVarC);
        }
    }

    public final void j(long j8, String str) {
        x xVar = this.f27263a;
        xVar.b();
        r rVar = this.f27269g;
        i iVarC = rVar.c();
        iVarC.w(1, j8);
        if (str == null) {
            iVarC.J(2);
        } else {
            iVarC.g(2, str);
        }
        xVar.c();
        try {
            iVarC.l();
            xVar.n();
        } finally {
            xVar.j();
            rVar.m(iVarC);
        }
    }

    public final void k(String str, p027d2.e eVar) throws Throwable {
        x xVar = this.f27263a;
        xVar.b();
        r rVar = this.f27268f;
        i iVarC = rVar.c();
        byte[] bArrC = p027d2.e.c(eVar);
        if (bArrC == null) {
            iVarC.J(1);
        } else {
            iVarC.A(1, bArrC);
        }
        if (str == null) {
            iVarC.J(2);
        } else {
            iVarC.g(2, str);
        }
        xVar.c();
        try {
            iVarC.l();
            xVar.n();
        } finally {
            xVar.j();
            rVar.m(iVarC);
        }
    }

    public final void l(int i8, String str) {
        x xVar = this.f27263a;
        xVar.b();
        r rVar = this.f27266d;
        i iVarC = rVar.c();
        iVarC.w(1, e.o(i8));
        if (str == null) {
            iVarC.J(2);
        } else {
            iVarC.g(2, str);
        }
        xVar.c();
        try {
            iVarC.l();
            xVar.n();
        } finally {
            xVar.j();
            rVar.m(iVarC);
        }
    }
}
