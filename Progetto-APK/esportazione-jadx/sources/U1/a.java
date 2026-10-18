package U1;

import P1.u;
import android.database.Cursor;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQuery;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements SQLiteDatabase.CursorFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6898a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f6899b;

    public /* synthetic */ a(Object obj, int i8) {
        this.f6898a = i8;
        this.f6899b = obj;
    }

    @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
    public final Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
        int i8 = this.f6898a;
        Object obj = this.f6899b;
        switch (i8) {
            case 0:
                T1.h hVar = (T1.h) obj;
                q0.h(hVar, "$query");
                q0.e(sQLiteQuery);
                hVar.k(new u(sQLiteQuery));
                break;
            default:
                b bVar = (b) obj;
                q0.h(bVar, "$tmp0");
                q0.e(sQLiteQuery);
                bVar.f6900G.k(new u(sQLiteQuery));
                break;
        }
        return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
    }
}
