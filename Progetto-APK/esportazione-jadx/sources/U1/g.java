package U1;

import D0.U;
import android.content.Context;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import android.util.Pair;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class g extends SQLiteOpenHelper {

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public static final /* synthetic */ int f6910N = 0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f6911G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final U f6912H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final T1.c f6913I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final boolean f6914J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public boolean f6915K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final V1.a f6916L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public boolean f6917M;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(Context context, String str, final U u7, final T1.c cVar, boolean z7) {
        super(context, str, null, cVar.f6519a, new DatabaseErrorHandler() { // from class: U1.d
            @Override // android.database.DatabaseErrorHandler
            public final void onCorruption(SQLiteDatabase sQLiteDatabase) {
                q0.h(cVar, "$callback");
                U u8 = u7;
                q0.h(u8, "$dbRef");
                int i8 = g.f6910N;
                q0.g(sQLiteDatabase, "dbObj");
                c cVarH = f.h(u8, sQLiteDatabase);
                Log.e("SupportSQLite", "Corruption reported by sqlite on database: " + cVarH + ".path");
                SQLiteDatabase sQLiteDatabase2 = cVarH.f6903G;
                if (!sQLiteDatabase2.isOpen()) {
                    String path = sQLiteDatabase2.getPath();
                    if (path != null) {
                        T1.c.a(path);
                        return;
                    }
                    return;
                }
                List list = null;
                try {
                    try {
                        list = cVarH.f6904H;
                    } finally {
                        if (list != null) {
                            Iterator it = list.iterator();
                            while (it.hasNext()) {
                                Object obj = ((Pair) it.next()).second;
                                q0.g(obj, "p.second");
                                T1.c.a((String) obj);
                            }
                        } else {
                            String path2 = sQLiteDatabase2.getPath();
                            if (path2 != null) {
                                T1.c.a(path2);
                            }
                        }
                    }
                } catch (SQLiteException unused) {
                }
                try {
                    cVarH.close();
                } catch (IOException unused2) {
                }
                if (list != null) {
                    return;
                }
            }
        });
        q0.h(context, "context");
        q0.h(cVar, "callback");
        this.f6911G = context;
        this.f6912H = u7;
        this.f6913I = cVar;
        this.f6914J = z7;
        if (str == null) {
            str = UUID.randomUUID().toString();
            q0.g(str, "randomUUID().toString()");
        }
        File cacheDir = context.getCacheDir();
        q0.g(cacheDir, "context.cacheDir");
        this.f6916L = new V1.a(str, cacheDir, false);
    }

    public final c E(SQLiteDatabase sQLiteDatabase) {
        q0.h(sQLiteDatabase, "sqLiteDatabase");
        return f.h(this.f6912H, sQLiteDatabase);
    }

    public final SQLiteDatabase N(boolean z7) {
        if (z7) {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            q0.g(writableDatabase, "{\n                super.…eDatabase()\n            }");
            return writableDatabase;
        }
        SQLiteDatabase readableDatabase = getReadableDatabase();
        q0.g(readableDatabase, "{\n                super.…eDatabase()\n            }");
        return readableDatabase;
    }

    public final SQLiteDatabase O(boolean z7) throws Throwable {
        File parentFile;
        String databaseName = getDatabaseName();
        Context context = this.f6911G;
        if (databaseName != null && (parentFile = context.getDatabasePath(databaseName).getParentFile()) != null) {
            parentFile.mkdirs();
            if (!parentFile.isDirectory()) {
                Log.w("SupportSQLite", "Invalid database parent file, not a directory: " + parentFile);
            }
        }
        try {
            return N(z7);
        } catch (Throwable unused) {
            super.close();
            try {
                Thread.sleep(500L);
            } catch (InterruptedException unused2) {
            }
            try {
                return N(z7);
            } catch (Throwable th) {
                super.close();
                if (th instanceof e) {
                    e eVar = th;
                    int iB = p156u.h.b(eVar.f6907G);
                    Throwable th2 = eVar.f6908H;
                    if (iB == 0 || iB == 1 || iB == 2 || iB == 3 || !(th2 instanceof SQLiteException)) {
                        throw th2;
                    }
                } else if (!(th instanceof SQLiteException) || databaseName == null || !this.f6914J) {
                    throw th;
                }
                context.deleteDatabase(databaseName);
                try {
                    return N(z7);
                } catch (e e8) {
                    throw e8.f6908H;
                }
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper, java.lang.AutoCloseable
    public final void close() {
        V1.a aVar = this.f6916L;
        try {
            aVar.a(aVar.f7083a);
            super.close();
            this.f6912H.f1868H = null;
            this.f6917M = false;
        } finally {
            aVar.b();
        }
    }

    public final T1.b k(boolean z7) {
        V1.a aVar = this.f6916L;
        try {
            aVar.a((this.f6917M || getDatabaseName() == null) ? false : true);
            this.f6915K = false;
            SQLiteDatabase sQLiteDatabaseO = O(z7);
            if (!this.f6915K) {
                return E(sQLiteDatabaseO);
            }
            close();
            return k(z7);
        } finally {
            aVar.b();
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onConfigure(SQLiteDatabase sQLiteDatabase) {
        q0.h(sQLiteDatabase, "db");
        try {
            this.f6913I.c(E(sQLiteDatabase));
        } catch (Throwable th) {
            throw new e(1, th);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        q0.h(sQLiteDatabase, "sqLiteDatabase");
        try {
            this.f6913I.d(E(sQLiteDatabase));
        } catch (Throwable th) {
            throw new e(2, th);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i8, int i9) {
        q0.h(sQLiteDatabase, "db");
        this.f6915K = true;
        try {
            this.f6913I.e(E(sQLiteDatabase), i8, i9);
        } catch (Throwable th) {
            throw new e(4, th);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onOpen(SQLiteDatabase sQLiteDatabase) {
        q0.h(sQLiteDatabase, "db");
        if (!this.f6915K) {
            try {
                this.f6913I.f(E(sQLiteDatabase));
            } catch (Throwable th) {
                throw new e(5, th);
            }
        }
        this.f6917M = true;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i8, int i9) {
        q0.h(sQLiteDatabase, "sqLiteDatabase");
        this.f6915K = true;
        try {
            this.f6913I.g(E(sQLiteDatabase), i8, i9);
        } catch (Throwable th) {
            throw new e(3, th);
        }
    }
}
