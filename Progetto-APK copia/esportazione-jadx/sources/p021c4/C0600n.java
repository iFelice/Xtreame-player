package p021c4;

import P3.a;
import P3.b;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.os.SystemClock;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.ads.My;
import com.google.android.gms.internal.measurement.C2578i4;
import p018c1.d;
import p046f6.c;

/* JADX INFO: renamed from: c4.n, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0600n extends My {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f11293G = 1;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ d f11294H;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0600n(C0602o c0602o, Context context) {
        super(context, "google_app_measurement.db");
        this.f11294H = c0602o;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final SQLiteDatabase getWritableDatabase() {
        int i8 = this.f11293G;
        d dVar = this.f11294H;
        switch (i8) {
            case 0:
                C0602o c0602o = (C0602o) dVar;
                c cVar = c0602o.f11314K;
                ((C0597l0) c0602o.f10616G).getClass();
                if (cVar.f25222H != 0) {
                    ((b) ((a) cVar.f25223I)).getClass();
                    if (SystemClock.elapsedRealtime() - cVar.f25222H < 3600000) {
                        throw new SQLiteException("Database open failed");
                    }
                }
                try {
                    return super.getWritableDatabase();
                } catch (SQLiteException unused) {
                    c cVar2 = c0602o.f11314K;
                    ((b) ((a) cVar2.f25223I)).getClass();
                    cVar2.f25222H = SystemClock.elapsedRealtime();
                    C0597l0 c0597l0 = (C0597l0) c0602o.f10616G;
                    T t7 = c0597l0.f11258O;
                    C0597l0.k(t7);
                    t7.f11039L.a("Opening the database failed, dropping and recreating it");
                    if (!c0597l0.f11250G.getDatabasePath("google_app_measurement.db").delete()) {
                        T t8 = c0597l0.f11258O;
                        C0597l0.k(t8);
                        t8.f11039L.b("google_app_measurement.db", "Failed to delete corrupted db file");
                    }
                    try {
                        SQLiteDatabase writableDatabase = super.getWritableDatabase();
                        cVar2.f25222H = 0L;
                        return writableDatabase;
                    } catch (SQLiteException e8) {
                        T t9 = ((C0597l0) c0602o.f10616G).f11258O;
                        C0597l0.k(t9);
                        t9.f11039L.b(e8, "Failed to open freshly created database");
                        throw e8;
                    }
                }
            default:
                try {
                    return super.getWritableDatabase();
                } catch (SQLiteDatabaseLockedException e9) {
                    throw e9;
                } catch (SQLiteException unused2) {
                    N n7 = (N) dVar;
                    C0597l0 c0597l1 = (C0597l0) n7.f10616G;
                    T t10 = c0597l1.f11258O;
                    C0597l0.k(t10);
                    t10.f11039L.a("Opening the local database failed, dropping and recreating it");
                    if (!c0597l1.f11250G.getDatabasePath("google_app_measurement_local.db").delete()) {
                        T t11 = c0597l1.f11258O;
                        C0597l0.k(t11);
                        t11.f11039L.b("google_app_measurement_local.db", "Failed to delete corrupted local db file");
                    }
                    try {
                        return super.getWritableDatabase();
                    } catch (SQLiteException e10) {
                        T t12 = ((C0597l0) n7.f10616G).f11258O;
                        C0597l0.k(t12);
                        t12.f11039L.b(e10, "Failed to open local database. Events will bypass local storage");
                        return null;
                    }
                }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        int i8 = this.f11293G;
        d dVar = this.f11294H;
        switch (i8) {
            case 0:
                T t7 = ((C0597l0) ((C0602o) dVar).f10616G).f11258O;
                C0597l0.k(t7);
                Cw.M0(t7, sQLiteDatabase);
                break;
            default:
                T t8 = ((C0597l0) ((N) dVar).f10616G).f11258O;
                C0597l0.k(t8);
                Cw.M0(t8, sQLiteDatabase);
                break;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onOpen(SQLiteDatabase sQLiteDatabase) throws Throwable {
        int i8 = this.f11293G;
        d dVar = this.f11294H;
        switch (i8) {
            case 0:
                C0597l0 c0597l0 = (C0597l0) ((C0602o) dVar).f10616G;
                T t7 = c0597l0.f11258O;
                C0597l0.k(t7);
                Cw.Y(t7, sQLiteDatabase, "events", "CREATE TABLE IF NOT EXISTS events ( app_id TEXT NOT NULL, name TEXT NOT NULL, lifetime_count INTEGER NOT NULL, current_bundle_count INTEGER NOT NULL, last_fire_timestamp INTEGER NOT NULL, PRIMARY KEY (app_id, name)) ;", "app_id,name,lifetime_count,current_bundle_count,last_fire_timestamp", C0602o.f11302L);
                T t8 = c0597l0.f11258O;
                C0597l0.k(t8);
                Cw.Y(t8, sQLiteDatabase, "events_snapshot", "CREATE TABLE IF NOT EXISTS events_snapshot ( app_id TEXT NOT NULL, name TEXT NOT NULL, lifetime_count INTEGER NOT NULL, current_bundle_count INTEGER NOT NULL, last_fire_timestamp INTEGER NOT NULL, last_bundled_timestamp INTEGER, last_bundled_day INTEGER, last_sampled_complex_event_id INTEGER, last_sampling_rate INTEGER, last_exempt_from_sampling INTEGER, current_session_count INTEGER, PRIMARY KEY (app_id, name)) ;", "app_id,name,lifetime_count,current_bundle_count,last_fire_timestamp,last_bundled_timestamp,last_bundled_day,last_sampled_complex_event_id,last_sampling_rate,last_exempt_from_sampling,current_session_count", null);
                C0597l0.k(t8);
                Cw.Y(t8, sQLiteDatabase, "conditional_properties", "CREATE TABLE IF NOT EXISTS conditional_properties ( app_id TEXT NOT NULL, origin TEXT NOT NULL, name TEXT NOT NULL, value BLOB NOT NULL, creation_timestamp INTEGER NOT NULL, active INTEGER NOT NULL, trigger_event_name TEXT, trigger_timeout INTEGER NOT NULL, timed_out_event BLOB,triggered_event BLOB, triggered_timestamp INTEGER NOT NULL, time_to_live INTEGER NOT NULL, expired_event BLOB, PRIMARY KEY (app_id, name)) ;", "app_id,origin,name,value,active,trigger_event_name,trigger_timeout,creation_timestamp,timed_out_event,triggered_event,triggered_timestamp,time_to_live,expired_event", null);
                C0597l0.k(t8);
                Cw.Y(t8, sQLiteDatabase, "user_attributes", "CREATE TABLE IF NOT EXISTS user_attributes ( app_id TEXT NOT NULL, name TEXT NOT NULL, set_timestamp INTEGER NOT NULL, value BLOB NOT NULL, PRIMARY KEY (app_id, name)) ;", "app_id,name,set_timestamp,value", C0602o.f11304N);
                C0597l0.k(t8);
                Cw.Y(t8, sQLiteDatabase, "apps", "CREATE TABLE IF NOT EXISTS apps ( app_id TEXT NOT NULL, app_instance_id TEXT, gmp_app_id TEXT, resettable_device_id_hash TEXT, last_bundle_index INTEGER NOT NULL, last_bundle_end_timestamp INTEGER NOT NULL, PRIMARY KEY (app_id)) ;", "app_id,app_instance_id,gmp_app_id,resettable_device_id_hash,last_bundle_index,last_bundle_end_timestamp", C0602o.f11305O);
                C0597l0.k(t8);
                Cw.Y(t8, sQLiteDatabase, "queue", "CREATE TABLE IF NOT EXISTS queue ( app_id TEXT NOT NULL, bundle_end_timestamp INTEGER NOT NULL, data BLOB NOT NULL);", "app_id,bundle_end_timestamp,data", C0602o.f11307Q);
                C0597l0.k(t8);
                Cw.Y(t8, sQLiteDatabase, "raw_events_metadata", "CREATE TABLE IF NOT EXISTS raw_events_metadata ( app_id TEXT NOT NULL, metadata_fingerprint INTEGER NOT NULL, metadata BLOB NOT NULL, PRIMARY KEY (app_id, metadata_fingerprint));", "app_id,metadata_fingerprint,metadata", null);
                C0597l0.k(t8);
                Cw.Y(t8, sQLiteDatabase, "raw_events", "CREATE TABLE IF NOT EXISTS raw_events ( app_id TEXT NOT NULL, name TEXT NOT NULL, timestamp INTEGER NOT NULL, metadata_fingerprint INTEGER NOT NULL, data BLOB NOT NULL);", "app_id,name,timestamp,metadata_fingerprint,data", C0602o.f11306P);
                C0597l0.k(t8);
                Cw.Y(t8, sQLiteDatabase, "event_filters", "CREATE TABLE IF NOT EXISTS event_filters ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, filter_id INTEGER NOT NULL, event_name TEXT NOT NULL, data BLOB NOT NULL, PRIMARY KEY (app_id, event_name, audience_id, filter_id));", "app_id,audience_id,filter_id,event_name,data", C0602o.f11308R);
                C0597l0.k(t8);
                Cw.Y(t8, sQLiteDatabase, "property_filters", "CREATE TABLE IF NOT EXISTS property_filters ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, filter_id INTEGER NOT NULL, property_name TEXT NOT NULL, data BLOB NOT NULL, PRIMARY KEY (app_id, property_name, audience_id, filter_id));", "app_id,audience_id,filter_id,property_name,data", C0602o.f11309S);
                C0597l0.k(t8);
                Cw.Y(t8, sQLiteDatabase, "audience_filter_values", "CREATE TABLE IF NOT EXISTS audience_filter_values ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, current_results BLOB, PRIMARY KEY (app_id, audience_id));", "app_id,audience_id,current_results", null);
                C0597l0.k(t8);
                Cw.Y(t8, sQLiteDatabase, "app2", "CREATE TABLE IF NOT EXISTS app2 ( app_id TEXT NOT NULL, first_open_count INTEGER NOT NULL, PRIMARY KEY (app_id));", "app_id,first_open_count", C0602o.f11310T);
                C0597l0.k(t8);
                Cw.Y(t8, sQLiteDatabase, "main_event_params", "CREATE TABLE IF NOT EXISTS main_event_params ( app_id TEXT NOT NULL, event_id TEXT NOT NULL, children_to_process INTEGER NOT NULL, main_event BLOB NOT NULL, PRIMARY KEY (app_id));", "app_id,event_id,children_to_process,main_event", null);
                C0597l0.k(t8);
                Cw.Y(t8, sQLiteDatabase, "default_event_params", "CREATE TABLE IF NOT EXISTS default_event_params ( app_id TEXT NOT NULL, parameters BLOB NOT NULL, PRIMARY KEY (app_id));", "app_id,parameters", null);
                C0597l0.k(t8);
                Cw.Y(t8, sQLiteDatabase, "consent_settings", "CREATE TABLE IF NOT EXISTS consent_settings ( app_id TEXT NOT NULL, consent_state TEXT NOT NULL, PRIMARY KEY (app_id));", "app_id,consent_state", C0602o.f11311U);
                C2578i4.b();
                C0597l0.k(t8);
                Cw.Y(t8, sQLiteDatabase, "trigger_uris", "CREATE TABLE IF NOT EXISTS trigger_uris ( app_id TEXT NOT NULL, trigger_uri TEXT NOT NULL, timestamp_millis INTEGER NOT NULL, source INTEGER NOT NULL);", "app_id,trigger_uri,source,timestamp_millis", C0602o.f11312V);
                C0597l0.k(t8);
                Cw.Y(t8, sQLiteDatabase, "upload_queue", "CREATE TABLE IF NOT EXISTS upload_queue ( app_id TEXT NOT NULL, upload_uri TEXT NOT NULL, upload_headers TEXT NOT NULL, upload_type INTEGER NOT NULL, measurement_batch BLOB NOT NULL, retry_count INTEGER NOT NULL, creation_timestamp INTEGER NOT NULL );", "app_id,upload_uri,upload_headers,upload_type,measurement_batch,retry_count,creation_timestamp", C0602o.f11303M);
                break;
            default:
                T t9 = ((C0597l0) ((N) dVar).f10616G).f11258O;
                C0597l0.k(t9);
                Cw.Y(t9, sQLiteDatabase, "messages", "create table if not exists messages ( type INTEGER NOT NULL, entry BLOB NOT NULL)", "type,entry", N.f10957K);
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0600n(N n7, Context context) {
        super(context, "google_app_measurement_local.db");
        this.f11294H = n7;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i8, int i9) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i8, int i9) {
    }
}
