package O0;

import C0.C0084i;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Base64;
import android.util.Log;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p086l.C3061x;
import p094m0.g0;
import p117p0.InterfaceC3172j;
import z4.c0;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class A implements InterfaceC3172j, R0.n, p020c3.b, p012b3.h, p052g4.f {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f5020G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f5021H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Object f5022I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ Object f5023J;

    public /* synthetic */ A(Object obj, Object obj2, Object obj3, int i8) {
        this.f5020G = i8;
        this.f5021H = obj;
        this.f5022I = obj2;
        this.f5023J = obj3;
    }

    @Override // p117p0.InterfaceC3172j
    public final void accept(Object obj) {
        D d6 = (D) this.f5021H;
        ((E) obj).r(d6.f5030a, (C0300y) this.f5022I, (C0296u) this.f5023J);
    }

    @Override // p012b3.h
    public final Object apply(Object obj) {
        long jInsert;
        X2.c cVar;
        X2.c cVar2 = X2.c.CACHE_FULL;
        int i8 = this.f5020G;
        int i9 = 5;
        int i10 = 4;
        int i11 = 2;
        Object obj2 = this.f5023J;
        Object obj3 = this.f5022I;
        int i12 = 1;
        p012b3.j jVar = (p012b3.j) this.f5021H;
        switch (i8) {
            case 3:
                U2.h hVar = (U2.h) obj3;
                U2.i iVar = (U2.i) obj2;
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                R2.b bVar = p012b3.j.f9852L;
                long jSimpleQueryForLong = jVar.k().compileStatement("PRAGMA page_size").simpleQueryForLong() * jVar.k().compileStatement("PRAGMA page_count").simpleQueryForLong();
                p012b3.a aVar = jVar.f9856J;
                if (jSimpleQueryForLong >= aVar.f9834a) {
                    jVar.N(new C0.o(hVar.f6946a, 1L, cVar2));
                    return -1L;
                }
                Long lE = p012b3.j.E(sQLiteDatabase, iVar);
                if (lE != null) {
                    jInsert = lE.longValue();
                } else {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("backend_name", iVar.f6952a);
                    contentValues.put("priority", Integer.valueOf(p035e3.a.a(iVar.f6954c)));
                    contentValues.put("next_request_ms", (Integer) 0);
                    byte[] bArr = iVar.f6953b;
                    if (bArr != null) {
                        contentValues.put("extras", Base64.encodeToString(bArr, 0));
                    }
                    jInsert = sQLiteDatabase.insert("transport_contexts", null, contentValues);
                }
                byte[] bArr2 = hVar.f6948c.f6962b;
                int length = bArr2.length;
                int i13 = aVar.f9838e;
                boolean z7 = length <= i13;
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("context_id", Long.valueOf(jInsert));
                contentValues2.put("transport_name", hVar.f6946a);
                contentValues2.put("timestamp_ms", Long.valueOf(hVar.f6949d));
                contentValues2.put("uptime_ms", Long.valueOf(hVar.f6950e));
                contentValues2.put("payload_encoding", hVar.f6948c.f6961a.f6284a);
                contentValues2.put("code", hVar.f6947b);
                contentValues2.put("num_attempts", (Integer) 0);
                contentValues2.put("inline", Boolean.valueOf(z7));
                contentValues2.put("payload", z7 ? bArr2 : new byte[0]);
                long jInsert2 = sQLiteDatabase.insert("events", null, contentValues2);
                if (!z7) {
                    int iCeil = (int) Math.ceil(((double) bArr2.length) / ((double) i13));
                    for (int i14 = 1; i14 <= iCeil; i14++) {
                        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr2, (i14 - 1) * i13, Math.min(i14 * i13, bArr2.length));
                        ContentValues contentValues3 = new ContentValues();
                        contentValues3.put("event_id", Long.valueOf(jInsert2));
                        contentValues3.put("sequence_num", Integer.valueOf(i14));
                        contentValues3.put("bytes", bArrCopyOfRange);
                        sQLiteDatabase.insert("event_payloads", null, contentValues3);
                    }
                }
                for (Map.Entry entry : Collections.unmodifiableMap(hVar.f6951f).entrySet()) {
                    ContentValues contentValues4 = new ContentValues();
                    contentValues4.put("event_id", Long.valueOf(jInsert2));
                    contentValues4.put("name", (String) entry.getKey());
                    contentValues4.put("value", (String) entry.getValue());
                    sQLiteDatabase.insert("event_metadata", null, contentValues4);
                }
                return Long.valueOf(jInsert2);
            case 4:
                SQLiteDatabase sQLiteDatabase2 = (SQLiteDatabase) obj;
                R2.b bVar2 = p012b3.j.f9852L;
                jVar.getClass();
                sQLiteDatabase2.compileStatement((String) obj3).execute();
                p012b3.j.c0(sQLiteDatabase2.rawQuery((String) obj2, null), new p012b3.g(jVar, 2));
                sQLiteDatabase2.compileStatement("DELETE FROM events WHERE num_attempts >= 16").execute();
                return null;
            case 5:
                List list = (List) obj3;
                U2.i iVar2 = (U2.i) obj2;
                Cursor cursor = (Cursor) obj;
                R2.b bVar3 = p012b3.j.f9852L;
                jVar.getClass();
                while (cursor.moveToNext()) {
                    long j8 = cursor.getLong(0);
                    boolean z8 = cursor.getInt(7) != 0;
                    C3061x c3061x = new C3061x(3);
                    c3061x.f26415L = new HashMap();
                    String string = cursor.getString(i12);
                    if (string == null) {
                        throw new NullPointerException("Null transportName");
                    }
                    c3061x.f26410G = string;
                    c3061x.f26413J = Long.valueOf(cursor.getLong(2));
                    c3061x.f26414K = Long.valueOf(cursor.getLong(3));
                    if (z8) {
                        String string2 = cursor.getString(4);
                        c3061x.m(new U2.l(string2 == null ? p012b3.j.f9852L : new R2.b(string2), cursor.getBlob(5)));
                    } else {
                        String string3 = cursor.getString(4);
                        c3061x.m(new U2.l(string3 == null ? p012b3.j.f9852L : new R2.b(string3), (byte[]) p012b3.j.c0(jVar.k().query("event_payloads", new String[]{"bytes"}, "event_id = ?", new String[]{String.valueOf(j8)}, null, null, "sequence_num"), new C0084i(20))));
                    }
                    if (!cursor.isNull(6)) {
                        c3061x.f26411H = Integer.valueOf(cursor.getInt(6));
                    }
                    list.add(new p012b3.b(j8, iVar2, c3061x.e()));
                    i12 = 1;
                }
                return null;
            default:
                Map map = (Map) obj3;
                p096m2.i iVar3 = (p096m2.i) obj2;
                Cursor cursor2 = (Cursor) obj;
                R2.b bVar4 = p012b3.j.f9852L;
                jVar.getClass();
                while (cursor2.moveToNext()) {
                    String string4 = cursor2.getString(0);
                    int i15 = cursor2.getInt(1);
                    X2.c cVar3 = X2.c.REASON_UNKNOWN;
                    if (i15 != 0) {
                        if (i15 == 1) {
                            cVar3 = X2.c.MESSAGE_TOO_OLD;
                        } else if (i15 == i11) {
                            cVar = cVar2;
                        } else if (i15 == 3) {
                            cVar3 = X2.c.PAYLOAD_TOO_BIG;
                        } else if (i15 == i10) {
                            cVar3 = X2.c.MAX_RETRIES_REACHED;
                        } else if (i15 == i9) {
                            cVar3 = X2.c.INVALID_PAYLOD;
                        } else if (i15 == 6) {
                            cVar3 = X2.c.SERVER_ERROR;
                        } else {
                            E3.f.i(Integer.valueOf(i15), "SQLiteEventStore", "%n is not valid. No matched LogEventDropped-Reason found. Treated it as REASON_UNKNOWN");
                        }
                        cVar = cVar3;
                    } else {
                        cVar = cVar3;
                    }
                    long j9 = cursor2.getLong(i11);
                    if (!map.containsKey(string4)) {
                        map.put(string4, new ArrayList());
                    }
                    ((List) map.get(string4)).add(new X2.d(j9, cVar));
                    i9 = 5;
                    i10 = 4;
                    i11 = 2;
                }
                for (Map.Entry entry2 : map.entrySet()) {
                    int i16 = X2.e.f7648c;
                    new ArrayList();
                    ((List) iVar3.f27225I).add(new X2.e((String) entry2.getKey(), Collections.unmodifiableList((List) entry2.getValue())));
                }
                long jA = ((p028d3.c) jVar.f9854H).a();
                SQLiteDatabase sQLiteDatabaseK = jVar.k();
                sQLiteDatabaseK.beginTransaction();
                try {
                    Cursor cursorRawQuery = sQLiteDatabaseK.rawQuery("SELECT last_metrics_upload_ms FROM global_log_event_state LIMIT 1", new String[0]);
                    try {
                        cursorRawQuery.moveToNext();
                        X2.g gVar = new X2.g(cursorRawQuery.getLong(0), jA);
                        cursorRawQuery.close();
                        sQLiteDatabaseK.setTransactionSuccessful();
                        sQLiteDatabaseK.endTransaction();
                        iVar3.f27224H = gVar;
                        iVar3.f27226J = new X2.b(new X2.f(jVar.k().compileStatement("PRAGMA page_size").simpleQueryForLong() * jVar.k().compileStatement("PRAGMA page_count").simpleQueryForLong(), p012b3.a.f9833f.f9834a));
                        iVar3.f27227K = (String) jVar.f9857K.get();
                        return new X2.a((X2.g) iVar3.f27224H, Collections.unmodifiableList((List) iVar3.f27225I), (X2.b) iVar3.f27226J, (String) iVar3.f27227K);
                    } catch (Throwable th) {
                        cursorRawQuery.close();
                        throw th;
                    }
                } catch (Throwable th2) {
                    sQLiteDatabaseK.endTransaction();
                    throw th2;
                }
        }
    }

    @Override // R0.n
    public final d0 d(int i8, g0 g0Var, int[] iArr) {
        R0.k kVar = (R0.k) this.f5021H;
        String str = (String) this.f5022I;
        String str2 = (String) this.f5023J;
        c0 c0Var = R0.q.f6232k;
        z4.E eQ = z4.H.q();
        for (int i9 = 0; i9 < g0Var.f26857a; i9++) {
            eQ.g0(new R0.m(i8, g0Var, i9, kVar, iArr[i9], str, str2));
        }
        return eQ.m0();
    }

    @Override // p020c3.b
    public final Object execute() {
        Z2.a aVar = (Z2.a) this.f5021H;
        U2.i iVar = (U2.i) this.f5022I;
        U2.h hVar = (U2.h) this.f5023J;
        p012b3.j jVar = (p012b3.j) aVar.f8229d;
        jVar.getClass();
        R2.c cVar = iVar.f6954c;
        String str = hVar.f6946a;
        String strO = E3.f.o("SQLiteEventStore");
        int i8 = 3;
        if (Log.isLoggable(strO, 3)) {
            Log.d(strO, "Storing event with priority=" + cVar + ", name=" + str + " for destination " + iVar.f6952a);
        }
        ((Long) jVar.N(new A(jVar, hVar, iVar, i8))).getClass();
        ((p004a3.d) aVar.f8226a).a(iVar, 1, false);
        return null;
    }

    @Override // p052g4.f
    public final void onSuccess(Object obj) {
        p022c5.b bVar = (p022c5.b) this.f5021H;
        V4.B b8 = (V4.B) this.f5023J;
        HashMap map = p022c5.b.f11424a;
        bVar.getClass();
        p022c5.b.a();
        throw null;
    }
}
