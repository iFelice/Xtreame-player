package p149t0;

import I0.u;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import p133r0.a;
import p133r0.b;
import p133r0.c;

/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String[] f30207c = {"name", "length", "last_touch_timestamp"};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f30208a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f30209b;

    public j(b bVar) {
        this.f30208a = bVar;
    }

    public final HashMap a() throws u {
        try {
            this.f30209b.getClass();
            Cursor cursorQuery = this.f30208a.getReadableDatabase().query(this.f30209b, f30207c, null, null, null, null, null);
            try {
                HashMap map = new HashMap(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    String string = cursorQuery.getString(0);
                    string.getClass();
                    map.put(string, new i(cursorQuery.getLong(1), cursorQuery.getLong(2)));
                }
                cursorQuery.close();
                return map;
            } catch (Throwable th) {
                if (cursorQuery != null) {
                    try {
                        cursorQuery.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (SQLException e8) {
            throw new u(e8);
        }
    }

    public final void b(long j8) throws u {
        a aVar = this.f30208a;
        try {
            String hexString = Long.toHexString(j8);
            this.f30209b = "ExoPlayerCacheFileMetadata" + hexString;
            if (c.a(2, aVar.getReadableDatabase(), hexString) != 1) {
                SQLiteDatabase writableDatabase = aVar.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                try {
                    c.b(writableDatabase, 2, hexString);
                    writableDatabase.execSQL("DROP TABLE IF EXISTS " + this.f30209b);
                    writableDatabase.execSQL("CREATE TABLE " + this.f30209b + " (name TEXT PRIMARY KEY NOT NULL,length INTEGER NOT NULL,last_touch_timestamp INTEGER NOT NULL)");
                    writableDatabase.setTransactionSuccessful();
                } finally {
                    writableDatabase.endTransaction();
                }
            }
        } catch (SQLException e8) {
            throw new u(e8);
        }
    }

    public final void c(Set set) throws u {
        this.f30209b.getClass();
        try {
            SQLiteDatabase writableDatabase = this.f30208a.getWritableDatabase();
            writableDatabase.beginTransactionNonExclusive();
            try {
                Iterator it = set.iterator();
                while (it.hasNext()) {
                    writableDatabase.delete(this.f30209b, "name = ?", new String[]{(String) it.next()});
                }
                writableDatabase.setTransactionSuccessful();
            } finally {
                writableDatabase.endTransaction();
            }
        } catch (SQLException e8) {
            throw new u(e8);
        }
    }
}
