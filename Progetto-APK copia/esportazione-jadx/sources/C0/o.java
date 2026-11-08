package C0;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class o implements p117p0.u, p020c3.b, p012b3.h {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ long f1315G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f1316H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Object f1317I;

    public /* synthetic */ o(Object obj, long j8, Object obj2) {
        this.f1316H = obj;
        this.f1317I = obj2;
        this.f1315G = j8;
    }

    @Override // p012b3.h
    public final Object apply(Object obj) {
        String str = (String) this.f1316H;
        X2.c cVar = (X2.c) this.f1317I;
        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
        R2.b bVar = p012b3.j.f9852L;
        boolean zBooleanValue = ((Boolean) p012b3.j.c0(sQLiteDatabase.rawQuery("SELECT 1 FROM log_event_dropped WHERE log_source = ? AND reason = ?", new String[]{str, Integer.toString(cVar.f7645G)}), new C0084i(19))).booleanValue();
        long j8 = this.f1315G;
        int i8 = cVar.f7645G;
        if (zBooleanValue) {
            sQLiteDatabase.execSQL("UPDATE log_event_dropped SET events_dropped_count = events_dropped_count + " + j8 + " WHERE log_source = ? AND reason = ?", new String[]{str, Integer.toString(i8)});
        } else {
            ContentValues contentValues = new ContentValues();
            contentValues.put("log_source", str);
            contentValues.put("reason", Integer.valueOf(i8));
            contentValues.put("events_dropped_count", Long.valueOf(j8));
            sQLiteDatabase.insert("log_event_dropped", null, contentValues);
        }
        return null;
    }

    @Override // p020c3.b
    public final Object execute() {
        p004a3.j jVar = (p004a3.j) this.f1316H;
        U2.i iVar = (U2.i) this.f1317I;
        long jA = ((p028d3.c) jVar.f8682g).a() + this.f1315G;
        p012b3.j jVar2 = (p012b3.j) jVar.f8678c;
        jVar2.getClass();
        jVar2.N(new y(jA, iVar));
        return null;
    }

    @Override // p117p0.u
    public final void invoke(Object obj) {
        ((InterfaceC0078c) obj).getClass();
    }
}
