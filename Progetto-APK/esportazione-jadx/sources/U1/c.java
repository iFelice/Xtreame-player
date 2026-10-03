package U1;

import F2.G;
import P1.u;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import android.os.CancellationSignal;
import android.text.TextUtils;
import java.util.List;
import okhttp3.HttpUrl;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class c implements T1.b {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final String[] f6901I = {HttpUrl.FRAGMENT_ENCODE_SET, " OR ROLLBACK ", " OR ABORT ", " OR FAIL ", " OR IGNORE ", " OR REPLACE "};

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final String[] f6902J = new String[0];

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final SQLiteDatabase f6903G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final List f6904H;

    public c(SQLiteDatabase sQLiteDatabase) {
        q0.h(sQLiteDatabase, "delegate");
        this.f6903G = sQLiteDatabase;
        this.f6904H = sQLiteDatabase.getAttachedDbs();
    }

    @Override // T1.b
    public final void D() {
        this.f6903G.endTransaction();
    }

    public final Cursor E(String str) {
        q0.h(str, "query");
        return R(new T1.a(str));
    }

    @Override // T1.b
    public final boolean L() {
        return this.f6903G.inTransaction();
    }

    public final int N(String str, int i8, ContentValues contentValues, String str2, Object[] objArr) {
        q0.h(str, "table");
        q0.h(contentValues, "values");
        if (contentValues.size() == 0) {
            throw new IllegalArgumentException("Empty values".toString());
        }
        int size = contentValues.size();
        int length = objArr == null ? size : objArr.length + size;
        Object[] objArr2 = new Object[length];
        StringBuilder sb = new StringBuilder("UPDATE ");
        sb.append(f6901I[i8]);
        sb.append(str);
        sb.append(" SET ");
        int i9 = 0;
        for (String str3 : contentValues.keySet()) {
            sb.append(i9 > 0 ? "," : HttpUrl.FRAGMENT_ENCODE_SET);
            sb.append(str3);
            objArr2[i9] = contentValues.get(str3);
            sb.append("=?");
            i9++;
        }
        if (objArr != null) {
            for (int i10 = size; i10 < length; i10++) {
                objArr2[i10] = objArr[i10 - size];
            }
        }
        if (!TextUtils.isEmpty(str2)) {
            sb.append(" WHERE ");
            sb.append(str2);
        }
        String string = sb.toString();
        q0.g(string, "StringBuilder().apply(builderAction).toString()");
        T1.g gVarM = m(string);
        G.u((u) gVarM, objArr2);
        return ((i) gVarM).f6925I.executeUpdateDelete();
    }

    @Override // T1.b
    public final boolean P() {
        SQLiteDatabase sQLiteDatabase = this.f6903G;
        q0.h(sQLiteDatabase, "sQLiteDatabase");
        return sQLiteDatabase.isWriteAheadLoggingEnabled();
    }

    @Override // T1.b
    public final Cursor R(T1.h hVar) {
        Cursor cursorRawQueryWithFactory = this.f6903G.rawQueryWithFactory(new a(new b(hVar), 1), hVar.E(), f6902J, null);
        q0.g(cursorRawQueryWithFactory, "delegate.rawQueryWithFac…EMPTY_STRING_ARRAY, null)");
        return cursorRawQueryWithFactory;
    }

    @Override // T1.b
    public final void c() {
        this.f6903G.beginTransaction();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f6903G.close();
    }

    @Override // T1.b
    public final void f(String str) {
        q0.h(str, "sql");
        this.f6903G.execSQL(str);
    }

    @Override // T1.b
    public final boolean isOpen() {
        return this.f6903G.isOpen();
    }

    public final void k(String str, Object[] objArr) {
        q0.h(str, "sql");
        q0.h(objArr, "bindArgs");
        this.f6903G.execSQL(str, objArr);
    }

    @Override // T1.b
    public final T1.i m(String str) {
        q0.h(str, "sql");
        SQLiteStatement sQLiteStatementCompileStatement = this.f6903G.compileStatement(str);
        q0.g(sQLiteStatementCompileStatement, "delegate.compileStatement(sql)");
        return new i(sQLiteStatementCompileStatement);
    }

    @Override // T1.b
    public final void x() {
        this.f6903G.setTransactionSuccessful();
    }

    @Override // T1.b
    public final Cursor y(T1.h hVar, CancellationSignal cancellationSignal) {
        String strE = hVar.E();
        String[] strArr = f6902J;
        q0.e(cancellationSignal);
        a aVar = new a(hVar, 0);
        SQLiteDatabase sQLiteDatabase = this.f6903G;
        q0.h(sQLiteDatabase, "sQLiteDatabase");
        q0.h(strE, "sql");
        Cursor cursorRawQueryWithFactory = sQLiteDatabase.rawQueryWithFactory(aVar, strE, strArr, null, cancellationSignal);
        q0.g(cursorRawQueryWithFactory, "sQLiteDatabase.rawQueryW…ationSignal\n            )");
        return cursorRawQueryWithFactory;
    }

    @Override // T1.b
    public final void z() {
        this.f6903G.beginTransactionNonExclusive();
    }
}
