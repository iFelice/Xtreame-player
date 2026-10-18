package com.google.android.gms.internal.ads;

import A0.C0022w;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import okhttp3.HttpUrl;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.cq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1172cq extends My {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final /* synthetic */ int f18245I = 0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f18246G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final InterfaceExecutorServiceC1504jC f18247H;

    /* JADX WARN: Illegal instructions before constructor call */
    public C1172cq(Context context, C1936re c1936re) {
        int iIntValue = ((Integer) C3099q.f26624d.f26627c.a(Q7.H7)).intValue();
        int i8 = Ly.f14592d;
        super(context, "AdMobOfflineBufferedPings.db", iIntValue);
        this.f18246G = context;
        this.f18247H = c1936re;
    }

    public static void O(SQLiteDatabase sQLiteDatabase, p120p3.k kVar) {
        String string;
        sQLiteDatabase.beginTransaction();
        try {
            Cursor cursorQuery = sQLiteDatabase.query("offline_buffered_pings", new String[]{"timestamp", "url"}, "event_state = 1", null, null, null, "timestamp ASC", null);
            int count = cursorQuery.getCount();
            String[] strArr = new String[count];
            int i8 = 0;
            while (cursorQuery.moveToNext()) {
                int columnIndex = cursorQuery.getColumnIndex("timestamp");
                int columnIndex2 = cursorQuery.getColumnIndex("url");
                if (columnIndex2 != -1) {
                    long j8 = cursorQuery.getLong(columnIndex);
                    String string2 = cursorQuery.getString(columnIndex2);
                    if (string2 == null) {
                        string = HttpUrl.FRAGMENT_ENCODE_SET;
                    } else {
                        Uri uri = Uri.parse(string2);
                        p083k3.l.f25980A.f25990j.getClass();
                        string = uri.buildUpon().appendQueryParameter("bd", Long.toString(System.currentTimeMillis() - j8)).build().toString();
                    }
                    strArr[i8] = string;
                }
                i8++;
            }
            cursorQuery.close();
            sQLiteDatabase.delete("offline_buffered_pings", "event_state = ?", new String[]{Integer.toString(1)});
            sQLiteDatabase.setTransactionSuccessful();
            sQLiteDatabase.endTransaction();
            for (int i9 = 0; i9 < count; i9++) {
                kVar.c(strArr[i9]);
            }
        } catch (Throwable th) {
            sQLiteDatabase.endTransaction();
            throw th;
        }
    }

    public final void E(C0022w c0022w) {
        N(new C0871Om(7, this, c0022w));
    }

    public final void N(Dw dw) {
        CallableC1419he callableC1419he = new CallableC1419he(this, 5);
        InterfaceExecutorServiceC1504jC interfaceExecutorServiceC1504jC = this.f18247H;
        Cw.h2(((IB) interfaceExecutorServiceC1504jC).b(callableC1419he), new Qp(dw, 1), interfaceExecutorServiceC1504jC);
    }

    public final void k(String str) {
        N(new J(str, (Object) null));
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE offline_buffered_pings (timestamp INTEGER PRIMARY_KEY, gws_query_id TEXT, url TEXT, event_state INTEGER)");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i8, int i9) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS offline_buffered_pings");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i8, int i9) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS offline_buffered_pings");
    }
}
