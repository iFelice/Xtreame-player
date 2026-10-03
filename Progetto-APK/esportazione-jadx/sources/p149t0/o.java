package p149t0;

import I0.u;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.util.SparseArray;
import com.google.android.gms.internal.measurement.H1;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import p086l.C3061x;
import p117p0.M;
import p133r0.a;
import p133r0.b;
import p133r0.c;

/* JADX INFO: loaded from: classes.dex */
public final class o implements q {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String[] f30224e = {"id", "key", "metadata"};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f30225a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SparseArray f30226b = new SparseArray();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f30227c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f30228d;

    public o(b bVar) {
        this.f30225a = bVar;
    }

    @Override // p149t0.q
    public final void a(HashMap map) throws u {
        try {
            SQLiteDatabase writableDatabase = this.f30225a.getWritableDatabase();
            writableDatabase.beginTransactionNonExclusive();
            try {
                j(writableDatabase);
                Iterator it = map.values().iterator();
                while (it.hasNext()) {
                    i(writableDatabase, (n) it.next());
                }
                writableDatabase.setTransactionSuccessful();
                this.f30226b.clear();
            } finally {
                writableDatabase.endTransaction();
            }
        } catch (SQLException e8) {
            throw new u(e8);
        }
    }

    @Override // p149t0.q
    public final void b(n nVar, boolean z7) {
        SparseArray sparseArray = this.f30226b;
        int i8 = nVar.f30219a;
        if (z7) {
            sparseArray.delete(i8);
        } else {
            sparseArray.put(i8, null);
        }
    }

    @Override // p149t0.q
    public final void c(n nVar) {
        this.f30226b.put(nVar.f30219a, nVar);
    }

    @Override // p149t0.q
    public final boolean d() throws u {
        try {
            SQLiteDatabase readableDatabase = this.f30225a.getReadableDatabase();
            String str = this.f30227c;
            str.getClass();
            return c.a(1, readableDatabase, str) != -1;
        } catch (SQLException e8) {
            throw new u(e8);
        }
    }

    @Override // p149t0.q
    public final void e(HashMap map) throws u {
        SparseArray sparseArray = this.f30226b;
        if (sparseArray.size() == 0) {
            return;
        }
        try {
            SQLiteDatabase writableDatabase = this.f30225a.getWritableDatabase();
            writableDatabase.beginTransactionNonExclusive();
            for (int i8 = 0; i8 < sparseArray.size(); i8++) {
                try {
                    n nVar = (n) sparseArray.valueAt(i8);
                    if (nVar == null) {
                        int iKeyAt = sparseArray.keyAt(i8);
                        String str = this.f30228d;
                        str.getClass();
                        writableDatabase.delete(str, "id = ?", new String[]{Integer.toString(iKeyAt)});
                    } else {
                        i(writableDatabase, nVar);
                    }
                } catch (Throwable th) {
                    writableDatabase.endTransaction();
                    throw th;
                }
            }
            writableDatabase.setTransactionSuccessful();
            sparseArray.clear();
            writableDatabase.endTransaction();
        } catch (SQLException e8) {
            throw new u(e8);
        }
    }

    @Override // p149t0.q
    public final void f(long j8) {
        String hexString = Long.toHexString(j8);
        this.f30227c = hexString;
        this.f30228d = p148t.a.c("ExoPlayerCacheIndex", hexString);
    }

    @Override // p149t0.q
    public final void g(HashMap map, SparseArray sparseArray) throws u {
        a aVar = this.f30225a;
        H1.i(this.f30226b.size() == 0);
        try {
            SQLiteDatabase readableDatabase = aVar.getReadableDatabase();
            String str = this.f30227c;
            str.getClass();
            if (c.a(1, readableDatabase, str) != 1) {
                SQLiteDatabase writableDatabase = aVar.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                try {
                    j(writableDatabase);
                    writableDatabase.setTransactionSuccessful();
                    writableDatabase.endTransaction();
                } catch (Throwable th) {
                    writableDatabase.endTransaction();
                    throw th;
                }
            }
            SQLiteDatabase readableDatabase2 = aVar.getReadableDatabase();
            String str2 = this.f30228d;
            str2.getClass();
            Cursor cursorQuery = readableDatabase2.query(str2, f30224e, null, null, null, null, null);
            while (cursorQuery.moveToNext()) {
                try {
                    int i8 = cursorQuery.getInt(0);
                    String string = cursorQuery.getString(1);
                    string.getClass();
                    map.put(string, new n(i8, string, C3061x.a(new DataInputStream(new ByteArrayInputStream(cursorQuery.getBlob(2))))));
                    sparseArray.put(i8, string);
                } catch (Throwable th2) {
                    if (cursorQuery != null) {
                        try {
                            cursorQuery.close();
                        } catch (Throwable th3) {
                            th2.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            }
            cursorQuery.close();
        } catch (SQLiteException e8) {
            map.clear();
            sparseArray.clear();
            throw new u(e8);
        }
    }

    @Override // p149t0.q
    public final void h() throws u {
        a aVar = this.f30225a;
        String str = this.f30227c;
        str.getClass();
        try {
            String strConcat = "ExoPlayerCacheIndex".concat(str);
            SQLiteDatabase writableDatabase = aVar.getWritableDatabase();
            writableDatabase.beginTransactionNonExclusive();
            try {
                int i8 = c.f29690a;
                try {
                    String str2 = M.f28050a;
                    if (DatabaseUtils.queryNumEntries(writableDatabase, "sqlite_master", "tbl_name = ?", new String[]{"ExoPlayerVersions"}) > 0) {
                        writableDatabase.delete("ExoPlayerVersions", "feature = ? AND instance_uid = ?", new String[]{Integer.toString(1), str});
                    }
                    writableDatabase.execSQL("DROP TABLE IF EXISTS " + strConcat);
                    writableDatabase.setTransactionSuccessful();
                    writableDatabase.endTransaction();
                } catch (SQLException e8) {
                    throw new u(e8);
                }
            } catch (Throwable th) {
                writableDatabase.endTransaction();
                throw th;
            }
        } catch (SQLException e9) {
            throw new u(e9);
        }
    }

    public final void i(SQLiteDatabase sQLiteDatabase, n nVar) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        C3061x.b(nVar.f30223e, new DataOutputStream(byteArrayOutputStream));
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        ContentValues contentValues = new ContentValues();
        contentValues.put("id", Integer.valueOf(nVar.f30219a));
        contentValues.put("key", nVar.f30220b);
        contentValues.put("metadata", byteArray);
        String str = this.f30228d;
        str.getClass();
        sQLiteDatabase.replaceOrThrow(str, null, contentValues);
    }

    public final void j(SQLiteDatabase sQLiteDatabase) throws u {
        String str = this.f30227c;
        str.getClass();
        c.b(sQLiteDatabase, 1, str);
        String str2 = this.f30228d;
        str2.getClass();
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS ".concat(str2));
        sQLiteDatabase.execSQL("CREATE TABLE " + this.f30228d + " (id INTEGER PRIMARY KEY NOT NULL,key TEXT NOT NULL,metadata BLOB NOT NULL)");
    }
}
