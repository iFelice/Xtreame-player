package p021c4;

import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import com.bumptech.glide.c;
import com.google.android.gms.internal.measurement.C2527a1;
import com.google.android.gms.internal.measurement.C2533b1;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import okhttp3.HttpUrl;

/* JADX INFO: renamed from: c4.m, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0598m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f11284a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f11285b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ C0602o f11286c;

    public C0598m(C0602o c0602o, String str) {
        this.f11286c = c0602o;
        c.e(str);
        this.f11284a = str;
        this.f11285b = -1L;
    }

    /* JADX WARN: Code duplicated, block: B:48:0x010f  */
    public final List a() throws Throwable {
        Cursor cursor;
        Cursor cursorQuery;
        List list;
        List listEmptyList;
        C0602o c0602o = this.f11286c;
        ArrayList arrayList = new ArrayList();
        String strValueOf = String.valueOf(this.f11285b);
        String str = this.f11284a;
        try {
            int i8 = 3;
            cursorQuery = c0602o.j0().query("raw_events", new String[]{"rowid", "name", "timestamp", "metadata_fingerprint", "data", "realtime"}, "app_id = ? and rowid > ?", new String[]{str, strValueOf}, null, null, "rowid", "1000");
            try {
                if (cursorQuery.moveToFirst()) {
                    while (true) {
                        long j8 = cursorQuery.getLong(0);
                        long j9 = cursorQuery.getLong(i8);
                        boolean z7 = cursorQuery.getLong(5) == 1;
                        byte[] blob = cursorQuery.getBlob(4);
                        if (j8 > this.f11285b) {
                            this.f11285b = j8;
                        }
                        try {
                            C2527a1 c2527a1 = (C2527a1) E1.O(C2533b1.u(), blob);
                            String string = cursorQuery.getString(1);
                            if (string == null) {
                                string = HttpUrl.FRAGMENT_ENCODE_SET;
                            }
                            c2527a1.g();
                            C2533b1.C((C2533b1) c2527a1.f23247H, string);
                            long j10 = cursorQuery.getLong(2);
                            c2527a1.g();
                            C2533b1.F(j10, (C2533b1) c2527a1.f23247H);
                            arrayList.add(new C0596l(j8, j9, z7, (C2533b1) c2527a1.e()));
                        } catch (IOException e8) {
                            T t7 = ((C0597l0) c0602o.f10616G).f11258O;
                            C0597l0.k(t7);
                            t7.f11039L.c(T.t(str), e8, "Data loss. Failed to merge raw event. appId");
                        }
                        if (!cursorQuery.moveToNext()) {
                            break;
                        }
                        i8 = 3;
                    }
                    list = arrayList;
                } else {
                    listEmptyList = Collections.emptyList();
                }
            } catch (SQLiteException e9) {
                e = e9;
                cursor = cursorQuery;
                try {
                    T t8 = ((C0597l0) c0602o.f10616G).f11258O;
                    C0597l0.k(t8);
                    t8.f11039L.c(T.t(str), e, "Data loss. Error querying raw events batch. appId");
                    cursorQuery = cursor;
                    list = arrayList;
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
            list = listEmptyList;
            cursorQuery.close();
        }
        list = listEmptyList;
        return list;
    }

    public C0598m(C0602o c0602o, String str, long j8) {
        this.f11286c = c0602o;
        c.e(str);
        this.f11284a = str;
        this.f11285b = c0602o.f0("select rowid from raw_events where app_id = ? and timestamp < ? order by rowid desc limit 1", new String[]{str, String.valueOf(j8)}, -1L);
    }
}
