package C0;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class y implements p117p0.u, p012b3.h {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f1333G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ long f1334H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Object f1335I;

    public /* synthetic */ y(long j8, U2.i iVar) {
        this.f1333G = 2;
        this.f1334H = j8;
        this.f1335I = iVar;
    }

    @Override // p012b3.h
    public final Object apply(Object obj) {
        int i8 = this.f1333G;
        long j8 = this.f1334H;
        Object obj2 = this.f1335I;
        switch (i8) {
            case 1:
                p012b3.j jVar = (p012b3.j) obj2;
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                R2.b bVar = p012b3.j.f9852L;
                jVar.getClass();
                String[] strArr = {String.valueOf(j8)};
                p012b3.j.c0(sQLiteDatabase.rawQuery("SELECT COUNT(*), transport_name FROM events WHERE timestamp_ms < ? GROUP BY transport_name", strArr), new p012b3.g(jVar, 1));
                return Integer.valueOf(sQLiteDatabase.delete("events", "timestamp_ms < ?", strArr));
            default:
                U2.i iVar = (U2.i) obj2;
                SQLiteDatabase sQLiteDatabase2 = (SQLiteDatabase) obj;
                R2.b bVar2 = p012b3.j.f9852L;
                ContentValues contentValues = new ContentValues();
                contentValues.put("next_request_ms", Long.valueOf(j8));
                String str = iVar.f6952a;
                R2.c cVar = iVar.f6954c;
                if (sQLiteDatabase2.update("transport_contexts", contentValues, "backend_name = ? and priority = ?", new String[]{str, String.valueOf(p035e3.a.a(cVar))}) < 1) {
                    contentValues.put("backend_name", iVar.f6952a);
                    contentValues.put("priority", Integer.valueOf(p035e3.a.a(cVar)));
                    sQLiteDatabase2.insert("transport_contexts", null, contentValues);
                }
                return null;
        }
    }

    @Override // p117p0.u
    public final void invoke(Object obj) {
        ((InterfaceC0078c) obj).getClass();
    }

    public /* synthetic */ y(Object obj, int i8, long j8) {
        this.f1333G = i8;
        this.f1335I = obj;
        this.f1334H = j8;
    }
}
