package p021c4;

import A0.O;
import E0.n;
import android.content.ContentValues;
import android.database.AbstractWindowedCursor;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Bundle;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.C1093bD;
import com.google.android.gms.internal.measurement.C2527a1;
import com.google.android.gms.internal.measurement.C2533b1;
import com.google.android.gms.internal.measurement.C2557f1;
import com.google.android.gms.internal.measurement.C2569h1;
import com.google.android.gms.internal.measurement.C2578i4;
import com.google.android.gms.internal.measurement.C2581j1;
import com.google.android.gms.internal.measurement.C2587k1;
import com.google.android.gms.internal.measurement.C2593l1;
import com.google.android.gms.internal.measurement.C2660y1;
import com.google.android.gms.internal.measurement.E3;
import com.google.android.gms.internal.measurement.F3;
import com.google.android.gms.internal.measurement.InterfaceC2661y2;
import com.google.protobuf.U2;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import okhttp3.HttpUrl;
import p000a.r;
import p046f6.c;
import p148t.a;

/* JADX INFO: renamed from: c4.o, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0602o extends u1 {

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final String[] f11302L = {"last_bundled_timestamp", "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;", "last_bundled_day", "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;", "last_sampled_complex_event_id", "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;", "last_sampling_rate", "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;", "last_exempt_from_sampling", "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;", "current_session_count", "ALTER TABLE events ADD COLUMN current_session_count INTEGER;"};

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final String[] f11303M = {"associated_row_id", "ALTER TABLE upload_queue ADD COLUMN associated_row_id INTEGER;", "last_upload_timestamp", "ALTER TABLE upload_queue ADD COLUMN last_upload_timestamp INTEGER;"};

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public static final String[] f11304N = {"origin", "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"};

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public static final String[] f11305O = {"app_version", "ALTER TABLE apps ADD COLUMN app_version TEXT;", "app_store", "ALTER TABLE apps ADD COLUMN app_store TEXT;", "gmp_version", "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;", "dev_cert_hash", "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;", "measurement_enabled", "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;", "last_bundle_start_timestamp", "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;", "day", "ALTER TABLE apps ADD COLUMN day INTEGER;", "daily_public_events_count", "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;", "daily_events_count", "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;", "daily_conversions_count", "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;", "remote_config", "ALTER TABLE apps ADD COLUMN remote_config BLOB;", "config_fetched_time", "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;", "failed_config_fetch_time", "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;", "app_version_int", "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;", "firebase_instance_id", "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;", "daily_error_events_count", "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;", "daily_realtime_events_count", "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;", "health_monitor_sample", "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;", "android_id", "ALTER TABLE apps ADD COLUMN android_id INTEGER;", "adid_reporting_enabled", "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;", "ssaid_reporting_enabled", "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;", "admob_app_id", "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;", "linked_admob_app_id", "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;", "dynamite_version", "ALTER TABLE apps ADD COLUMN dynamite_version INTEGER;", "safelisted_events", "ALTER TABLE apps ADD COLUMN safelisted_events TEXT;", "ga_app_id", "ALTER TABLE apps ADD COLUMN ga_app_id TEXT;", "config_last_modified_time", "ALTER TABLE apps ADD COLUMN config_last_modified_time TEXT;", "e_tag", "ALTER TABLE apps ADD COLUMN e_tag TEXT;", "session_stitching_token", "ALTER TABLE apps ADD COLUMN session_stitching_token TEXT;", "sgtm_upload_enabled", "ALTER TABLE apps ADD COLUMN sgtm_upload_enabled INTEGER;", "target_os_version", "ALTER TABLE apps ADD COLUMN target_os_version INTEGER;", "session_stitching_token_hash", "ALTER TABLE apps ADD COLUMN session_stitching_token_hash INTEGER;", "ad_services_version", "ALTER TABLE apps ADD COLUMN ad_services_version INTEGER;", "unmatched_first_open_without_ad_id", "ALTER TABLE apps ADD COLUMN unmatched_first_open_without_ad_id INTEGER;", "npa_metadata_value", "ALTER TABLE apps ADD COLUMN npa_metadata_value INTEGER;", "attribution_eligibility_status", "ALTER TABLE apps ADD COLUMN attribution_eligibility_status INTEGER;", "sgtm_preview_key", "ALTER TABLE apps ADD COLUMN sgtm_preview_key TEXT;", "dma_consent_state", "ALTER TABLE apps ADD COLUMN dma_consent_state INTEGER;", "daily_realtime_dcu_count", "ALTER TABLE apps ADD COLUMN daily_realtime_dcu_count INTEGER;", "bundle_delivery_index", "ALTER TABLE apps ADD COLUMN bundle_delivery_index INTEGER;", "serialized_npa_metadata", "ALTER TABLE apps ADD COLUMN serialized_npa_metadata TEXT;", "unmatched_pfo", "ALTER TABLE apps ADD COLUMN unmatched_pfo INTEGER;", "unmatched_uwa", "ALTER TABLE apps ADD COLUMN unmatched_uwa INTEGER;", "ad_campaign_info", "ALTER TABLE apps ADD COLUMN ad_campaign_info BLOB;", "daily_registered_triggers_count", "ALTER TABLE apps ADD COLUMN daily_registered_triggers_count INTEGER;", "client_upload_eligibility", "ALTER TABLE apps ADD COLUMN client_upload_eligibility INTEGER;"};

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public static final String[] f11306P = {"realtime", "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"};

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public static final String[] f11307Q = {"has_realtime", "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;", "retry_count", "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"};

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public static final String[] f11308R = {"session_scoped", "ALTER TABLE event_filters ADD COLUMN session_scoped BOOLEAN;"};

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public static final String[] f11309S = {"session_scoped", "ALTER TABLE property_filters ADD COLUMN session_scoped BOOLEAN;"};

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public static final String[] f11310T = {"previous_install_count", "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"};

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public static final String[] f11311U = {"consent_source", "ALTER TABLE consent_settings ADD COLUMN consent_source INTEGER;", "dma_consent_settings", "ALTER TABLE consent_settings ADD COLUMN dma_consent_settings TEXT;", "storage_consent_at_bundling", "ALTER TABLE consent_settings ADD COLUMN storage_consent_at_bundling TEXT;"};

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public static final String[] f11312V = {"idempotent", "CREATE INDEX IF NOT EXISTS trigger_uris_index ON trigger_uris (app_id);"};

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final C0600n f11313J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final c f11314K;

    public C0602o(A1 a8) {
        super(a8);
        this.f11314K = new c(((C0597l0) this.f10616G).f11263T);
        ((C0597l0) this.f10616G).getClass();
        this.f11313J = new C0600n(this, ((C0597l0) this.f10616G).f11250G);
    }

    public static final String W(List list) {
        return list.isEmpty() ? HttpUrl.FRAGMENT_ENCODE_SET : r.g(" AND (upload_type IN (", TextUtils.join(", ", list), "))");
    }

    public static final void d0(ContentValues contentValues, Object obj) {
        com.bumptech.glide.c.e("value");
        com.bumptech.glide.c.h(obj);
        if (obj instanceof String) {
            contentValues.put("value", (String) obj);
        } else if (obj instanceof Long) {
            contentValues.put("value", (Long) obj);
        } else {
            if (!(obj instanceof Double)) {
                throw new IllegalArgumentException("Invalid value type");
            }
            contentValues.put("value", (Double) obj);
        }
    }

    public final void A(List list) {
        com.bumptech.glide.c.h(list);
        m();
        n();
        StringBuilder sb = new StringBuilder("rowid in (");
        for (int i8 = 0; i8 < list.size(); i8++) {
            if (i8 != 0) {
                sb.append(",");
            }
            sb.append(((Long) list.get(i8)).longValue());
        }
        sb.append(")");
        int iDelete = j0().delete("raw_events", sb.toString(), null);
        if (iDelete != list.size()) {
            T t7 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t7);
            t7.f11039L.c(Integer.valueOf(iDelete), Integer.valueOf(list.size()), "Deleted fewer rows from raw events table than expected");
        }
    }

    public final void B(Long l4) {
        m();
        n();
        C0597l0 c0597l0 = (C0597l0) this.f10616G;
        if (c0597l0.f11256M.B(null, E.f10739N0)) {
            try {
                if (j0().delete("upload_queue", "rowid=?", new String[]{l4.toString()}) != 1) {
                    T t7 = c0597l0.f11258O;
                    C0597l0.k(t7);
                    t7.f11042O.a("Deleted fewer rows from upload_queue than expected");
                }
            } catch (SQLiteException e8) {
                T t8 = ((C0597l0) this.f10616G).f11258O;
                C0597l0.k(t8);
                t8.f11039L.b(e8, "Failed to delete a MeasurementBatch in a upload_queue table");
                throw e8;
            }
        }
    }

    public final void C() {
        n();
        j0().endTransaction();
    }

    public final void D(List list) {
        m();
        n();
        if (list.size() == 0) {
            throw new IllegalArgumentException("Given Integer is zero");
        }
        if (Y()) {
            String strG = r.g("(", TextUtils.join(",", list), ")");
            if (e0("SELECT COUNT(1) FROM queue WHERE rowid IN " + strG + " AND retry_count =  2147483647 LIMIT 1", null) > 0) {
                T t7 = ((C0597l0) this.f10616G).f11258O;
                C0597l0.k(t7);
                t7.f11042O.a("The number of upload retries exceeds the limit. Will remain unchanged.");
            }
            try {
                j0().execSQL("UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN " + strG + " AND (retry_count IS NULL OR retry_count < 2147483647)");
            } catch (SQLiteException e8) {
                T t8 = ((C0597l0) this.f10616G).f11258O;
                C0597l0.k(t8);
                t8.f11039L.b(e8, "Error incrementing retry count. error");
            }
        }
    }

    public final void E(Long l4) {
        String str;
        m();
        n();
        C0597l0 c0597l0 = (C0597l0) this.f10616G;
        if (c0597l0.f11256M.B(null, E.f10739N0) && Y()) {
            if (e0("SELECT COUNT(1) FROM upload_queue WHERE rowid = " + l4 + " AND retry_count =  2147483647 LIMIT 1", null) > 0) {
                T t7 = c0597l0.f11258O;
                C0597l0.k(t7);
                t7.f11042O.a("The number of upload retries exceeds the limit. Will remain unchanged.");
            }
            try {
                SQLiteDatabase sQLiteDatabaseJ0 = j0();
                if (c0597l0.f11256M.B(null, E.f10745Q0)) {
                    c0597l0.f11263T.getClass();
                    str = " SET retry_count = retry_count + 1, last_upload_timestamp = " + System.currentTimeMillis();
                } else {
                    str = " SET retry_count = retry_count + 1 ";
                }
                sQLiteDatabaseJ0.execSQL("UPDATE upload_queue" + str + " WHERE rowid = " + l4 + " AND retry_count < 2147483647");
            } catch (SQLiteException e8) {
                T t8 = ((C0597l0) this.f10616G).f11258O;
                C0597l0.k(t8);
                t8.f11039L.b(e8, "Error incrementing retry count. error");
            }
        }
    }

    public final void F() {
        m();
        n();
        if (Y()) {
            A1 a8 = this.f11343H;
            long jA = a8.f10660O.f11183K.a();
            C0597l0 c0597l0 = (C0597l0) this.f10616G;
            c0597l0.f11263T.getClass();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (Math.abs(jElapsedRealtime - jA) > ((Long) E.f10736M.a(null)).longValue()) {
                a8.f10660O.f11183K.b(jElapsedRealtime);
                m();
                n();
                if (Y()) {
                    SQLiteDatabase sQLiteDatabaseJ0 = j0();
                    c0597l0.f11263T.getClass();
                    int iDelete = sQLiteDatabaseJ0.delete("queue", "abs(bundle_end_timestamp - ?) > cast(? as integer)", new String[]{String.valueOf(System.currentTimeMillis()), String.valueOf(((Long) E.f10746R.a(null)).longValue())});
                    if (iDelete > 0) {
                        T t7 = c0597l0.f11258O;
                        C0597l0.k(t7);
                        t7.f11047T.b(Integer.valueOf(iDelete), "Deleted stale rows. rowsDeleted");
                    }
                }
            }
        }
    }

    public final void G(String str, String str2) {
        com.bumptech.glide.c.e(str);
        com.bumptech.glide.c.e(str2);
        m();
        n();
        try {
            j0().delete("user_attributes", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e8) {
            C0597l0 c0597l0 = (C0597l0) this.f10616G;
            T t7 = c0597l0.f11258O;
            C0597l0.k(t7);
            t7.f11039L.d(T.t(str), c0597l0.f11262S.f(str2), e8, "Error deleting user property. appId");
        }
    }

    /* JADX WARN: Code duplicated, block: B:50:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:55:0x00d7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:56:0x00d9 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:7:0x0054  */
    /* JADX WARN: Code duplicated, block: B:9:0x005b  */
    public final void H(String str) throws Throwable {
        boolean z7;
        C0609s c0609sP;
        ArrayList arrayList = new ArrayList(Arrays.asList("name", "lifetime_count"));
        C0609s c0609sP2 = P("events", str, "_f");
        C0609s c0609sP3 = P("events", str, "_v");
        T("events", str);
        Cursor cursorQuery = null;
        boolean z8 = false;
        try {
            cursorQuery = j0().query("events_snapshot", (String[]) arrayList.toArray(new String[0]), "app_id=?", new String[]{str}, null, null, null);
            if (cursorQuery.moveToFirst()) {
                boolean z9 = false;
                z7 = false;
                do {
                    try {
                        String string = cursorQuery.getString(0);
                        if (cursorQuery.getLong(1) >= 1) {
                            if ("_f".equals(string)) {
                                z9 = true;
                            } else if ("_v".equals(string)) {
                                z7 = true;
                            }
                        }
                        if (string != null && (c0609sP = P("events_snapshot", str, string)) != null) {
                            U("events", c0609sP);
                        }
                    } catch (SQLiteException e8) {
                        e = e8;
                        z8 = z9;
                        try {
                            T t7 = ((C0597l0) this.f10616G).f11258O;
                            C0597l0.k(t7);
                            t7.f11039L.c(T.t(str), e, "Error querying snapshot. appId");
                            z9 = z8;
                        } catch (Throwable th) {
                            th = th;
                            if (cursorQuery != null) {
                                cursorQuery.close();
                            }
                            if (z8 && c0609sP2 != null) {
                                U("events", c0609sP2);
                            } else if (!z7 && c0609sP3 != null) {
                                U("events", c0609sP3);
                            }
                            T("events_snapshot", str);
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        z8 = z9;
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        if (z8) {
                            if (!z7) {
                                U("events", c0609sP3);
                            }
                        } else if (!z7) {
                            U("events", c0609sP3);
                        }
                        T("events_snapshot", str);
                        throw th;
                    }
                } while (cursorQuery.moveToNext());
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                if (!z9 && c0609sP2 != null) {
                    U("events", c0609sP2);
                } else if (!z7 && c0609sP3 != null) {
                    U("events", c0609sP3);
                }
            } else {
                cursorQuery.close();
                if (c0609sP2 != null) {
                    U("events", c0609sP2);
                } else if (c0609sP3 != null) {
                    U("events", c0609sP3);
                }
            }
        } catch (SQLiteException e9) {
            e = e9;
            z7 = false;
        } catch (Throwable th3) {
            th = th3;
            z7 = false;
        }
        T("events_snapshot", str);
    }

    public final void I() {
        n();
        j0().setTransactionSuccessful();
    }

    public final void J(P p7, boolean z7) {
        m();
        n();
        String strC = p7.c();
        com.bumptech.glide.c.h(strC);
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", strC);
        EnumC0618w0 enumC0618w0 = EnumC0618w0.ANALYTICS_STORAGE;
        A1 a8 = this.f11343H;
        if (z7) {
            contentValues.put("app_instance_id", (String) null);
        } else if (a8.i0(strC).k(enumC0618w0)) {
            contentValues.put("app_instance_id", p7.d());
        }
        contentValues.put("gmp_app_id", p7.g());
        boolean zK = a8.i0(strC).k(EnumC0618w0.AD_STORAGE);
        C0597l0 c0597l0 = p7.f10984a;
        if (zK) {
            C0591j0 c0591j0 = c0597l0.f11259P;
            C0597l0.k(c0591j0);
            c0591j0.m();
            contentValues.put("resettable_device_id_hash", p7.f10988e);
        }
        C0591j0 c0591j1 = c0597l0.f11259P;
        C0597l0.k(c0591j1);
        c0591j1.m();
        contentValues.put("last_bundle_index", Long.valueOf(p7.f10990g));
        C0591j0 c0591j2 = c0597l0.f11259P;
        C0597l0.k(c0591j2);
        c0591j2.m();
        contentValues.put("last_bundle_start_timestamp", Long.valueOf(p7.f10991h));
        C0591j0 c0591j3 = c0597l0.f11259P;
        C0597l0.k(c0591j3);
        c0591j3.m();
        contentValues.put("last_bundle_end_timestamp", Long.valueOf(p7.f10992i));
        contentValues.put("app_version", p7.e());
        C0591j0 c0591j4 = c0597l0.f11259P;
        C0597l0.k(c0591j4);
        c0591j4.m();
        contentValues.put("app_store", p7.f10995l);
        C0591j0 c0591j5 = c0597l0.f11259P;
        C0597l0.k(c0591j5);
        c0591j5.m();
        contentValues.put("gmp_version", Long.valueOf(p7.f10996m));
        C0591j0 c0591j6 = c0597l0.f11259P;
        C0597l0.k(c0591j6);
        c0591j6.m();
        contentValues.put("dev_cert_hash", Long.valueOf(p7.f10997n));
        C0591j0 c0591j7 = c0597l0.f11259P;
        C0597l0.k(c0591j7);
        c0591j7.m();
        contentValues.put("measurement_enabled", Boolean.valueOf(p7.f10998o));
        C0591j0 c0591j8 = c0597l0.f11259P;
        C0597l0.k(c0591j8);
        c0591j8.m();
        contentValues.put("day", Long.valueOf(p7.f10974K));
        C0591j0 c0591j9 = c0597l0.f11259P;
        C0597l0.k(c0591j9);
        c0591j9.m();
        contentValues.put("daily_public_events_count", Long.valueOf(p7.f10975L));
        C0597l0.k(c0591j9);
        c0591j9.m();
        contentValues.put("daily_events_count", Long.valueOf(p7.f10976M));
        C0597l0.k(c0591j9);
        c0591j9.m();
        contentValues.put("daily_conversions_count", Long.valueOf(p7.f10977N));
        C0591j0 c0591j10 = c0597l0.f11259P;
        C0597l0.k(c0591j10);
        c0591j10.m();
        contentValues.put("config_fetched_time", Long.valueOf(p7.f10982S));
        C0591j0 c0591j11 = c0597l0.f11259P;
        C0597l0.k(c0591j11);
        c0591j11.m();
        contentValues.put("failed_config_fetch_time", Long.valueOf(p7.f10983T));
        contentValues.put("app_version_int", Long.valueOf(p7.S()));
        contentValues.put("firebase_instance_id", p7.f());
        C0597l0.k(c0591j9);
        c0591j9.m();
        contentValues.put("daily_error_events_count", Long.valueOf(p7.f10978O));
        C0597l0.k(c0591j9);
        c0591j9.m();
        contentValues.put("daily_realtime_events_count", Long.valueOf(p7.f10979P));
        C0597l0.k(c0591j9);
        c0591j9.m();
        contentValues.put("health_monitor_sample", p7.f10980Q);
        contentValues.put("android_id", (Long) 0L);
        C0591j0 c0591j12 = c0597l0.f11259P;
        C0597l0.k(c0591j12);
        c0591j12.m();
        contentValues.put("adid_reporting_enabled", Boolean.valueOf(p7.f10999p));
        contentValues.put("admob_app_id", p7.a());
        contentValues.put("dynamite_version", Long.valueOf(p7.T()));
        if (a8.i0(strC).k(enumC0618w0)) {
            C0591j0 c0591j13 = c0597l0.f11259P;
            C0597l0.k(c0591j13);
            c0591j13.m();
            contentValues.put("session_stitching_token", p7.f11004u);
        }
        contentValues.put("sgtm_upload_enabled", Boolean.valueOf(p7.t()));
        C0591j0 c0591j14 = c0597l0.f11259P;
        C0597l0.k(c0591j14);
        c0591j14.m();
        contentValues.put("target_os_version", Long.valueOf(p7.f11006w));
        C0591j0 c0591j15 = c0597l0.f11259P;
        C0597l0.k(c0591j15);
        c0591j15.m();
        contentValues.put("session_stitching_token_hash", Long.valueOf(p7.f11007x));
        C2578i4.b();
        C0597l0 c0597l1 = (C0597l0) this.f10616G;
        if (c0597l1.f11256M.B(strC, E.f10757W0)) {
            C0591j0 c0591j16 = c0597l0.f11259P;
            C0597l0.k(c0591j16);
            c0591j16.m();
            contentValues.put("ad_services_version", Integer.valueOf(p7.f11008y));
            C0591j0 c0591j17 = c0597l0.f11259P;
            C0597l0.k(c0591j17);
            c0591j17.m();
            contentValues.put("attribution_eligibility_status", Long.valueOf(p7.f10966C));
        }
        C0591j0 c0591j18 = c0597l0.f11259P;
        C0597l0.k(c0591j18);
        c0591j18.m();
        contentValues.put("unmatched_first_open_without_ad_id", Boolean.valueOf(p7.f11009z));
        contentValues.put("npa_metadata_value", p7.U());
        C0591j0 c0591j19 = c0597l0.f11259P;
        C0597l0.k(c0591j19);
        c0591j19.m();
        contentValues.put("bundle_delivery_index", Long.valueOf(p7.f10970G));
        contentValues.put("sgtm_preview_key", p7.i());
        C0597l0.k(c0591j9);
        c0591j9.m();
        contentValues.put("dma_consent_state", Integer.valueOf(p7.f10968E));
        C0597l0.k(c0591j9);
        c0591j9.m();
        contentValues.put("daily_realtime_dcu_count", Integer.valueOf(p7.f10969F));
        contentValues.put("serialized_npa_metadata", p7.h());
        D d6 = E.f10745Q0;
        C0584h c0584h = c0597l1.f11256M;
        if (c0584h.B(strC, d6)) {
            contentValues.put("client_upload_eligibility", Integer.valueOf(p7.R()));
        }
        C0591j0 c0591j20 = c0597l0.f11259P;
        C0597l0.k(c0591j20);
        c0591j20.m();
        ArrayList arrayList = p7.f11003t;
        T t7 = c0597l1.f11258O;
        if (arrayList != null) {
            if (arrayList.isEmpty()) {
                C0597l0.k(t7);
                t7.f11042O.b(strC, "Safelisted events should not be an empty list. appId");
            } else {
                contentValues.put("safelisted_events", TextUtils.join(",", arrayList));
            }
        }
        ((F3) E3.f22909H.f22910G.f31450G).getClass();
        if (c0584h.B(null, E.f10733K0) && !contentValues.containsKey("safelisted_events")) {
            contentValues.put("safelisted_events", (String) null);
        }
        C0591j0 c0591j21 = c0597l0.f11259P;
        C0597l0.k(c0591j21);
        c0591j21.m();
        contentValues.put("unmatched_pfo", p7.f10964A);
        C0591j0 c0591j22 = c0597l0.f11259P;
        C0597l0.k(c0591j22);
        c0591j22.m();
        contentValues.put("unmatched_uwa", p7.f10965B);
        C0591j0 c0591j23 = c0597l0.f11259P;
        C0597l0.k(c0591j23);
        c0591j23.m();
        contentValues.put("ad_campaign_info", p7.f10972I);
        try {
            SQLiteDatabase sQLiteDatabaseJ0 = j0();
            if (sQLiteDatabaseJ0.update("apps", contentValues, "app_id = ?", new String[]{strC}) == 0 && sQLiteDatabaseJ0.insertWithOnConflict("apps", null, contentValues, 5) == -1) {
                C0597l0.k(t7);
                t7.f11039L.b(T.t(strC), "Failed to insert/update app (got -1). appId");
            }
        } catch (SQLiteException e8) {
            T t8 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t8);
            t8.f11039L.c(T.t(strC), e8, "Error storing app. appId");
        }
    }

    public final void K(String str, C0620x0 c0620x0) {
        com.bumptech.glide.c.h(str);
        m();
        n();
        L(str, r0(str));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("storage_consent_at_bundling", c0620x0.j());
        V(contentValues);
    }

    public final void L(String str, C0620x0 c0620x0) {
        com.bumptech.glide.c.h(str);
        com.bumptech.glide.c.h(c0620x0);
        m();
        n();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("consent_state", c0620x0.j());
        contentValues.put("consent_source", Integer.valueOf(c0620x0.f11405b));
        V(contentValues);
    }

    public final boolean M(String str) {
        C0597l0 c0597l0 = (C0597l0) this.f10616G;
        if (c0597l0.f11256M.B(null, E.f10739N0)) {
            if (c0597l0.f11256M.B(null, E.f10745Q0)) {
                R0[] r0Arr = {R0.GOOGLE_SIGNAL};
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(Integer.valueOf(r0Arr[0].f11028G));
                return e0(U2.m("SELECT COUNT(1) > 0 FROM upload_queue WHERE app_id=?", W(arrayList), " AND NOT ", R()), new String[]{str}) != 0;
            }
            if (e0("SELECT COUNT(1) > 0 FROM upload_queue WHERE app_id=? AND NOT ".concat(R()), new String[]{str}) != 0) {
                return true;
            }
        }
        return false;
    }

    public final boolean N(String str, String str2) {
        return e0("select count(1) from raw_events where app_id = ? and name = ?", new String[]{str, str2}) > 0;
    }

    public final void O(String str, String str2) {
        com.bumptech.glide.c.e(str);
        com.bumptech.glide.c.e(str2);
        m();
        n();
        try {
            j0().delete("conditional_properties", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e8) {
            C0597l0 c0597l0 = (C0597l0) this.f10616G;
            T t7 = c0597l0.f11258O;
            C0597l0.k(t7);
            t7.f11039L.d(T.t(str), c0597l0.f11262S.f(str2), e8, "Error deleting conditional property");
        }
    }

    /* JADX WARN: Code duplicated, block: B:54:0x0132  */
    /* JADX WARN: Multi-variable type inference failed */
    public final C0609s P(String str, String str2, String str3) {
        Cursor cursorQuery;
        Boolean boolValueOf;
        com.bumptech.glide.c.e(str2);
        com.bumptech.glide.c.e(str3);
        m();
        n();
        AbstractWindowedCursor abstractWindowedCursor = 0;
        try {
            try {
                cursorQuery = j0().query(str, (String[]) new ArrayList(Arrays.asList("lifetime_count", "current_bundle_count", "last_fire_timestamp", "last_bundled_timestamp", "last_bundled_day", "last_sampled_complex_event_id", "last_sampling_rate", "last_exempt_from_sampling", "current_session_count")).toArray(new String[0]), "app_id=? and name=?", new String[]{str2, str3}, null, null, null);
                try {
                    if (cursorQuery.moveToFirst()) {
                        long j8 = cursorQuery.getLong(0);
                        long j9 = cursorQuery.getLong(1);
                        long j10 = cursorQuery.getLong(2);
                        long j11 = cursorQuery.isNull(3) ? 0L : cursorQuery.getLong(3);
                        Long lValueOf = cursorQuery.isNull(4) ? null : Long.valueOf(cursorQuery.getLong(4));
                        Long lValueOf2 = cursorQuery.isNull(5) ? null : Long.valueOf(cursorQuery.getLong(5));
                        Long lValueOf3 = cursorQuery.isNull(6) ? null : Long.valueOf(cursorQuery.getLong(6));
                        if (cursorQuery.isNull(7)) {
                            boolValueOf = null;
                        } else {
                            boolValueOf = Boolean.valueOf(cursorQuery.getLong(7) == 1);
                        }
                        C0609s c0609s = new C0609s(str2, str3, j8, j9, cursorQuery.isNull(8) ? 0L : cursorQuery.getLong(8), j10, j11, lValueOf, lValueOf2, lValueOf3, boolValueOf);
                        if (cursorQuery.moveToNext()) {
                            T t7 = ((C0597l0) this.f10616G).f11258O;
                            C0597l0.k(t7);
                            t7.f11039L.b(T.t(str2), "Got multiple records for event aggregates, expected one. appId");
                        }
                        cursorQuery.close();
                        return c0609s;
                    }
                } catch (SQLiteException e8) {
                    e = e8;
                    C0597l0 c0597l0 = (C0597l0) this.f10616G;
                    T t8 = c0597l0.f11258O;
                    C0597l0.k(t8);
                    t8.f11039L.d(T.t(str2), c0597l0.f11262S.d(str3), e, "Error querying events. appId");
                }
            } catch (SQLiteException e9) {
                e = e9;
                cursorQuery = null;
            } catch (Throwable th) {
                th = th;
                if (abstractWindowedCursor != 0) {
                    abstractWindowedCursor.close();
                }
                throw th;
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return null;
        } catch (Throwable th2) {
            th = th2;
            abstractWindowedCursor = "current_bundle_count";
            if (abstractWindowedCursor != 0) {
                abstractWindowedCursor.close();
            }
            throw th;
        }
    }

    public final C1 Q(String str, long j8, byte[] bArr, String str2, String str3, int i8, int i9, long j9, long j10, long j11) {
        R0 r7;
        if (TextUtils.isEmpty(str2)) {
            T t7 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t7);
            t7.f11046S.a("Upload uri is null or empty. Destination is unknown. Dropping batch. ");
            return null;
        }
        try {
            C2569h1 c2569h1 = (C2569h1) E1.O(C2581j1.r(), bArr);
            R0[] r0ArrValues = R0.values();
            int length = r0ArrValues.length;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    r7 = R0.UNKNOWN;
                    break;
                }
                R0 r8 = r0ArrValues[i10];
                if (r8.f11028G == i8) {
                    r7 = r8;
                    break;
                }
                i10++;
            }
            if (r7 != R0.GOOGLE_SIGNAL && r7 != R0.GOOGLE_SIGNAL_PENDING && i9 > 0) {
                ArrayList arrayList = new ArrayList();
                Iterator it = Collections.unmodifiableList(((C2581j1) c2569h1.f23247H).w()).iterator();
                while (it.hasNext()) {
                    C2587k1 c2587k1 = (C2587k1) ((C2593l1) it.next()).g();
                    c2587k1.g();
                    C2593l1.x1((C2593l1) c2587k1.f23247H, i9);
                    arrayList.add((C2593l1) c2587k1.e());
                }
                c2569h1.g();
                C2581j1.z((C2581j1) c2569h1.f23247H);
                c2569h1.g();
                C2581j1.x((C2581j1) c2569h1.f23247H, arrayList);
            }
            HashMap map = new HashMap();
            if (str3 != null) {
                for (String str4 : str3.split("\r\n")) {
                    if (str4.isEmpty()) {
                        break;
                    }
                    String[] strArrSplit = str4.split("=", 2);
                    if (strArrSplit.length != 2) {
                        T t8 = ((C0597l0) this.f10616G).f11258O;
                        C0597l0.k(t8);
                        t8.f11039L.b(str4, "Invalid upload header: ");
                        break;
                    }
                    map.put(strArrSplit[0], strArrSplit[1]);
                }
            }
            return new C1(j8, (C2581j1) c2569h1.e(), str2, map, r7, j10, j11, i9);
        } catch (IOException e8) {
            T t9 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t9);
            t9.f11039L.c(str, e8, "Failed to queued MeasurementBatch from upload_queue. appId");
            return null;
        }
    }

    public final String R() {
        ((C0597l0) this.f10616G).f11263T.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        Locale locale = Locale.US;
        Long l4 = (Long) E.f10748S.a(null);
        l4.getClass();
        return O.C("(", "(upload_type = 1 AND ABS(creation_timestamp - " + jCurrentTimeMillis + ") > " + l4 + ")", " OR ", r.i(a.d("(upload_type != 1 AND ABS(creation_timestamp - ", jCurrentTimeMillis, ") > "), ((Long) E.f10746R.a(null)).longValue(), ")"), ")");
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0035  */
    public final String S(String str, String[] strArr) {
        Cursor cursorRawQuery = null;
        try {
            try {
                cursorRawQuery = j0().rawQuery(str, strArr);
                if (!cursorRawQuery.moveToFirst()) {
                    cursorRawQuery.close();
                    return HttpUrl.FRAGMENT_ENCODE_SET;
                }
                String string = cursorRawQuery.getString(0);
                cursorRawQuery.close();
                return string;
            } catch (SQLiteException e8) {
                T t7 = ((C0597l0) this.f10616G).f11258O;
                C0597l0.k(t7);
                t7.f11039L.c(str, e8, "Database error");
                throw e8;
            }
        } catch (Throwable th) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th;
        }
        if (cursorRawQuery != null) {
            cursorRawQuery.close();
        }
        throw th;
    }

    public final void T(String str, String str2) {
        com.bumptech.glide.c.e(str2);
        m();
        n();
        try {
            j0().delete(str, "app_id=?", new String[]{str2});
        } catch (SQLiteException e8) {
            T t7 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t7);
            t7.f11039L.c(T.t(str2), e8, "Error deleting snapshot. appId");
        }
    }

    public final void U(String str, C0609s c0609s) {
        com.bumptech.glide.c.h(c0609s);
        m();
        n();
        ContentValues contentValues = new ContentValues();
        String str2 = c0609s.f11356a;
        contentValues.put("app_id", str2);
        contentValues.put("name", c0609s.f11357b);
        contentValues.put("lifetime_count", Long.valueOf(c0609s.f11358c));
        contentValues.put("current_bundle_count", Long.valueOf(c0609s.f11359d));
        contentValues.put("last_fire_timestamp", Long.valueOf(c0609s.f11361f));
        contentValues.put("last_bundled_timestamp", Long.valueOf(c0609s.f11362g));
        contentValues.put("last_bundled_day", c0609s.f11363h);
        contentValues.put("last_sampled_complex_event_id", c0609s.f11364i);
        contentValues.put("last_sampling_rate", c0609s.f11365j);
        contentValues.put("current_session_count", Long.valueOf(c0609s.f11360e));
        Boolean bool = c0609s.f11366k;
        contentValues.put("last_exempt_from_sampling", (bool == null || !bool.booleanValue()) ? null : 1L);
        try {
            if (j0().insertWithOnConflict(str, null, contentValues, 5) == -1) {
                T t7 = ((C0597l0) this.f10616G).f11258O;
                C0597l0.k(t7);
                t7.f11039L.b(T.t(str2), "Failed to insert/update event aggregates (got -1). appId");
            }
        } catch (SQLiteException e8) {
            T t8 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t8);
            t8.f11039L.c(T.t(str2), e8, "Error storing event aggregates. appId");
        }
    }

    public final void V(ContentValues contentValues) {
        try {
            SQLiteDatabase sQLiteDatabaseJ0 = j0();
            String asString = contentValues.getAsString("app_id");
            if (asString == null) {
                T t7 = ((C0597l0) this.f10616G).f11258O;
                C0597l0.k(t7);
                t7.f11041N.b(T.t("app_id"), "Value of the primary key is not set.");
            } else if (sQLiteDatabaseJ0.update("consent_settings", contentValues, "app_id = ?", new String[]{asString}) == 0 && sQLiteDatabaseJ0.insertWithOnConflict("consent_settings", null, contentValues, 5) == -1) {
                T t8 = ((C0597l0) this.f10616G).f11258O;
                C0597l0.k(t8);
                t8.f11039L.c(T.t("consent_settings"), T.t("app_id"), "Failed to insert/update table (got -1). key");
            }
        } catch (SQLiteException e8) {
            T t9 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t9);
            t9.f11039L.d(T.t("consent_settings"), T.t("app_id"), e8, "Error storing into table. key");
        }
    }

    public final void X(String str, o1 o1Var) {
        m();
        n();
        com.bumptech.glide.c.e(str);
        C0597l0 c0597l0 = (C0597l0) this.f10616G;
        c0597l0.f11263T.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        D d6 = E.f10826v0;
        long jLongValue = jCurrentTimeMillis - ((Long) d6.a(null)).longValue();
        T t7 = c0597l0.f11258O;
        long j8 = o1Var.f11319H;
        if (j8 < jLongValue || j8 > ((Long) d6.a(null)).longValue() + jCurrentTimeMillis) {
            C0597l0.k(t7);
            t7.f11042O.d(T.t(str), Long.valueOf(jCurrentTimeMillis), Long.valueOf(j8), "Storing trigger URI outside of the max retention time span. appId, now, timestamp");
        }
        C0597l0.k(t7);
        t7.f11047T.a("Saving trigger URI");
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("trigger_uri", o1Var.f11318G);
        contentValues.put("source", Integer.valueOf(o1Var.f11320I));
        contentValues.put("timestamp_millis", Long.valueOf(j8));
        try {
            if (j0().insert("trigger_uris", null, contentValues) == -1) {
                C0597l0.k(t7);
                t7.f11039L.b(T.t(str), "Failed to insert trigger URI (got -1). appId");
            }
        } catch (SQLiteException e8) {
            T t8 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t8);
            t8.f11039L.c(T.t(str), e8, "Error storing trigger URI. appId");
        }
    }

    public final boolean Y() {
        return ((C0597l0) this.f10616G).f11250G.getDatabasePath("google_app_measurement.db").exists();
    }

    public final void Z(String str, Long l4, long j8, C2533b1 c2533b1) {
        m();
        n();
        com.bumptech.glide.c.h(c2533b1);
        com.bumptech.glide.c.e(str);
        C0597l0 c0597l0 = (C0597l0) this.f10616G;
        byte[] bArrC = c2533b1.c();
        T t7 = c0597l0.f11258O;
        C0597l0.k(t7);
        t7.f11047T.c(c0597l0.f11262S.d(str), Integer.valueOf(bArrC.length), "Saving complex main event, appId, data size");
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("event_id", l4);
        contentValues.put("children_to_process", Long.valueOf(j8));
        contentValues.put("main_event", bArrC);
        try {
            if (j0().insertWithOnConflict("main_event_params", null, contentValues, 5) == -1) {
                T t8 = c0597l0.f11258O;
                C0597l0.k(t8);
                t8.f11039L.b(T.t(str), "Failed to insert complex main event (got -1). appId");
            }
        } catch (SQLiteException e8) {
            T t9 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t9);
            t9.f11039L.c(T.t(str), e8, "Error storing complex main event. appId");
        }
    }

    public final boolean a0(C0578f c0578f) {
        m();
        n();
        String str = c0578f.f11160G;
        com.bumptech.glide.c.h(str);
        if (t0(str, c0578f.f11162I.f10840H) == null) {
            long jE0 = e0("SELECT COUNT(1) FROM conditional_properties WHERE app_id=?", new String[]{str});
            ((C0597l0) this.f10616G).getClass();
            if (jE0 >= 1000) {
                return false;
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("origin", c0578f.f11161H);
        contentValues.put("name", c0578f.f11162I.f10840H);
        Object objI = c0578f.f11162I.i();
        com.bumptech.glide.c.h(objI);
        d0(contentValues, objI);
        contentValues.put("active", Boolean.valueOf(c0578f.f11164K));
        contentValues.put("trigger_event_name", c0578f.f11165L);
        contentValues.put("trigger_timeout", Long.valueOf(c0578f.f11167N));
        C0597l0 c0597l0 = (C0597l0) this.f10616G;
        I1 i8 = c0597l0.f11261R;
        C0597l0.i(i8);
        i8.getClass();
        contentValues.put("timed_out_event", I1.o0(c0578f.f11166M));
        contentValues.put("creation_timestamp", Long.valueOf(c0578f.f11163J));
        I1 i9 = c0597l0.f11261R;
        C0597l0.i(i9);
        C0613u c0613u = c0578f.f11168O;
        i9.getClass();
        contentValues.put("triggered_event", I1.o0(c0613u));
        contentValues.put("triggered_timestamp", Long.valueOf(c0578f.f11162I.f10841I));
        contentValues.put("time_to_live", Long.valueOf(c0578f.f11169P));
        contentValues.put("expired_event", I1.o0(c0578f.f11170Q));
        try {
            if (j0().insertWithOnConflict("conditional_properties", null, contentValues, 5) != -1) {
                return true;
            }
            T t7 = c0597l0.f11258O;
            C0597l0.k(t7);
            t7.f11039L.b(T.t(str), "Failed to insert/update conditional user property (got -1)");
            return true;
        } catch (SQLiteException e8) {
            T t8 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t8);
            t8.f11039L.c(T.t(str), e8, "Error storing conditional user property");
            return true;
        }
    }

    public final boolean b0(G1 g8) {
        m();
        n();
        String str = g8.f10849a;
        String str2 = g8.f10851c;
        G1 g1T0 = t0(str, str2);
        String str3 = g8.f10850b;
        if (g1T0 == null) {
            if (I1.i0(str2)) {
                if (e0("select count(1) from user_attributes where app_id=? and name not like '!_%' escape '!'", new String[]{str}) >= Math.max(Math.min(((C0597l0) this.f10616G).f11256M.t(str, E.f10754V), 100), 25)) {
                    return false;
                }
            } else if (!"_npa".equals(str2)) {
                long jE0 = e0("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[]{str, str3});
                ((C0597l0) this.f10616G).getClass();
                if (jE0 >= 25) {
                    return false;
                }
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("origin", str3);
        contentValues.put("name", str2);
        contentValues.put("set_timestamp", Long.valueOf(g8.f10852d));
        d0(contentValues, g8.f10853e);
        try {
            if (j0().insertWithOnConflict("user_attributes", null, contentValues, 5) != -1) {
                return true;
            }
            T t7 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t7);
            t7.f11039L.b(T.t(str), "Failed to insert/update user property (got -1). appId");
            return true;
        } catch (SQLiteException e8) {
            T t8 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t8);
            t8.f11039L.c(T.t(str), e8, "Error storing user property. appId");
            return true;
        }
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00d7 A[Catch: all -> 0x0068, SQLiteException -> 0x006b, TryCatch #1 {all -> 0x0068, blocks: (B:3:0x000f, B:8:0x0024, B:12:0x003f, B:15:0x005c, B:16:0x0060, B:35:0x00b0, B:37:0x00d7, B:38:0x00ed, B:39:0x00f1, B:40:0x0101, B:42:0x0107, B:43:0x011b, B:45:0x0127, B:47:0x0144, B:49:0x0173, B:50:0x017b, B:52:0x0186, B:57:0x01c7, B:56:0x01b1, B:60:0x01ce, B:46:0x013a, B:62:0x01e4, B:64:0x01f9, B:9:0x0033, B:26:0x0077, B:30:0x008a, B:33:0x00a7, B:27:0x0082), top: B:73:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:38:0x00ed A[Catch: all -> 0x0068, SQLiteException -> 0x006b, TRY_LEAVE, TryCatch #1 {all -> 0x0068, blocks: (B:3:0x000f, B:8:0x0024, B:12:0x003f, B:15:0x005c, B:16:0x0060, B:35:0x00b0, B:37:0x00d7, B:38:0x00ed, B:39:0x00f1, B:40:0x0101, B:42:0x0107, B:43:0x011b, B:45:0x0127, B:47:0x0144, B:49:0x0173, B:50:0x017b, B:52:0x0186, B:57:0x01c7, B:56:0x01b1, B:60:0x01ce, B:46:0x013a, B:62:0x01e4, B:64:0x01f9, B:9:0x0033, B:26:0x0077, B:30:0x008a, B:33:0x00a7, B:27:0x0082), top: B:73:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:42:0x0107 A[Catch: all -> 0x0068, SQLiteException -> 0x006b, TryCatch #1 {all -> 0x0068, blocks: (B:3:0x000f, B:8:0x0024, B:12:0x003f, B:15:0x005c, B:16:0x0060, B:35:0x00b0, B:37:0x00d7, B:38:0x00ed, B:39:0x00f1, B:40:0x0101, B:42:0x0107, B:43:0x011b, B:45:0x0127, B:47:0x0144, B:49:0x0173, B:50:0x017b, B:52:0x0186, B:57:0x01c7, B:56:0x01b1, B:60:0x01ce, B:46:0x013a, B:62:0x01e4, B:64:0x01f9, B:9:0x0033, B:26:0x0077, B:30:0x008a, B:33:0x00a7, B:27:0x0082), top: B:73:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:45:0x0127 A[Catch: all -> 0x0068, SQLiteException -> 0x006b, TryCatch #1 {all -> 0x0068, blocks: (B:3:0x000f, B:8:0x0024, B:12:0x003f, B:15:0x005c, B:16:0x0060, B:35:0x00b0, B:37:0x00d7, B:38:0x00ed, B:39:0x00f1, B:40:0x0101, B:42:0x0107, B:43:0x011b, B:45:0x0127, B:47:0x0144, B:49:0x0173, B:50:0x017b, B:52:0x0186, B:57:0x01c7, B:56:0x01b1, B:60:0x01ce, B:46:0x013a, B:62:0x01e4, B:64:0x01f9, B:9:0x0033, B:26:0x0077, B:30:0x008a, B:33:0x00a7, B:27:0x0082), top: B:73:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:46:0x013a A[Catch: all -> 0x0068, SQLiteException -> 0x006b, TryCatch #1 {all -> 0x0068, blocks: (B:3:0x000f, B:8:0x0024, B:12:0x003f, B:15:0x005c, B:16:0x0060, B:35:0x00b0, B:37:0x00d7, B:38:0x00ed, B:39:0x00f1, B:40:0x0101, B:42:0x0107, B:43:0x011b, B:45:0x0127, B:47:0x0144, B:49:0x0173, B:50:0x017b, B:52:0x0186, B:57:0x01c7, B:56:0x01b1, B:60:0x01ce, B:46:0x013a, B:62:0x01e4, B:64:0x01f9, B:9:0x0033, B:26:0x0077, B:30:0x008a, B:33:0x00a7, B:27:0x0082), top: B:73:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:49:0x0173 A[Catch: all -> 0x0068, SQLiteException -> 0x006b, LOOP:0: B:49:0x0173->B:79:?, LOOP_START, TRY_LEAVE, TryCatch #1 {all -> 0x0068, blocks: (B:3:0x000f, B:8:0x0024, B:12:0x003f, B:15:0x005c, B:16:0x0060, B:35:0x00b0, B:37:0x00d7, B:38:0x00ed, B:39:0x00f1, B:40:0x0101, B:42:0x0107, B:43:0x011b, B:45:0x0127, B:47:0x0144, B:49:0x0173, B:50:0x017b, B:52:0x0186, B:57:0x01c7, B:56:0x01b1, B:60:0x01ce, B:46:0x013a, B:62:0x01e4, B:64:0x01f9, B:9:0x0033, B:26:0x0077, B:30:0x008a, B:33:0x00a7, B:27:0x0082), top: B:73:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:57:0x01c7 A[Catch: all -> 0x0068, SQLiteException -> 0x006b, TryCatch #1 {all -> 0x0068, blocks: (B:3:0x000f, B:8:0x0024, B:12:0x003f, B:15:0x005c, B:16:0x0060, B:35:0x00b0, B:37:0x00d7, B:38:0x00ed, B:39:0x00f1, B:40:0x0101, B:42:0x0107, B:43:0x011b, B:45:0x0127, B:47:0x0144, B:49:0x0173, B:50:0x017b, B:52:0x0186, B:57:0x01c7, B:56:0x01b1, B:60:0x01ce, B:46:0x013a, B:62:0x01e4, B:64:0x01f9, B:9:0x0033, B:26:0x0077, B:30:0x008a, B:33:0x00a7, B:27:0x0082), top: B:73:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:60:0x01ce A[Catch: all -> 0x0068, SQLiteException -> 0x006b, TryCatch #1 {all -> 0x0068, blocks: (B:3:0x000f, B:8:0x0024, B:12:0x003f, B:15:0x005c, B:16:0x0060, B:35:0x00b0, B:37:0x00d7, B:38:0x00ed, B:39:0x00f1, B:40:0x0101, B:42:0x0107, B:43:0x011b, B:45:0x0127, B:47:0x0144, B:49:0x0173, B:50:0x017b, B:52:0x0186, B:57:0x01c7, B:56:0x01b1, B:60:0x01ce, B:46:0x013a, B:62:0x01e4, B:64:0x01f9, B:9:0x0033, B:26:0x0077, B:30:0x008a, B:33:0x00a7, B:27:0x0082), top: B:73:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:77:0x01af A[SYNTHETIC] */
    public final void c0(String str, long j8, long j9, p151t2.c cVar) {
        String string;
        String string2;
        char c8;
        char c9;
        String[] strArr;
        String str2;
        long j10;
        C2527a1 c2527a1;
        m();
        n();
        Cursor cursorRawQuery = null;
        try {
            try {
                SQLiteDatabase sQLiteDatabaseJ0 = j0();
                boolean zIsEmpty = TextUtils.isEmpty(str);
                String str3 = HttpUrl.FRAGMENT_ENCODE_SET;
                if (zIsEmpty) {
                    String[] strArr2 = j9 != -1 ? new String[]{String.valueOf(j9), String.valueOf(j8)} : new String[]{String.valueOf(j8)};
                    if (j9 != -1) {
                        str3 = "rowid <= ? and ";
                    }
                    cursorRawQuery = sQLiteDatabaseJ0.rawQuery("select app_id, metadata_fingerprint from raw_events where " + str3 + "app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;", strArr2);
                    if (cursorRawQuery.moveToFirst()) {
                        string = cursorRawQuery.getString(0);
                        try {
                            string2 = cursorRawQuery.getString(1);
                            cursorRawQuery.close();
                            cursorRawQuery = sQLiteDatabaseJ0.query("raw_events_metadata", new String[]{"metadata"}, "app_id = ? and metadata_fingerprint = ?", new String[]{string, string2}, null, null, "rowid", "2");
                            if (cursorRawQuery.moveToFirst()) {
                                try {
                                    C2593l1 c2593l1 = (C2593l1) ((C2587k1) E1.O(C2593l1.n2(), cursorRawQuery.getBlob(0))).e();
                                    if (cursorRawQuery.moveToNext()) {
                                        T t7 = ((C0597l0) this.f10616G).f11258O;
                                        C0597l0.k(t7);
                                        t7.f11042O.b(T.t(string), "Get multiple raw event metadata records, expected one. appId");
                                    }
                                    cursorRawQuery.close();
                                    cVar.f30273I = c2593l1;
                                    if (j9 != -1) {
                                        c9 = 1;
                                        c8 = 2;
                                        str2 = "app_id = ? and metadata_fingerprint = ? and rowid <= ?";
                                        strArr = new String[]{string, string2, String.valueOf(j9)};
                                    } else {
                                        c8 = 2;
                                        c9 = 1;
                                        strArr = new String[]{string, string2};
                                        str2 = "app_id = ? and metadata_fingerprint = ?";
                                    }
                                    String[] strArr3 = new String[4];
                                    strArr3[0] = "rowid";
                                    strArr3[c9] = "name";
                                    strArr3[c8] = "timestamp";
                                    strArr3[3] = "data";
                                    cursorRawQuery = sQLiteDatabaseJ0.query("raw_events", strArr3, str2, strArr, null, null, "rowid", null);
                                    if (cursorRawQuery.moveToFirst()) {
                                        do {
                                            j10 = cursorRawQuery.getLong(0);
                                            try {
                                                c2527a1 = (C2527a1) E1.O(C2533b1.u(), cursorRawQuery.getBlob(3));
                                                String string3 = cursorRawQuery.getString(1);
                                                c2527a1.g();
                                                C2533b1.C((C2533b1) c2527a1.f23247H, string3);
                                                long j11 = cursorRawQuery.getLong(2);
                                                c2527a1.g();
                                                C2533b1.F(j11, (C2533b1) c2527a1.f23247H);
                                                if (!cVar.d(j10, (C2533b1) c2527a1.e())) {
                                                    break;
                                                }
                                            } catch (IOException e8) {
                                                T t8 = ((C0597l0) this.f10616G).f11258O;
                                                C0597l0.k(t8);
                                                t8.f11039L.c(T.t(string), e8, "Data loss. Failed to merge raw event. appId");
                                            }
                                        } while (cursorRawQuery.moveToNext());
                                    } else {
                                        T t9 = ((C0597l0) this.f10616G).f11258O;
                                        C0597l0.k(t9);
                                        t9.f11042O.b(T.t(string), "Raw event data disappeared while in transaction. appId");
                                    }
                                } catch (IOException e9) {
                                    T t10 = ((C0597l0) this.f10616G).f11258O;
                                    C0597l0.k(t10);
                                    t10.f11039L.c(T.t(string), e9, "Data loss. Failed to merge raw event metadata. appId");
                                }
                            } else {
                                T t11 = ((C0597l0) this.f10616G).f11258O;
                                C0597l0.k(t11);
                                t11.f11039L.b(T.t(string), "Raw event metadata record is missing. appId");
                            }
                        } catch (SQLiteException e10) {
                            e = e10;
                            T t12 = ((C0597l0) this.f10616G).f11258O;
                            C0597l0.k(t12);
                            t12.f11039L.c(T.t(string), e, "Data loss. Error selecting raw event. appId");
                        }
                    }
                } else {
                    String[] strArr4 = j9 != -1 ? new String[]{str, String.valueOf(j9)} : new String[]{str};
                    if (j9 != -1) {
                        str3 = " and rowid <= ?";
                    }
                    cursorRawQuery = sQLiteDatabaseJ0.rawQuery("select metadata_fingerprint from raw_events where app_id = ?" + str3 + " order by rowid limit 1;", strArr4);
                    if (cursorRawQuery.moveToFirst()) {
                        string2 = cursorRawQuery.getString(0);
                        cursorRawQuery.close();
                        string = str;
                        cursorRawQuery = sQLiteDatabaseJ0.query("raw_events_metadata", new String[]{"metadata"}, "app_id = ? and metadata_fingerprint = ?", new String[]{string, string2}, null, null, "rowid", "2");
                        if (cursorRawQuery.moveToFirst()) {
                            T t13 = ((C0597l0) this.f10616G).f11258O;
                            C0597l0.k(t13);
                            t13.f11039L.b(T.t(string), "Raw event metadata record is missing. appId");
                        } else {
                            C2593l1 c2593l2 = (C2593l1) ((C2587k1) E1.O(C2593l1.n2(), cursorRawQuery.getBlob(0))).e();
                            if (cursorRawQuery.moveToNext()) {
                                T t14 = ((C0597l0) this.f10616G).f11258O;
                                C0597l0.k(t14);
                                t14.f11042O.b(T.t(string), "Get multiple raw event metadata records, expected one. appId");
                            }
                            cursorRawQuery.close();
                            cVar.f30273I = c2593l2;
                            if (j9 != -1) {
                                c9 = 1;
                                c8 = 2;
                                str2 = "app_id = ? and metadata_fingerprint = ? and rowid <= ?";
                                strArr = new String[]{string, string2, String.valueOf(j9)};
                            } else {
                                c8 = 2;
                                c9 = 1;
                                strArr = new String[]{string, string2};
                                str2 = "app_id = ? and metadata_fingerprint = ?";
                            }
                            String[] strArr5 = new String[4];
                            strArr5[0] = "rowid";
                            strArr5[c9] = "name";
                            strArr5[c8] = "timestamp";
                            strArr5[3] = "data";
                            cursorRawQuery = sQLiteDatabaseJ0.query("raw_events", strArr5, str2, strArr, null, null, "rowid", null);
                            if (cursorRawQuery.moveToFirst()) {
                                do {
                                    j10 = cursorRawQuery.getLong(0);
                                    c2527a1 = (C2527a1) E1.O(C2533b1.u(), cursorRawQuery.getBlob(3));
                                    String string4 = cursorRawQuery.getString(1);
                                    c2527a1.g();
                                    C2533b1.C((C2533b1) c2527a1.f23247H, string4);
                                    long j12 = cursorRawQuery.getLong(2);
                                    c2527a1.g();
                                    C2533b1.F(j12, (C2533b1) c2527a1.f23247H);
                                    if (!cVar.d(j10, (C2533b1) c2527a1.e())) {
                                        break;
                                        break;
                                    }
                                } while (cursorRawQuery.moveToNext());
                            } else {
                                T t15 = ((C0597l0) this.f10616G).f11258O;
                                C0597l0.k(t15);
                                t15.f11042O.b(T.t(string), "Raw event data disappeared while in transaction. appId");
                            }
                        }
                    }
                }
            } catch (SQLiteException e11) {
                e = e11;
                string = str;
            }
        } finally {
            if (0 != 0) {
                cursorRawQuery.close();
            }
        }
    }

    public final long e0(String str, String[] strArr) {
        Cursor cursor = null;
        try {
            try {
                Cursor cursorRawQuery = j0().rawQuery(str, strArr);
                if (!cursorRawQuery.moveToFirst()) {
                    throw new SQLiteException("Database returned empty set");
                }
                long j8 = cursorRawQuery.getLong(0);
                cursorRawQuery.close();
                return j8;
            } catch (SQLiteException e8) {
                T t7 = ((C0597l0) this.f10616G).f11258O;
                C0597l0.k(t7);
                t7.f11039L.c(str, e8, "Database error");
                throw e8;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    public final long f0(String str, String[] strArr, long j8) {
        Cursor cursorRawQuery = null;
        try {
            try {
                cursorRawQuery = j0().rawQuery(str, strArr);
                if (cursorRawQuery.moveToFirst()) {
                    j8 = cursorRawQuery.getLong(0);
                }
                cursorRawQuery.close();
                return j8;
            } catch (SQLiteException e8) {
                T t7 = ((C0597l0) this.f10616G).f11258O;
                C0597l0.k(t7);
                t7.f11039L.c(str, e8, "Database error");
                throw e8;
            }
        } catch (Throwable th) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th;
        }
    }

    public final long g0(String str, C2581j1 c2581j1, String str2, Map map, R0 r7, Long l4) {
        int iDelete;
        m();
        n();
        com.bumptech.glide.c.h(c2581j1);
        com.bumptech.glide.c.e(str);
        C0597l0 c0597l0 = (C0597l0) this.f10616G;
        if (c0597l0.f11256M.B(null, E.f10739N0)) {
            m();
            n();
            if (Y()) {
                A1 a8 = this.f11343H;
                long jA = a8.f10660O.f11184L.a();
                c0597l0.f11263T.getClass();
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                if (Math.abs(jElapsedRealtime - jA) > ((Long) E.f10736M.a(null)).longValue()) {
                    a8.f10660O.f11184L.b(jElapsedRealtime);
                    m();
                    n();
                    if (Y() && (iDelete = j0().delete("upload_queue", R(), new String[0])) > 0) {
                        T t7 = c0597l0.f11258O;
                        C0597l0.k(t7);
                        t7.f11047T.b(Integer.valueOf(iDelete), "Deleted stale MeasurementBatch rows from upload_queue. rowsDeleted");
                    }
                    D d6 = E.f10745Q0;
                    C0584h c0584h = c0597l0.f11256M;
                    if (c0584h.B(null, d6)) {
                        com.bumptech.glide.c.e(str);
                        m();
                        n();
                        try {
                            int iT = c0584h.t(str, E.f10712A);
                            if (iT > 0) {
                                j0().delete("upload_queue", "rowid in (SELECT rowid FROM upload_queue WHERE app_id=? ORDER BY rowid DESC LIMIT -1 OFFSET ?)", new String[]{str, String.valueOf(iT)});
                            }
                        } catch (SQLiteException e8) {
                            T t8 = ((C0597l0) this.f10616G).f11258O;
                            C0597l0.k(t8);
                            t8.f11039L.c(T.t(str), e8, "Error deleting over the limit queued batches. appId");
                        }
                    }
                }
            }
            ArrayList arrayList = new ArrayList();
            for (Map.Entry entry : map.entrySet()) {
                arrayList.add(((String) entry.getKey()) + "=" + ((String) entry.getValue()));
            }
            byte[] bArrC = c2581j1.c();
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", str);
            contentValues.put("measurement_batch", bArrC);
            contentValues.put("upload_uri", str2);
            StringBuilder sb = new StringBuilder();
            Iterator it = arrayList.iterator();
            if (it.hasNext()) {
                while (true) {
                    sb.append((CharSequence) it.next());
                    if (!it.hasNext()) {
                        break;
                    }
                    sb.append((CharSequence) "\r\n");
                }
            }
            contentValues.put("upload_headers", sb.toString());
            contentValues.put("upload_type", Integer.valueOf(r7.f11028G));
            C0597l0 c0597l1 = (C0597l0) this.f10616G;
            c0597l1.f11263T.getClass();
            contentValues.put("creation_timestamp", Long.valueOf(System.currentTimeMillis()));
            contentValues.put("retry_count", (Integer) 0);
            if (l4 != null) {
                contentValues.put("associated_row_id", l4);
            }
            try {
                long jInsert = j0().insert("upload_queue", null, contentValues);
                if (jInsert != -1) {
                    return jInsert;
                }
                T t9 = c0597l1.f11258O;
                C0597l0.k(t9);
                t9.f11039L.b(str, "Failed to insert MeasurementBatch (got -1) to upload_queue. appId");
                return -1L;
            } catch (SQLiteException e9) {
                T t10 = ((C0597l0) this.f10616G).f11258O;
                C0597l0.k(t10);
                t10.f11039L.c(str, e9, "Error storing MeasurementBatch to upload_queue. appId");
            }
        }
        return -1L;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0088 A[Catch: all -> 0x0062, SQLiteException -> 0x009d, TryCatch #0 {all -> 0x0062, blocks: (B:3:0x001a, B:6:0x002e, B:8:0x004d, B:15:0x0067, B:17:0x0088, B:20:0x009f, B:23:0x00a5), top: B:29:0x001a }] */
    /* JADX WARN: Code duplicated, block: B:20:0x009f A[Catch: all -> 0x0062, SQLiteException -> 0x009d, TRY_LEAVE, TryCatch #0 {all -> 0x0062, blocks: (B:3:0x001a, B:6:0x002e, B:8:0x004d, B:15:0x0067, B:17:0x0088, B:20:0x009f, B:23:0x00a5), top: B:29:0x001a }] */
    public final long h0(String str) {
        long j8;
        ContentValues contentValues;
        com.bumptech.glide.c.e(str);
        com.bumptech.glide.c.e("first_open_count");
        m();
        n();
        SQLiteDatabase sQLiteDatabaseJ0 = j0();
        sQLiteDatabaseJ0.beginTransaction();
        long j9 = 0;
        try {
            try {
                j8 = -1;
                long jF0 = f0("select first_open_count from app2 where app_id=?", new String[]{str}, -1L);
                if (jF0 == -1) {
                    ContentValues contentValues2 = new ContentValues();
                    contentValues2.put("app_id", str);
                    contentValues2.put("first_open_count", (Integer) 0);
                    contentValues2.put("previous_install_count", (Integer) 0);
                    if (sQLiteDatabaseJ0.insertWithOnConflict("app2", null, contentValues2, 5) == -1) {
                        T t7 = ((C0597l0) this.f10616G).f11258O;
                        C0597l0.k(t7);
                        t7.f11039L.c(T.t(str), "first_open_count", "Failed to insert column (got -1). appId");
                    } else {
                        jF0 = 0;
                        try {
                            contentValues = new ContentValues();
                            contentValues.put("app_id", str);
                            contentValues.put("first_open_count", Long.valueOf(1 + jF0));
                            if (sQLiteDatabaseJ0.update("app2", contentValues, "app_id = ?", new String[]{str}) == 0) {
                                T t8 = ((C0597l0) this.f10616G).f11258O;
                                C0597l0.k(t8);
                                t8.f11039L.c(T.t(str), "first_open_count", "Failed to update column (got 0). appId");
                            } else {
                                sQLiteDatabaseJ0.setTransactionSuccessful();
                                j8 = jF0;
                            }
                        } catch (SQLiteException e8) {
                            e = e8;
                            j9 = jF0;
                            T t9 = ((C0597l0) this.f10616G).f11258O;
                            C0597l0.k(t9);
                            t9.f11039L.d(T.t(str), "first_open_count", e, "Error inserting column. appId");
                            j8 = j9;
                        }
                    }
                } else {
                    contentValues = new ContentValues();
                    contentValues.put("app_id", str);
                    contentValues.put("first_open_count", Long.valueOf(1 + jF0));
                    if (sQLiteDatabaseJ0.update("app2", contentValues, "app_id = ?", new String[]{str}) == 0) {
                        T t10 = ((C0597l0) this.f10616G).f11258O;
                        C0597l0.k(t10);
                        t10.f11039L.c(T.t(str), "first_open_count", "Failed to update column (got 0). appId");
                    } else {
                        sQLiteDatabaseJ0.setTransactionSuccessful();
                        j8 = jF0;
                    }
                }
            } catch (SQLiteException e9) {
                e = e9;
            }
            return j8;
        } finally {
            sQLiteDatabaseJ0.endTransaction();
        }
    }

    public final long i0(String str) {
        com.bumptech.glide.c.e(str);
        return f0("select count(1) from events where app_id=? and name not like '!_%' escape '!'", new String[]{str}, 0L);
    }

    public final SQLiteDatabase j0() {
        m();
        try {
            return this.f11313J.getWritableDatabase();
        } catch (SQLiteException e8) {
            T t7 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t7);
            t7.f11042O.b(e8, "Error opening database");
            throw e8;
        }
    }

    /* JADX WARN: Code duplicated, block: B:135:0x04c4  */
    /* JADX WARN: Code duplicated, block: B:143:? A[SYNTHETIC] */
    public final P k0(String str) {
        Throwable th;
        Cursor cursor;
        SQLiteException sQLiteException;
        Cursor cursorQuery;
        Throwable th2;
        Boolean boolValueOf;
        String string;
        com.bumptech.glide.c.e(str);
        m();
        n();
        try {
            boolean z7 = true;
            cursorQuery = j0().query("apps", new String[]{"app_instance_id", "gmp_app_id", "resettable_device_id_hash", "last_bundle_index", "last_bundle_start_timestamp", "last_bundle_end_timestamp", "app_version", "app_store", "gmp_version", "dev_cert_hash", "measurement_enabled", "day", "daily_public_events_count", "daily_events_count", "daily_conversions_count", "config_fetched_time", "failed_config_fetch_time", "app_version_int", "firebase_instance_id", "daily_error_events_count", "daily_realtime_events_count", "health_monitor_sample", "android_id", "adid_reporting_enabled", "admob_app_id", "dynamite_version", "safelisted_events", "ga_app_id", "session_stitching_token", "sgtm_upload_enabled", "target_os_version", "session_stitching_token_hash", "ad_services_version", "unmatched_first_open_without_ad_id", "npa_metadata_value", "attribution_eligibility_status", "sgtm_preview_key", "dma_consent_state", "daily_realtime_dcu_count", "bundle_delivery_index", "serialized_npa_metadata", "unmatched_pfo", "unmatched_uwa", "ad_campaign_info", "client_upload_eligibility"}, "app_id=?", new String[]{str}, null, null, null);
            try {
                if (cursorQuery.moveToFirst()) {
                    A1 a8 = this.f11343H;
                    P p7 = new P(a8.f10663R, str);
                    C0597l0 c0597l0 = p7.f10984a;
                    C0620x0 c0620x0I0 = a8.i0(str);
                    EnumC0618w0 enumC0618w0 = EnumC0618w0.ANALYTICS_STORAGE;
                    if (c0620x0I0.k(enumC0618w0)) {
                        p7.l(cursorQuery.getString(0));
                    }
                    p7.H(cursorQuery.getString(1));
                    if (a8.i0(str).k(EnumC0618w0.AD_STORAGE)) {
                        p7.P(cursorQuery.getString(2));
                    }
                    p7.M(cursorQuery.getLong(3));
                    p7.N(cursorQuery.getLong(4));
                    p7.L(cursorQuery.getLong(5));
                    p7.n(cursorQuery.getString(6));
                    p7.m(cursorQuery.getString(7));
                    p7.I(cursorQuery.getLong(8));
                    p7.C(cursorQuery.getLong(9));
                    p7.O(cursorQuery.isNull(10) || cursorQuery.getInt(10) != 0);
                    p7.B(cursorQuery.getLong(11));
                    p7.y(cursorQuery.getLong(12));
                    p7.x(cursorQuery.getLong(13));
                    p7.v(cursorQuery.getLong(14));
                    p7.u(cursorQuery.getLong(15));
                    p7.F(cursorQuery.getLong(16));
                    p7.o(cursorQuery.isNull(17) ? -2147483648L : cursorQuery.getInt(17));
                    p7.G(cursorQuery.getString(18));
                    p7.w(cursorQuery.getLong(19));
                    p7.A(cursorQuery.getLong(20));
                    p7.J(cursorQuery.getString(21));
                    boolean z8 = cursorQuery.isNull(23) || cursorQuery.getInt(23) != 0;
                    C0591j0 c0591j0 = c0597l0.f11259P;
                    C0597l0.k(c0591j0);
                    c0591j0.m();
                    p7.f10981R |= p7.f10999p != z8;
                    p7.f10999p = z8;
                    p7.k(cursorQuery.getString(24));
                    p7.E(cursorQuery.isNull(25) ? 0L : cursorQuery.getLong(25));
                    if (!cursorQuery.isNull(26)) {
                        p7.Q(Arrays.asList(cursorQuery.getString(26).split(",", -1)));
                    }
                    if (a8.i0(str).k(enumC0618w0)) {
                        String string2 = cursorQuery.getString(28);
                        C0591j0 c0591j1 = c0597l0.f11259P;
                        C0597l0.k(c0591j1);
                        c0591j1.m();
                        p7.f10981R |= !Objects.equals(p7.f11004u, string2);
                        p7.f11004u = string2;
                    }
                    boolean z9 = (cursorQuery.isNull(29) || cursorQuery.getInt(29) == 0) ? false : true;
                    C0591j0 c0591j2 = c0597l0.f11259P;
                    C0597l0.k(c0591j2);
                    c0591j2.m();
                    p7.f10981R |= p7.f11005v != z9;
                    p7.f11005v = z9;
                    p7.K(cursorQuery.getLong(39));
                    String string3 = cursorQuery.getString(36);
                    C0591j0 c0591j3 = c0597l0.f11259P;
                    C0597l0.k(c0591j3);
                    c0591j3.m();
                    p7.f10981R |= p7.f10967D != string3;
                    p7.f10967D = string3;
                    p7.r(cursorQuery.getLong(30));
                    p7.q(cursorQuery.getLong(31));
                    C2578i4.b();
                    C0597l0 c0597l1 = (C0597l0) this.f10616G;
                    if (c0597l1.f11256M.B(str, E.f10757W0)) {
                        int i8 = cursorQuery.getInt(32);
                        C0591j0 c0591j4 = c0597l0.f11259P;
                        C0597l0.k(c0591j4);
                        c0591j4.m();
                        p7.f10981R |= p7.f11008y != i8;
                        p7.f11008y = i8;
                        p7.p(cursorQuery.getLong(35));
                    }
                    boolean z10 = (cursorQuery.isNull(33) || cursorQuery.getInt(33) == 0) ? false : true;
                    C0591j0 c0591j5 = c0597l0.f11259P;
                    C0597l0.k(c0591j5);
                    c0591j5.m();
                    p7.f10981R |= p7.f11009z != z10;
                    p7.f11009z = z10;
                    if (cursorQuery.isNull(34)) {
                        boolValueOf = null;
                    } else {
                        boolValueOf = Boolean.valueOf(cursorQuery.getInt(34) != 0);
                    }
                    C0591j0 c0591j6 = c0597l0.f11259P;
                    C0597l0.k(c0591j6);
                    c0591j6.m();
                    p7.f10981R |= !Objects.equals(p7.f11001r, boolValueOf);
                    p7.f11001r = boolValueOf;
                    p7.D(cursorQuery.getInt(37));
                    p7.z(cursorQuery.getInt(38));
                    if (cursorQuery.isNull(40)) {
                        string = HttpUrl.FRAGMENT_ENCODE_SET;
                    } else {
                        string = cursorQuery.getString(40);
                        com.bumptech.glide.c.h(string);
                    }
                    C0591j0 c0591j7 = c0597l0.f11259P;
                    C0597l0.k(c0591j7);
                    c0591j7.m();
                    p7.f10981R |= p7.f10971H != string;
                    p7.f10971H = string;
                    if (!cursorQuery.isNull(41)) {
                        Long lValueOf = Long.valueOf(cursorQuery.getLong(41));
                        C0591j0 c0591j8 = c0597l0.f11259P;
                        C0597l0.k(c0591j8);
                        c0591j8.m();
                        p7.f10981R |= !Objects.equals(p7.f10964A, lValueOf);
                        p7.f10964A = lValueOf;
                    }
                    if (!cursorQuery.isNull(42)) {
                        Long lValueOf2 = Long.valueOf(cursorQuery.getLong(42));
                        C0591j0 c0591j9 = c0597l0.f11259P;
                        C0597l0.k(c0591j9);
                        c0591j9.m();
                        p7.f10981R |= !Objects.equals(p7.f10965B, lValueOf2);
                        p7.f10965B = lValueOf2;
                    }
                    byte[] blob = cursorQuery.getBlob(43);
                    C0591j0 c0591j10 = c0597l0.f11259P;
                    C0597l0.k(c0591j10);
                    c0591j10.m();
                    p7.f10981R |= p7.f10972I != blob;
                    p7.f10972I = blob;
                    if (c0597l1.f11256M.B(str, E.f10745Q0) && !cursorQuery.isNull(44)) {
                        int i9 = cursorQuery.getInt(44);
                        C0591j0 c0591j11 = c0597l0.f11259P;
                        C0597l0.k(c0591j11);
                        c0591j11.m();
                        boolean z11 = p7.f10981R;
                        if (p7.f10973J == i9) {
                            z7 = false;
                        }
                        p7.f10981R = z11 | z7;
                        p7.f10973J = i9;
                    }
                    C0591j0 c0591j12 = c0597l0.f11259P;
                    C0597l0.k(c0591j12);
                    c0591j12.m();
                    p7.f10981R = false;
                    if (cursorQuery.moveToNext()) {
                        T t7 = c0597l1.f11258O;
                        C0597l0.k(t7);
                        t7.f11039L.b(T.t(str), "Got multiple records for app, expected one. appId");
                    }
                    cursorQuery.close();
                    return p7;
                }
            } catch (SQLiteException e8) {
                sQLiteException = e8;
                try {
                    T t8 = ((C0597l0) this.f10616G).f11258O;
                    C0597l0.k(t8);
                    t8.f11039L.c(T.t(str), sQLiteException, "Error querying app. appId");
                } catch (Throwable th3) {
                    th2 = th3;
                    th = th2;
                    cursor = cursorQuery;
                    if (cursor == null) {
                        throw th;
                    }
                    cursor.close();
                    throw th;
                }
            } catch (Throwable th4) {
                th2 = th4;
                th = th2;
                cursor = cursorQuery;
                if (cursor == null) {
                    throw th;
                }
                cursor.close();
                throw th;
            }
        } catch (SQLiteException e9) {
            sQLiteException = e9;
            cursorQuery = null;
        } catch (Throwable th5) {
            th = th5;
            cursor = null;
            if (cursor == null) {
                throw th;
            }
            cursor.close();
            throw th;
        }
        if (cursorQuery == null) {
            return null;
        }
        cursorQuery.close();
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:38:0x014a  */
    public final C0578f l0(String str, String str2) throws Throwable {
        Cursor cursor;
        Cursor cursorQuery;
        com.bumptech.glide.c.e(str);
        com.bumptech.glide.c.e(str2);
        m();
        n();
        try {
            cursorQuery = j0().query("conditional_properties", new String[]{"origin", "value", "active", "trigger_event_name", "trigger_timeout", "timed_out_event", "creation_timestamp", "triggered_event", "triggered_timestamp", "time_to_live", "expired_event"}, "app_id=? and name=?", new String[]{str, str2}, null, null, null);
            try {
                try {
                    if (cursorQuery.moveToFirst()) {
                        String string = cursorQuery.getString(0);
                        if (string == null) {
                            string = HttpUrl.FRAGMENT_ENCODE_SET;
                        }
                        String str3 = string;
                        Object objU0 = u0(cursorQuery, 1);
                        boolean z7 = cursorQuery.getInt(2) != 0;
                        String string2 = cursorQuery.getString(3);
                        long j8 = cursorQuery.getLong(4);
                        E1 e8 = this.f11343H.f10658M;
                        A1.I(e8);
                        byte[] blob = cursorQuery.getBlob(5);
                        Parcelable.Creator<C0613u> creator = C0613u.CREATOR;
                        C0613u c0613u = (C0613u) e8.K(blob, creator);
                        long j9 = cursorQuery.getLong(6);
                        A1.I(e8);
                        C0613u c0613u2 = (C0613u) e8.K(cursorQuery.getBlob(7), creator);
                        long j10 = cursorQuery.getLong(8);
                        long j11 = cursorQuery.getLong(9);
                        A1.I(e8);
                        C0578f c0578f = new C0578f(str, str3, new F1(j10, objU0, str2, str3), j9, z7, string2, c0613u, j8, c0613u2, j11, (C0613u) e8.K(cursorQuery.getBlob(10), creator));
                        if (cursorQuery.moveToNext()) {
                            C0597l0 c0597l0 = (C0597l0) this.f10616G;
                            T t7 = c0597l0.f11258O;
                            C0597l0.k(t7);
                            t7.f11039L.c(T.t(str), c0597l0.f11262S.f(str2), "Got multiple records for conditional property, expected one");
                        }
                        cursorQuery.close();
                        return c0578f;
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } catch (SQLiteException e9) {
                e = e9;
                C0597l0 c0597l1 = (C0597l0) this.f10616G;
                T t8 = c0597l1.f11258O;
                C0597l0.k(t8);
                t8.f11039L.d(T.t(str), c0597l1.f11262S.f(str2), e, "Error querying conditional property");
            }
        } catch (SQLiteException e10) {
            e = e10;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
        if (cursorQuery == null) {
            return null;
        }
        cursorQuery.close();
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0092  */
    public final C1093bD m0(String str) {
        SQLiteException e8;
        Cursor cursorQuery;
        com.bumptech.glide.c.e(str);
        m();
        n();
        Cursor cursor = null;
        try {
            cursorQuery = j0().query("apps", new String[]{"remote_config", "config_last_modified_time", "e_tag"}, "app_id=?", new String[]{str}, null, null, null);
            try {
                try {
                    if (cursorQuery.moveToFirst()) {
                        byte[] blob = cursorQuery.getBlob(0);
                        String string = cursorQuery.getString(1);
                        String string2 = cursorQuery.getString(2);
                        if (cursorQuery.moveToNext()) {
                            T t7 = ((C0597l0) this.f10616G).f11258O;
                            C0597l0.k(t7);
                            t7.f11039L.b(T.t(str), "Got multiple records for app config, expected one. appId");
                        }
                        if (blob != null) {
                            C1093bD c1093bD = new C1093bD(blob, string, string2, 12);
                            cursorQuery.close();
                            return c1093bD;
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } catch (SQLiteException e9) {
                e8 = e9;
                T t8 = ((C0597l0) this.f10616G).f11258O;
                C0597l0.k(t8);
                t8.f11039L.c(T.t(str), e8, "Error querying remote config. appId");
            }
        } catch (SQLiteException e10) {
            e8 = e10;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return null;
    }

    public final C0593k n0(long j8, String str, boolean z7, boolean z8, boolean z9, boolean z10) {
        return o0(j8, str, 1L, false, false, z7, false, z8, z9, z10);
    }

    public final C0593k o0(long j8, String str, long j9, boolean z7, boolean z8, boolean z9, boolean z10, boolean z11, boolean z12, boolean z13) throws Throwable {
        C0593k c0593k;
        Cursor cursorQuery;
        com.bumptech.glide.c.e(str);
        m();
        n();
        String[] strArr = {str};
        C0593k c0593k2 = new C0593k();
        Cursor cursor = null;
        try {
            try {
                SQLiteDatabase sQLiteDatabaseJ0 = j0();
                c0593k = c0593k2;
                try {
                    cursorQuery = sQLiteDatabaseJ0.query("apps", new String[]{"day", "daily_events_count", "daily_public_events_count", "daily_conversions_count", "daily_error_events_count", "daily_realtime_events_count", "daily_realtime_dcu_count", "daily_registered_triggers_count"}, "app_id=?", new String[]{str}, null, null, null);
                    try {
                        if (cursorQuery.moveToFirst()) {
                            if (cursorQuery.getLong(0) == j8) {
                                c0593k.f11233b = cursorQuery.getLong(1);
                                c0593k.f11232a = cursorQuery.getLong(2);
                                c0593k.f11234c = cursorQuery.getLong(3);
                                c0593k.f11235d = cursorQuery.getLong(4);
                                c0593k.f11236e = cursorQuery.getLong(5);
                                c0593k.f11237f = cursorQuery.getLong(6);
                                c0593k.f11238g = cursorQuery.getLong(7);
                            }
                            if (z7) {
                                c0593k.f11233b += j9;
                            }
                            if (z8) {
                                c0593k.f11232a += j9;
                            }
                            if (z9) {
                                c0593k.f11234c += j9;
                            }
                            if (z10) {
                                c0593k.f11235d += j9;
                            }
                            if (z11) {
                                c0593k.f11236e += j9;
                            }
                            if (z12) {
                                c0593k.f11237f += j9;
                            }
                            if (z13) {
                                c0593k.f11238g += j9;
                            }
                            ContentValues contentValues = new ContentValues();
                            contentValues.put("day", Long.valueOf(j8));
                            contentValues.put("daily_public_events_count", Long.valueOf(c0593k.f11232a));
                            contentValues.put("daily_events_count", Long.valueOf(c0593k.f11233b));
                            contentValues.put("daily_conversions_count", Long.valueOf(c0593k.f11234c));
                            contentValues.put("daily_error_events_count", Long.valueOf(c0593k.f11235d));
                            contentValues.put("daily_realtime_events_count", Long.valueOf(c0593k.f11236e));
                            contentValues.put("daily_realtime_dcu_count", Long.valueOf(c0593k.f11237f));
                            contentValues.put("daily_registered_triggers_count", Long.valueOf(c0593k.f11238g));
                            sQLiteDatabaseJ0.update("apps", contentValues, "app_id=?", strArr);
                        } else {
                            T t7 = ((C0597l0) this.f10616G).f11258O;
                            C0597l0.k(t7);
                            t7.f11042O.b(T.t(str), "Not updating daily counts, app is not known. appId");
                        }
                    } catch (SQLiteException e8) {
                        e = e8;
                        cursor = cursorQuery;
                        T t8 = ((C0597l0) this.f10616G).f11258O;
                        C0597l0.k(t8);
                        t8.f11039L.c(T.t(str), e, "Error updating daily counts. appId");
                        cursorQuery = cursor;
                    } catch (Throwable th) {
                        th = th;
                        cursor = cursorQuery;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                } catch (SQLiteException e9) {
                    e = e9;
                }
            } catch (SQLiteException e10) {
                e = e10;
                c0593k = c0593k2;
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return c0593k;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override // p021c4.u1
    public final boolean p() {
        return false;
    }

    public final C0609s p0(String str, C2533b1 c2533b1, String str2) {
        C0609s c0609sP = P("events", str, c2533b1.w());
        if (c0609sP != null) {
            long j8 = c0609sP.f11360e + 1;
            long j9 = c0609sP.f11359d + 1;
            return new C0609s(c0609sP.f11356a, c0609sP.f11357b, c0609sP.f11358c + 1, j9, j8, c0609sP.f11361f, c0609sP.f11362g, c0609sP.f11363h, c0609sP.f11364i, c0609sP.f11365j, c0609sP.f11366k);
        }
        C0597l0 c0597l0 = (C0597l0) this.f10616G;
        T t7 = c0597l0.f11258O;
        C0597l0.k(t7);
        t7.f11042O.c(T.t(str), c0597l0.f11262S.d(str2), "Event aggregate wasn't created during raw event logging. appId, event");
        return new C0609s(str, c2533b1.w(), 1L, 1L, 1L, c2533b1.t(), 0L, null, null, null, null);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x003f  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r1v3 */
    public final String q() {
        SQLiteException e8;
        Cursor cursorRawQuery;
        SQLiteDatabase sQLiteDatabaseJ0 = j0();
        ?? r7 = 0;
        try {
            try {
                cursorRawQuery = sQLiteDatabaseJ0.rawQuery("select app_id from queue order by has_realtime desc, rowid asc limit 1;", null);
                try {
                    if (cursorRawQuery.moveToFirst()) {
                        String string = cursorRawQuery.getString(0);
                        cursorRawQuery.close();
                        return string;
                    }
                } catch (SQLiteException e9) {
                    e8 = e9;
                    T t7 = ((C0597l0) this.f10616G).f11258O;
                    C0597l0.k(t7);
                    t7.f11039L.b(e8, "Database error getting next bundle app id");
                }
            } catch (SQLiteException e10) {
                e8 = e10;
                cursorRawQuery = null;
            } catch (Throwable th) {
                th = th;
                if (r7 != 0) {
                    r7.close();
                }
                throw th;
            }
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            return null;
        } catch (Throwable th2) {
            r7 = sQLiteDatabaseJ0;
            th = th2;
            if (r7 != 0) {
                r7.close();
            }
            throw th;
        }
    }

    public final C0620x0 q0(String str) {
        com.bumptech.glide.c.h(str);
        m();
        n();
        return C0620x0.e(100, S("select storage_consent_at_bundling from consent_settings where app_id=? limit 1;", new String[]{str}));
    }

    public final List r(String str, String str2, String str3) {
        com.bumptech.glide.c.e(str);
        m();
        n();
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(str);
        StringBuilder sb = new StringBuilder("app_id=?");
        if (!TextUtils.isEmpty(str2)) {
            arrayList.add(str2);
            sb.append(" and origin=?");
        }
        if (!TextUtils.isEmpty(str3)) {
            arrayList.add(String.valueOf(str3).concat("*"));
            sb.append(" and name glob ?");
        }
        return s(sb.toString(), (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0062  */
    /* JADX WARN: Code duplicated, block: B:26:0x0065 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:28:0x0068  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r2v4, types: [android.database.sqlite.SQLiteDatabase] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.String[]] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v8, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r5v9, types: [android.database.Cursor] */
    public final C0620x0 r0(String str) {
        Throwable th;
        SQLiteException e8;
        com.bumptech.glide.c.h(str);
        m();
        n();
        ?? RawQuery = {str};
        ?? r7 = 0;
        c0620x0E = null;
        c0620x0E = null;
        C0620x0 c0620x0E = null;
        try {
            try {
                RawQuery = j0().rawQuery("select consent_state, consent_source from consent_settings where app_id=? limit 1;", RawQuery);
                try {
                    if (RawQuery.moveToFirst()) {
                        c0620x0E = C0620x0.e(RawQuery.getInt(1), RawQuery.getString(0));
                    } else {
                        T t7 = ((C0597l0) this.f10616G).f11258O;
                        C0597l0.k(t7);
                        t7.f11047T.a("No data found");
                    }
                } catch (SQLiteException e9) {
                    e8 = e9;
                    T t8 = ((C0597l0) this.f10616G).f11258O;
                    C0597l0.k(t8);
                    t8.f11039L.b(e8, "Error querying database.");
                    if (RawQuery != 0) {
                    }
                    if (c0620x0E == null) {
                        return C0620x0.f11403c;
                    }
                    return c0620x0E;
                }
            } catch (SQLiteException e10) {
                e8 = e10;
                RawQuery = 0;
            } catch (Throwable th2) {
                th = th2;
                if (r7 != 0) {
                    r7.close();
                }
                throw th;
            }
            RawQuery.close();
            if (c0620x0E == null) {
                return C0620x0.f11403c;
            }
            return c0620x0E;
        } catch (Throwable th3) {
            th = th3;
            r7 = RawQuery;
            if (r7 != 0) {
                r7.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0175  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.util.List] */
    public final List s(String str, String[] strArr) throws Throwable {
        Cursor cursor;
        Cursor cursorQuery;
        int i8;
        boolean z7;
        m();
        n();
        ?? arrayList = new ArrayList();
        try {
            int i9 = 0;
            C0597l0 c0597l0 = (C0597l0) this.f10616G;
            c0597l0.getClass();
            cursorQuery = j0().query("conditional_properties", new String[]{"app_id", "origin", "name", "value", "active", "trigger_event_name", "trigger_timeout", "timed_out_event", "creation_timestamp", "triggered_event", "triggered_timestamp", "time_to_live", "expired_event"}, str, strArr, null, null, "rowid", "1001");
            try {
                if (cursorQuery.moveToFirst()) {
                    while (true) {
                        if (arrayList.size() >= 1000) {
                            T t7 = c0597l0.f11258O;
                            C0597l0.k(t7);
                            t7.f11039L.b(1000, "Read more than the max allowed conditional properties, ignoring extra");
                            break;
                        }
                        String string = cursorQuery.getString(i9);
                        String string2 = cursorQuery.getString(1);
                        String string3 = cursorQuery.getString(2);
                        Object objU0 = u0(cursorQuery, 3);
                        if (cursorQuery.getInt(4) != 0) {
                            i8 = 5;
                            z7 = true;
                        } else {
                            i8 = 5;
                            z7 = false;
                        }
                        String string4 = cursorQuery.getString(i8);
                        long j8 = cursorQuery.getLong(6);
                        E1 e8 = this.f11343H.f10658M;
                        A1.I(e8);
                        byte[] blob = cursorQuery.getBlob(7);
                        Parcelable.Creator<C0613u> creator = C0613u.CREATOR;
                        C0613u c0613u = (C0613u) e8.K(blob, creator);
                        long j9 = cursorQuery.getLong(8);
                        A1.I(e8);
                        C0613u c0613u2 = (C0613u) e8.K(cursorQuery.getBlob(9), creator);
                        long j10 = cursorQuery.getLong(10);
                        long j11 = cursorQuery.getLong(11);
                        A1.I(e8);
                        arrayList.add(new C0578f(string, string2, new F1(j10, objU0, string3, string2), j9, z7, string4, c0613u, j8, c0613u2, j11, (C0613u) e8.K(cursorQuery.getBlob(12), creator)));
                        if (!cursorQuery.moveToNext()) {
                            break;
                        }
                        i9 = 0;
                    }
                }
            } catch (SQLiteException e9) {
                e = e9;
                cursor = cursorQuery;
                try {
                    T t8 = ((C0597l0) this.f10616G).f11258O;
                    C0597l0.k(t8);
                    t8.f11039L.b(e, "Error querying conditional user property value");
                    arrayList = Collections.emptyList();
                    cursorQuery = cursor;
                } catch (Throwable th) {
                    th = th;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                cursor = cursorQuery;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (SQLiteException e10) {
            e = e10;
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:45:0x0155  */
    /* JADX WARN: Code duplicated, block: B:49:0x015c  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v8 */
    /* JADX WARN: Type inference failed for: r12v9 */
    public final C1 s0(String str) throws Throwable {
        Object obj;
        C1 c8;
        ?? r12;
        ?? r10;
        Cursor cursor;
        com.bumptech.glide.c.e(str);
        m();
        n();
        C0597l0 c0597l0 = (C0597l0) this.f10616G;
        if (!c0597l0.f11256M.B(null, E.f10739N0)) {
            return null;
        }
        if (c0597l0.f11256M.B(null, E.f10745Q0)) {
            R0[] r0Arr = {R0.GOOGLE_SIGNAL};
            ArrayList arrayList = new ArrayList(1);
            arrayList.add(Integer.valueOf(r0Arr[0].f11028G));
            List listT = t(str, new s1(arrayList), 1);
            if (listT.isEmpty()) {
                return null;
            }
            return (C1) listT.get(0);
        }
        try {
            SQLiteDatabase sQLiteDatabaseJ0 = j0();
            String[] strArr = new String[10];
            strArr[0] = "rowId";
            strArr[1] = "app_id";
            strArr[2] = "measurement_batch";
            strArr[3] = "upload_uri";
            strArr[4] = "upload_headers";
            strArr[5] = "upload_type";
            strArr[6] = "retry_count";
            strArr[7] = "creation_timestamp";
            strArr[8] = "associated_row_id";
            try {
                strArr[9] = "last_upload_timestamp";
                Cursor cursorQuery = sQLiteDatabaseJ0.query("upload_queue", strArr, "app_id=? AND NOT " + R(), new String[]{str}, null, null, "creation_timestamp ASC", "1");
                try {
                    try {
                        if (!cursorQuery.moveToFirst()) {
                            c8 = null;
                            if (r10 != 0) {
                                r10 = cursorQuery;
                                r10.close();
                            }
                            r10 = cursorQuery;
                            return c8;
                        }
                        cursor = cursorQuery;
                        c8 = null;
                        try {
                            C1 c1Q = Q(str, cursorQuery.getLong(0), cursorQuery.getBlob(2), cursorQuery.getString(3), cursorQuery.getString(4), cursorQuery.getInt(5), cursorQuery.getInt(6), cursorQuery.getLong(7), cursorQuery.getLong(8), cursorQuery.getLong(9));
                            cursor.close();
                            return c1Q;
                        } catch (SQLiteException e8) {
                            e = e8;
                        } catch (Throwable th) {
                            th = th;
                            r12 = cursor;
                            if (r12 != 0) {
                                r12.close();
                            }
                            throw th;
                        }
                        T t7 = ((C0597l0) this.f10616G).f11258O;
                        C0597l0.k(t7);
                        t7.f11039L.c(str, e, "Error to querying MeasurementBatch from upload_queue. appId");
                        r10 = r12;
                        if (r10 != 0) {
                            r10 = cursorQuery;
                            r10.close();
                        }
                        r10 = cursorQuery;
                        return c8;
                    } catch (Throwable th2) {
                        th = th2;
                        if (r12 != 0) {
                            r12.close();
                        }
                        throw th;
                    }
                } catch (SQLiteException e9) {
                    e = e9;
                    cursor = cursorQuery;
                    c8 = null;
                } catch (Throwable th3) {
                    th = th3;
                    cursor = cursorQuery;
                }
                r12 = cursor;
            } catch (SQLiteException e10) {
                e = e10;
                c8 = null;
                r12 = c8;
            } catch (Throwable th4) {
                th = th4;
                obj = null;
                r12 = obj;
                if (r12 != 0) {
                    r12.close();
                }
                throw th;
            }
        } catch (SQLiteException e11) {
            e = e11;
            c8 = null;
        } catch (Throwable th5) {
            th = th5;
            obj = null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:41:0x0142  */
    /* JADX WARN: Code duplicated, block: B:45:0x0149  */
    public final List t(String str, s1 s1Var, int i8) {
        Cursor cursor;
        Cursor cursorQuery;
        List listEmptyList;
        Cursor cursor2;
        if (!((C0597l0) this.f10616G).f11256M.B(null, E.f10745Q0)) {
            return Collections.emptyList();
        }
        com.bumptech.glide.c.e(str);
        m();
        n();
        try {
            int i9 = 0;
            int i10 = 2;
            int i11 = 3;
            int i12 = 5;
            int i13 = 4;
            cursorQuery = j0().query("upload_queue", new String[]{"rowId", "app_id", "measurement_batch", "upload_uri", "upload_headers", "upload_type", "retry_count", "creation_timestamp", "associated_row_id", "last_upload_timestamp"}, "app_id=?" + W(s1Var.f11368G) + " AND NOT " + R(), new String[]{str}, null, null, "creation_timestamp ASC", i8 > 0 ? String.valueOf(i8) : null);
            try {
                ArrayList arrayList = new ArrayList();
                while (cursorQuery.moveToNext()) {
                    long j8 = cursorQuery.getLong(i9);
                    byte[] blob = cursorQuery.getBlob(i10);
                    String string = cursorQuery.getString(i11);
                    String string2 = cursorQuery.getString(i13);
                    int i14 = cursorQuery.getInt(i12);
                    ArrayList arrayList2 = arrayList;
                    cursor2 = cursorQuery;
                    try {
                        C1 c1Q = Q(str, j8, blob, string, string2, i14, cursorQuery.getInt(6), cursorQuery.getLong(7), cursorQuery.getLong(8), cursorQuery.getLong(9));
                        if (c1Q != null) {
                            arrayList2.add(c1Q);
                        }
                        arrayList = arrayList2;
                        cursorQuery = cursor2;
                        i12 = 5;
                        i13 = 4;
                        i11 = 3;
                        i10 = 2;
                        i9 = 0;
                    } catch (SQLiteException e8) {
                        e = e8;
                        cursor = cursor2;
                        try {
                            T t7 = ((C0597l0) this.f10616G).f11258O;
                            C0597l0.k(t7);
                            t7.f11039L.c(str, e, "Error to querying MeasurementBatch from upload_queue. appId");
                            cursorQuery = cursor;
                            listEmptyList = Collections.emptyList();
                            if (cursorQuery != null) {
                                cursorQuery.close();
                            }
                            return listEmptyList;
                        } catch (Throwable th) {
                            th = th;
                            if (cursor != null) {
                                cursor.close();
                            }
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        cursor = cursor2;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
                listEmptyList = arrayList;
            } catch (SQLiteException e9) {
                e = e9;
                cursor2 = cursorQuery;
            } catch (Throwable th3) {
                th = th3;
                cursor2 = cursorQuery;
            }
        } catch (SQLiteException e10) {
            e = e10;
            cursor = null;
        } catch (Throwable th4) {
            th = th4;
            cursor = null;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return listEmptyList;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x009f  */
    public final G1 t0(String str, String str2) {
        Cursor cursorQuery;
        com.bumptech.glide.c.e(str);
        com.bumptech.glide.c.e(str2);
        m();
        n();
        Cursor cursor = null;
        try {
            cursorQuery = j0().query("user_attributes", new String[]{"set_timestamp", "value", "origin"}, "app_id=? and name=?", new String[]{str, str2}, null, null, null);
            try {
                try {
                    if (cursorQuery.moveToFirst()) {
                        long j8 = cursorQuery.getLong(0);
                        Object objU0 = u0(cursorQuery, 1);
                        if (objU0 != null) {
                            G1 g8 = new G1(str, cursorQuery.getString(2), str2, j8, objU0);
                            if (cursorQuery.moveToNext()) {
                                T t7 = ((C0597l0) this.f10616G).f11258O;
                                C0597l0.k(t7);
                                t7.f11039L.b(T.t(str), "Got multiple records for user property, expected one. appId");
                            }
                            cursorQuery.close();
                            return g8;
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } catch (SQLiteException e8) {
                e = e8;
                C0597l0 c0597l0 = (C0597l0) this.f10616G;
                T t8 = c0597l0.f11258O;
                C0597l0.k(t8);
                t8.f11039L.d(T.t(str), c0597l0.f11262S.f(str2), e, "Error querying user property. appId");
            }
        } catch (SQLiteException e9) {
            e = e9;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00bb  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.util.List] */
    public final List u(String str) throws Throwable {
        Cursor cursor;
        Cursor cursorQuery;
        com.bumptech.glide.c.e(str);
        m();
        n();
        ?? arrayList = new ArrayList();
        try {
            C0597l0 c0597l0 = (C0597l0) this.f10616G;
            c0597l0.getClass();
            cursorQuery = j0().query("user_attributes", new String[]{"name", "origin", "set_timestamp", "value"}, "app_id=?", new String[]{str}, null, null, "rowid", "1000");
            try {
                if (cursorQuery.moveToFirst()) {
                    do {
                        String string = cursorQuery.getString(0);
                        String string2 = cursorQuery.getString(1);
                        if (string2 == null) {
                            string2 = HttpUrl.FRAGMENT_ENCODE_SET;
                        }
                        String str2 = string2;
                        long j8 = cursorQuery.getLong(2);
                        Object objU0 = u0(cursorQuery, 3);
                        if (objU0 == null) {
                            T t7 = c0597l0.f11258O;
                            C0597l0.k(t7);
                            t7.f11039L.b(T.t(str), "Read invalid user property value, ignoring it. appId");
                        } else {
                            arrayList.add(new G1(str, str2, string, j8, objU0));
                        }
                    } while (cursorQuery.moveToNext());
                }
            } catch (SQLiteException e8) {
                e = e8;
                cursor = cursorQuery;
                try {
                    T t8 = ((C0597l0) this.f10616G).f11258O;
                    C0597l0.k(t8);
                    t8.f11039L.c(T.t(str), e, "Error querying user properties. appId");
                    arrayList = Collections.emptyList();
                    cursorQuery = cursor;
                } catch (Throwable th) {
                    th = th;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                cursor = cursorQuery;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (SQLiteException e9) {
            e = e9;
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return arrayList;
    }

    public final Object u0(Cursor cursor, int i8) {
        int type = cursor.getType(i8);
        if (type == 0) {
            T t7 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t7);
            t7.f11039L.a("Loaded invalid null value from database");
            return null;
        }
        if (type == 1) {
            return Long.valueOf(cursor.getLong(i8));
        }
        if (type == 2) {
            return Double.valueOf(cursor.getDouble(i8));
        }
        if (type == 3) {
            return cursor.getString(i8);
        }
        if (type == 4) {
            T t8 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t8);
            t8.f11039L.a("Loaded invalid blob type value, ignoring it");
            return null;
        }
        T t9 = ((C0597l0) this.f10616G).f11258O;
        C0597l0.k(t9);
        t9.f11039L.b(Integer.valueOf(type), "Loaded invalid unknown value type, ignoring it");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:47:0x013a  */
    /* JADX WARN: Code duplicated, block: B:51:0x0141  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.util.List] */
    public final List w(String str, String str2, String str3) throws Throwable {
        Cursor cursor;
        String string;
        Cursor cursorQuery;
        com.bumptech.glide.c.e(str);
        m();
        n();
        ?? arrayList = new ArrayList();
        try {
            try {
                ArrayList arrayList2 = new ArrayList(3);
                try {
                    arrayList2.add(str);
                    StringBuilder sb = new StringBuilder("app_id=?");
                    if (TextUtils.isEmpty(str2)) {
                        string = str2;
                    } else {
                        string = str2;
                        try {
                            arrayList2.add(string);
                            sb.append(" and origin=?");
                        } catch (SQLiteException e8) {
                            e = e8;
                            cursor = null;
                            try {
                                T t7 = ((C0597l0) this.f10616G).f11258O;
                                C0597l0.k(t7);
                                t7.f11039L.d(T.t(str), string, e, "(2)Error querying user properties");
                                arrayList = Collections.emptyList();
                                cursorQuery = cursor;
                                if (cursorQuery != null) {
                                    cursorQuery.close();
                                }
                                return arrayList;
                            } catch (Throwable th) {
                                th = th;
                                if (cursor != null) {
                                    cursor.close();
                                }
                                throw th;
                            }
                        }
                    }
                    if (!TextUtils.isEmpty(str3)) {
                        arrayList2.add(str3 + "*");
                        sb.append(" and name glob ?");
                    }
                    String[] strArr = (String[]) arrayList2.toArray(new String[arrayList2.size()]);
                    String string2 = sb.toString();
                    C0597l0 c0597l0 = (C0597l0) this.f10616G;
                    c0597l0.getClass();
                    cursorQuery = j0().query("user_attributes", new String[]{"name", "set_timestamp", "value", "origin"}, string2, strArr, null, null, "rowid", "1001");
                    try {
                        if (cursorQuery.moveToFirst()) {
                            do {
                                int size = arrayList.size();
                                T t8 = c0597l0.f11258O;
                                if (size >= 1000) {
                                    C0597l0.k(t8);
                                    t8.f11039L.b(1000, "Read more than the max allowed user properties, ignoring excess");
                                    break;
                                }
                                String string3 = cursorQuery.getString(0);
                                long j8 = cursorQuery.getLong(1);
                                Object objU0 = u0(cursorQuery, 2);
                                string = cursorQuery.getString(3);
                                if (objU0 == null) {
                                    C0597l0.k(t8);
                                    t8.f11039L.d(T.t(str), string, str3, "(2)Read invalid user property value, ignoring it");
                                } else {
                                    arrayList.add(new G1(str, string, string3, j8, objU0));
                                }
                            } while (cursorQuery.moveToNext());
                        }
                    } catch (SQLiteException e9) {
                        e = e9;
                        cursor = cursorQuery;
                        T t9 = ((C0597l0) this.f10616G).f11258O;
                        C0597l0.k(t9);
                        t9.f11039L.d(T.t(str), string, e, "(2)Error querying user properties");
                        arrayList = Collections.emptyList();
                        cursorQuery = cursor;
                    } catch (Throwable th2) {
                        th = th2;
                        cursor = cursorQuery;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                } catch (SQLiteException e10) {
                    e = e10;
                    string = str2;
                    cursor = null;
                    T t10 = ((C0597l0) this.f10616G).f11258O;
                    C0597l0.k(t10);
                    t10.f11039L.d(T.t(str), string, e, "(2)Error querying user properties");
                    arrayList = Collections.emptyList();
                    cursorQuery = cursor;
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return arrayList;
                }
            } catch (Throwable th3) {
                th = th3;
                cursor = null;
            }
        } catch (SQLiteException e11) {
            e = e11;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:103:0x012e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:104:0x012e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:106:0x003b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:108:? A[LOOP:2: B:49:0x0114->B:108:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:48:0x010c  */
    /* JADX WARN: Code duplicated, block: B:51:0x011a  */
    /* JADX WARN: Code duplicated, block: B:61:0x0153  */
    /* JADX WARN: Code duplicated, block: B:63:0x015f  */
    /* JADX WARN: Code duplicated, block: B:65:0x016d  */
    /* JADX WARN: Code duplicated, block: B:67:0x0173  */
    /* JADX WARN: Code duplicated, block: B:68:0x017f  */
    /* JADX WARN: Code duplicated, block: B:70:0x0185  */
    /* JADX WARN: Code duplicated, block: B:71:0x0191  */
    /* JADX WARN: Code duplicated, block: B:73:0x0197  */
    /* JADX WARN: Code duplicated, block: B:74:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:76:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:77:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:80:0x01db  */
    /* JADX WARN: Code duplicated, block: B:84:0x0289 A[Catch: SQLiteException -> 0x02a4, TRY_LEAVE, TryCatch #1 {SQLiteException -> 0x02a4, blocks: (B:82:0x026d, B:84:0x0289), top: B:92:0x026d }] */
    /* JADX WARN: Multi-variable type inference failed */
    public final void x(String str, Long l4, String str2, Bundle bundle) {
        E1 e8;
        Bundle bundle2;
        String string;
        C0597l0 c0597l0;
        String str3;
        long jUpdate;
        Cursor cursorQuery;
        Object obj;
        Object obj2;
        C2593l1 c2593l1;
        Iterator it;
        String str4 = str;
        m();
        n();
        C0597l0 c0597l1 = (C0597l0) this.f10616G;
        Cursor cursor = null;
        C0598m c0598m = (!c0597l1.f11256M.B(null, E.f10781f1) || l4 == null) ? new C0598m(this, str4) : new C0598m(this, str4, l4.longValue());
        List<C0596l> listA = c0598m.a();
        while (!listA.isEmpty()) {
            for (C0596l c0596l : listA) {
                try {
                    if (!TextUtils.isEmpty(str2)) {
                        try {
                            cursorQuery = j0().query("raw_events_metadata", new String[]{"metadata"}, "app_id = ? and metadata_fingerprint = ?", new String[]{str4, Long.toString(c0596l.f11246b)}, null, null, "rowid", "2");
                            try {
                                try {
                                    if (cursorQuery.moveToFirst()) {
                                        try {
                                            C2593l1 c2593l2 = (C2593l1) ((C2587k1) E1.O(C2593l1.n2(), cursorQuery.getBlob(0))).e();
                                            try {
                                                if (cursorQuery.moveToNext()) {
                                                    T t7 = ((C0597l0) this.f10616G).f11258O;
                                                    C0597l0.k(t7);
                                                    t7.f11042O.b(T.t(str), "Get multiple raw event metadata records, expected one. appId");
                                                }
                                                cursorQuery.close();
                                                obj2 = c2593l2;
                                            } catch (SQLiteException e9) {
                                                e = e9;
                                                obj = c2593l2;
                                                T t8 = ((C0597l0) this.f10616G).f11258O;
                                                C0597l0.k(t8);
                                                t8.f11039L.c(T.t(str), e, "Data loss. Error selecting raw event. appId");
                                                c2593l1 = obj;
                                                obj2 = obj;
                                                if (cursorQuery != null) {
                                                }
                                                if (c2593l1 != 0) {
                                                    it = c2593l1.N().iterator();
                                                    while (true) {
                                                        if (it.hasNext()) {
                                                            if (((C2660y1) it.next()).v().equals(str2)) {
                                                            }
                                                        }
                                                    }
                                                }
                                                A1 a8 = this.f11343H;
                                                e8 = a8.f10658M;
                                                A1.I(e8);
                                                C2533b1 c2533b1 = c0596l.f11248d;
                                                bundle2 = new Bundle();
                                                for (C2557f1 c2557f1 : c2533b1.x()) {
                                                    if (c2557f1.I()) {
                                                        bundle2.putDouble(c2557f1.v(), c2557f1.q());
                                                    } else if (c2557f1.J()) {
                                                        bundle2.putFloat(c2557f1.v(), c2557f1.r());
                                                    } else if (c2557f1.K()) {
                                                        bundle2.putLong(c2557f1.v(), c2557f1.t());
                                                    } else if (c2557f1.M()) {
                                                        bundle2.putString(c2557f1.v(), c2557f1.w());
                                                    } else if (c2557f1.x().isEmpty()) {
                                                        T t9 = ((C0597l0) e8.f10616G).f11258O;
                                                        C0597l0.k(t9);
                                                        t9.f11039L.b(c2557f1, "Unexpected parameter type for parameter");
                                                    } else {
                                                        bundle2.putParcelableArray(c2557f1.v(), E1.s((InterfaceC2661y2) c2557f1.x()));
                                                    }
                                                }
                                                string = bundle2.getString("_o");
                                                bundle2.remove("_o");
                                                if (string == null) {
                                                    string = HttpUrl.FRAGMENT_ENCODE_SET;
                                                }
                                                c0597l0 = (C0597l0) this.f10616G;
                                                I1 i8 = c0597l0.f11261R;
                                                C0597l0.i(i8);
                                                i8.D(bundle2, bundle);
                                                n nVar = new n((C0597l0) this.f10616G, string, str, c2533b1.w(), c2533b1.t(), c2533b1.s(), bundle2);
                                                long j8 = c0596l.f11245a;
                                                m();
                                                n();
                                                str3 = (String) nVar.f2536d;
                                                com.bumptech.glide.c.e(str3);
                                                E1 e10 = a8.f10658M;
                                                A1.I(e10);
                                                byte[] bArrC = e10.N(nVar).c();
                                                ContentValues contentValues = new ContentValues();
                                                contentValues.put("app_id", str3);
                                                contentValues.put("name", (String) nVar.f2537e);
                                                contentValues.put("timestamp", Long.valueOf(nVar.f2534b));
                                                contentValues.put("metadata_fingerprint", Long.valueOf(c0596l.f11246b));
                                                contentValues.put("data", bArrC);
                                                contentValues.put("realtime", Integer.valueOf(c0596l.f11247c ? 1 : 0));
                                                jUpdate = j0().update("raw_events", contentValues, "rowid = ?", new String[]{String.valueOf(j8)});
                                                if (jUpdate != 1) {
                                                    T t10 = c0597l0.f11258O;
                                                    C0597l0.k(t10);
                                                    t10.f11039L.c(T.t(str3), Long.valueOf(jUpdate), "Failed to update raw event. appId, updatedRows");
                                                }
                                                str4 = str;
                                                cursor = null;
                                            }
                                            cursorQuery.close();
                                            c2593l1 = obj2;
                                        } catch (IOException e11) {
                                            T t11 = ((C0597l0) this.f10616G).f11258O;
                                            C0597l0.k(t11);
                                            t11.f11039L.c(T.t(str), e11, "Data loss. Failed to merge raw event metadata. appId");
                                            cursorQuery.close();
                                            c2593l1 = cursor;
                                        }
                                        if (c2593l1 != 0) {
                                            it = c2593l1.N().iterator();
                                            while (true) {
                                                if (it.hasNext()) {
                                                    if (((C2660y1) it.next()).v().equals(str2)) {
                                                    }
                                                }
                                            }
                                        }
                                    } else {
                                        T t12 = c0597l1.f11258O;
                                        C0597l0.k(t12);
                                        t12.f11039L.b(T.t(str), "Raw event metadata record is missing. appId");
                                    }
                                    cursorQuery.close();
                                    c2593l1 = cursor;
                                } catch (Throwable th) {
                                    th = th;
                                    cursor = cursorQuery;
                                    if (cursor != null) {
                                        cursor.close();
                                    }
                                    throw th;
                                }
                            } catch (SQLiteException e12) {
                                e = e12;
                                obj = cursor;
                            }
                        } catch (SQLiteException e13) {
                            e = e13;
                            cursorQuery = cursor;
                            obj = cursorQuery;
                        } catch (Throwable th2) {
                            th = th2;
                        }
                        if (c2593l1 != 0) {
                            it = c2593l1.N().iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    if (((C2660y1) it.next()).v().equals(str2)) {
                                    }
                                }
                            }
                        }
                    }
                    jUpdate = j0().update("raw_events", contentValues, "rowid = ?", new String[]{String.valueOf(j8)});
                    if (jUpdate != 1) {
                        T t13 = c0597l0.f11258O;
                        C0597l0.k(t13);
                        t13.f11039L.c(T.t(str3), Long.valueOf(jUpdate), "Failed to update raw event. appId, updatedRows");
                    }
                } catch (SQLiteException e14) {
                    T t14 = ((C0597l0) this.f10616G).f11258O;
                    C0597l0.k(t14);
                    t14.f11039L.c(T.t(str3), e14, "Error updating raw event. appId");
                }
                A1 a9 = this.f11343H;
                e8 = a9.f10658M;
                A1.I(e8);
                C2533b1 c2533b2 = c0596l.f11248d;
                bundle2 = new Bundle();
                while (r4.hasNext()) {
                    if (c2557f1.I()) {
                        bundle2.putDouble(c2557f1.v(), c2557f1.q());
                    } else if (c2557f1.J()) {
                        bundle2.putFloat(c2557f1.v(), c2557f1.r());
                    } else if (c2557f1.K()) {
                        bundle2.putLong(c2557f1.v(), c2557f1.t());
                    } else if (c2557f1.M()) {
                        bundle2.putString(c2557f1.v(), c2557f1.w());
                    } else if (c2557f1.x().isEmpty()) {
                        bundle2.putParcelableArray(c2557f1.v(), E1.s((InterfaceC2661y2) c2557f1.x()));
                    } else {
                        T t15 = ((C0597l0) e8.f10616G).f11258O;
                        C0597l0.k(t15);
                        t15.f11039L.b(c2557f1, "Unexpected parameter type for parameter");
                    }
                }
                string = bundle2.getString("_o");
                bundle2.remove("_o");
                if (string == null) {
                    string = HttpUrl.FRAGMENT_ENCODE_SET;
                }
                c0597l0 = (C0597l0) this.f10616G;
                I1 i9 = c0597l0.f11261R;
                C0597l0.i(i9);
                i9.D(bundle2, bundle);
                n nVar2 = new n((C0597l0) this.f10616G, string, str, c2533b2.w(), c2533b2.t(), c2533b2.s(), bundle2);
                long j9 = c0596l.f11245a;
                m();
                n();
                str3 = (String) nVar2.f2536d;
                com.bumptech.glide.c.e(str3);
                E1 e15 = a9.f10658M;
                A1.I(e15);
                byte[] bArrC2 = e15.N(nVar2).c();
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("app_id", str3);
                contentValues2.put("name", (String) nVar2.f2537e);
                contentValues2.put("timestamp", Long.valueOf(nVar2.f2534b));
                contentValues2.put("metadata_fingerprint", Long.valueOf(c0596l.f11246b));
                contentValues2.put("data", bArrC2);
                contentValues2.put("realtime", Integer.valueOf(c0596l.f11247c ? 1 : 0));
                str4 = str;
                cursor = null;
            }
            listA = c0598m.a();
            str4 = str;
            cursor = null;
        }
    }

    public final void y() {
        n();
        j0().beginTransaction();
    }

    public final void z(String str) {
        C0609s c0609sP;
        T("events_snapshot", str);
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = j0().query("events", (String[]) Collections.singletonList("name").toArray(new String[0]), "app_id=?", new String[]{str}, null, null, null);
                if (cursorQuery.moveToFirst()) {
                    do {
                        String string = cursorQuery.getString(0);
                        if (string != null && (c0609sP = P("events", str, string)) != null) {
                            U("events_snapshot", c0609sP);
                        }
                    } while (cursorQuery.moveToNext());
                }
            } catch (SQLiteException e8) {
                T t7 = ((C0597l0) this.f10616G).f11258O;
                C0597l0.k(t7);
                t7.f11039L.c(T.t(str), e8, "Error creating snapshot. appId");
            }
        } finally {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        }
    }
}
