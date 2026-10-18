package p021c4;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.os.SystemClock;

/* JADX INFO: loaded from: classes.dex */
public final class N extends B {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final String[] f10957K = {"app_version", "ALTER TABLE messages ADD COLUMN app_version TEXT;", "app_version_int", "ALTER TABLE messages ADD COLUMN app_version_int INTEGER;"};

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final C0600n f10958I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public boolean f10959J;

    public N(C0597l0 c0597l0) {
        super(c0597l0);
        C0597l0 c0597l1 = (C0597l0) this.f10616G;
        Context context = c0597l1.f11250G;
        c0597l1.getClass();
        this.f10958I = new C0600n(this, context);
    }

    @Override // p021c4.B
    public final boolean p() {
        return false;
    }

    public final SQLiteDatabase q() {
        if (this.f10959J) {
            return null;
        }
        SQLiteDatabase writableDatabase = this.f10958I.getWritableDatabase();
        if (writableDatabase != null) {
            return writableDatabase;
        }
        this.f10959J = true;
        return null;
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 9531. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    public final java.util.ArrayList r() {
        /*
            Method dump skipped, instruction units count: 953
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: p021c4.N.r():java.util.ArrayList");
    }

    public final void s() {
        int iDelete;
        m();
        try {
            SQLiteDatabase sQLiteDatabaseQ = q();
            if (sQLiteDatabaseQ == null || (iDelete = sQLiteDatabaseQ.delete("messages", null, null)) <= 0) {
                return;
            }
            T t7 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t7);
            t7.f11047T.b(Integer.valueOf(iDelete), "Reset local analytics data. records");
        } catch (SQLiteException e8) {
            T t8 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t8);
            t8.f11039L.b(e8, "Error resetting local analytics data. error");
        }
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0078 A[PHI: r4
      0x0078: PHI (r4v3 int) = (r4v1 int), (r4v1 int), (r4v4 int) binds: [B:28:0x006f, B:34:0x008c, B:31:0x0076] A[DONT_GENERATE, DONT_INLINE]] */
    public final boolean t() {
        m();
        if (!this.f10959J && ((C0597l0) this.f10616G).f11250G.getDatabasePath("google_app_measurement_local.db").exists()) {
            int i8 = 5;
            for (int i9 = 0; i9 < 5; i9++) {
                SQLiteDatabase sQLiteDatabase = null;
                try {
                    SQLiteDatabase sQLiteDatabaseQ = q();
                    if (sQLiteDatabaseQ != null) {
                        sQLiteDatabaseQ.beginTransaction();
                        sQLiteDatabaseQ.delete("messages", "type == ?", new String[]{Integer.toString(3)});
                        sQLiteDatabaseQ.setTransactionSuccessful();
                        sQLiteDatabaseQ.endTransaction();
                        sQLiteDatabaseQ.close();
                        return true;
                    }
                    this.f10959J = true;
                } catch (SQLiteDatabaseLockedException unused) {
                    SystemClock.sleep(i8);
                    i8 += 20;
                    if (0 != 0) {
                        sQLiteDatabase.close();
                    }
                } catch (SQLiteFullException e8) {
                    T t7 = ((C0597l0) this.f10616G).f11258O;
                    C0597l0.k(t7);
                    t7.f11039L.b(e8, "Error deleting app launch break from local database");
                    this.f10959J = true;
                    if (0 != 0) {
                        sQLiteDatabase.close();
                    }
                } catch (SQLiteException e9) {
                    if (0 != 0) {
                        try {
                            if (sQLiteDatabase.inTransaction()) {
                                sQLiteDatabase.endTransaction();
                            }
                        } catch (Throwable th) {
                            if (0 != 0) {
                                sQLiteDatabase.close();
                            }
                            throw th;
                        }
                    }
                    T t8 = ((C0597l0) this.f10616G).f11258O;
                    C0597l0.k(t8);
                    t8.f11039L.b(e9, "Error deleting app launch break from local database");
                    this.f10959J = true;
                    if (0 != 0) {
                        sQLiteDatabase.close();
                    }
                }
            }
            T t9 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t9);
            t9.f11042O.a("Error deleting app launch break from local database in reasonable time");
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:75:0x0129 A[PHI: r8 r10
      0x0129: PHI (r8v5 int) = (r8v3 int), (r8v3 int), (r8v6 int) binds: [B:66:0x0117, B:81:0x0147, B:74:0x0127] A[DONT_GENERATE, DONT_INLINE]
      0x0129: PHI (r10v8 android.database.sqlite.SQLiteDatabase) = 
      (r10v6 android.database.sqlite.SQLiteDatabase)
      (r10v7 android.database.sqlite.SQLiteDatabase)
      (r10v9 android.database.sqlite.SQLiteDatabase)
     binds: [B:66:0x0117, B:81:0x0147, B:74:0x0127] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:85:0x0152  */
    /* JADX WARN: Code duplicated, block: B:87:0x0157  */
    public final boolean u(int i8, byte[] bArr) {
        SQLiteDatabase sQLiteDatabaseQ;
        Cursor cursorRawQuery;
        m();
        boolean z7 = false;
        z7 = false;
        if (!this.f10959J) {
            C0597l0 c0597l0 = (C0597l0) this.f10616G;
            C0584h c0584h = c0597l0.f11256M;
            T t7 = c0597l0.f11258O;
            D d6 = E.f10802m1;
            Cursor cursor = null;
            cursor = null;
            J1 j1R = c0584h.B(null, d6) ? ((C0597l0) this.f10616G).n().r(null) : null;
            ContentValues contentValues = new ContentValues();
            contentValues.put("type", Integer.valueOf(i8));
            contentValues.put("entry", bArr);
            if (c0597l0.f11256M.B(null, d6) && j1R != null) {
                contentValues.put("app_version", j1R.f10878I);
                contentValues.put("app_version_int", Long.valueOf(j1R.f10885P));
            }
            int i9 = 0;
            int i10 = 5;
            for (int i11 = 5; i9 < i11; i11 = 5) {
                try {
                    sQLiteDatabaseQ = q();
                    if (sQLiteDatabaseQ == null) {
                        this.f10959J = true;
                    } else {
                        try {
                            sQLiteDatabaseQ.beginTransaction();
                            cursorRawQuery = sQLiteDatabaseQ.rawQuery("select count(1) from messages", null);
                            long j8 = 0;
                            if (cursorRawQuery != null) {
                                try {
                                    if (cursorRawQuery.moveToFirst()) {
                                        j8 = cursorRawQuery.getLong(z7 ? 1 : 0);
                                    }
                                } catch (SQLiteDatabaseLockedException unused) {
                                    SystemClock.sleep(i10);
                                    i10 += 20;
                                    if (cursorRawQuery != null) {
                                        cursorRawQuery.close();
                                    }
                                    if (sQLiteDatabaseQ != null) {
                                        sQLiteDatabaseQ.close();
                                    }
                                    i9++;
                                    z7 = false;
                                } catch (SQLiteFullException e8) {
                                    e = e8;
                                    T t8 = ((C0597l0) this.f10616G).f11258O;
                                    C0597l0.k(t8);
                                    t8.f11039L.b(e, "Error writing entry; local database full");
                                    this.f10959J = true;
                                    if (cursorRawQuery != null) {
                                        cursorRawQuery.close();
                                    }
                                    if (sQLiteDatabaseQ != null) {
                                        sQLiteDatabaseQ.close();
                                    }
                                    i9++;
                                    z7 = false;
                                } catch (SQLiteException e9) {
                                    e = e9;
                                    if (sQLiteDatabaseQ != null) {
                                        try {
                                            if (sQLiteDatabaseQ.inTransaction()) {
                                                sQLiteDatabaseQ.endTransaction();
                                            }
                                        } catch (Throwable th) {
                                            th = th;
                                            cursor = cursorRawQuery;
                                            if (cursor != null) {
                                                cursor.close();
                                            }
                                            if (sQLiteDatabaseQ != null) {
                                                sQLiteDatabaseQ.close();
                                            }
                                            throw th;
                                        }
                                    }
                                    T t9 = ((C0597l0) this.f10616G).f11258O;
                                    C0597l0.k(t9);
                                    t9.f11039L.b(e, "Error writing entry to local database");
                                    this.f10959J = true;
                                    if (cursorRawQuery != null) {
                                        cursorRawQuery.close();
                                    }
                                    if (sQLiteDatabaseQ != null) {
                                        sQLiteDatabaseQ.close();
                                    }
                                    i9++;
                                    z7 = false;
                                }
                            }
                            if (j8 >= 100000) {
                                C0597l0.k(t7);
                                Q q7 = t7.f11039L;
                                q7.a("Data loss, local db full");
                                String[] strArr = new String[1];
                                long j9 = 100001 - j8;
                                strArr[z7 ? 1 : 0] = Long.toString(j9);
                                long jDelete = sQLiteDatabaseQ.delete("messages", "rowid in (select rowid from messages order by rowid asc limit ?)", strArr);
                                if (jDelete != j9) {
                                    C0597l0.k(t7);
                                    q7.d(Long.valueOf(j9), Long.valueOf(jDelete), Long.valueOf(j9 - jDelete), "Different delete count than expected in local db. expected, received, difference");
                                }
                            }
                            sQLiteDatabaseQ.insertOrThrow("messages", null, contentValues);
                            sQLiteDatabaseQ.setTransactionSuccessful();
                            sQLiteDatabaseQ.endTransaction();
                            if (cursorRawQuery != null) {
                                cursorRawQuery.close();
                            }
                            sQLiteDatabaseQ.close();
                            return true;
                        } catch (SQLiteDatabaseLockedException unused2) {
                            cursorRawQuery = null;
                        } catch (SQLiteFullException e10) {
                            e = e10;
                            cursorRawQuery = null;
                        } catch (SQLiteException e11) {
                            e = e11;
                            cursorRawQuery = null;
                        } catch (Throwable th2) {
                            th = th2;
                            if (cursor != null) {
                                cursor.close();
                            }
                            if (sQLiteDatabaseQ != null) {
                                sQLiteDatabaseQ.close();
                            }
                            throw th;
                        }
                    }
                } catch (SQLiteDatabaseLockedException unused3) {
                    sQLiteDatabaseQ = null;
                    cursorRawQuery = null;
                } catch (SQLiteFullException e12) {
                    e = e12;
                    sQLiteDatabaseQ = null;
                    cursorRawQuery = null;
                } catch (SQLiteException e13) {
                    e = e13;
                    sQLiteDatabaseQ = null;
                    cursorRawQuery = null;
                } catch (Throwable th3) {
                    th = th3;
                    sQLiteDatabaseQ = null;
                }
            }
            T t10 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t10);
            t10.f11047T.a("Failed to write entry to local database");
            return false;
        }
        return z7;
    }
}
