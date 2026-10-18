package p012b3;

import C0.o;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import p028d3.c;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class g implements h {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f9848G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ j f9849H;

    public /* synthetic */ g(j jVar, int i8) {
        this.f9848G = i8;
        this.f9849H = jVar;
    }

    @Override // p012b3.h
    public final Object apply(Object obj) {
        int i8 = this.f9848G;
        j jVar = this.f9849H;
        switch (i8) {
            case 0:
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                jVar.getClass();
                sQLiteDatabase.compileStatement("DELETE FROM log_event_dropped").execute();
                sQLiteDatabase.compileStatement("UPDATE global_log_event_state SET last_metrics_upload_ms=" + ((c) jVar.f9854H).a()).execute();
                break;
            case 1:
                Cursor cursor = (Cursor) obj;
                jVar.getClass();
                while (cursor.moveToNext()) {
                    jVar.N(new o(cursor.getString(1), cursor.getInt(0), X2.c.MESSAGE_TOO_OLD));
                }
                break;
            default:
                Cursor cursor2 = (Cursor) obj;
                jVar.getClass();
                while (cursor2.moveToNext()) {
                    jVar.N(new o(cursor2.getString(1), cursor2.getInt(0), X2.c.MAX_RETRIES_REACHED));
                }
                break;
        }
        return null;
    }
}
