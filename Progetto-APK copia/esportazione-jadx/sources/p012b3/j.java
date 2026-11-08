package p012b3;

import C0.C0084i;
import O0.A;
import R2.b;
import U2.i;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.os.SystemClock;
import android.util.Base64;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import p020c3.c;
import p028d3.a;

/* JADX INFO: loaded from: classes.dex */
public final class j implements d, c, c {

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final b f9852L = new b("proto");

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final m f9853G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final a f9854H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final a f9855I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final a f9856J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final p147s6.a f9857K;

    public j(a aVar, a aVar2, a aVar3, m mVar, p147s6.a aVar4) {
        this.f9853G = mVar;
        this.f9854H = aVar;
        this.f9855I = aVar2;
        this.f9856J = aVar3;
        this.f9857K = aVar4;
    }

    public static Long E(SQLiteDatabase sQLiteDatabase, i iVar) {
        StringBuilder sb = new StringBuilder("backend_name = ? and priority = ?");
        ArrayList arrayList = new ArrayList(Arrays.asList(iVar.f6952a, String.valueOf(p035e3.a.a(iVar.f6954c))));
        byte[] bArr = iVar.f6953b;
        if (bArr != null) {
            sb.append(" and extras = ?");
            arrayList.add(Base64.encodeToString(bArr, 0));
        } else {
            sb.append(" and extras is null");
        }
        return (Long) c0(sQLiteDatabase.query("transport_contexts", new String[]{"_id"}, sb.toString(), (String[]) arrayList.toArray(new String[0]), null, null, null), new C0084i(17));
    }

    public static String b0(Iterable iterable) {
        StringBuilder sb = new StringBuilder("(");
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            sb.append(((b) it.next()).f9839a);
            if (it.hasNext()) {
                sb.append(',');
            }
        }
        sb.append(')');
        return sb.toString();
    }

    public static Object c0(Cursor cursor, h hVar) {
        try {
            return hVar.apply(cursor);
        } finally {
            cursor.close();
        }
    }

    public final Object N(h hVar) {
        SQLiteDatabase sQLiteDatabaseK = k();
        sQLiteDatabaseK.beginTransaction();
        try {
            Object objApply = hVar.apply(sQLiteDatabaseK);
            sQLiteDatabaseK.setTransactionSuccessful();
            return objApply;
        } finally {
            sQLiteDatabaseK.endTransaction();
        }
    }

    public final ArrayList O(SQLiteDatabase sQLiteDatabase, i iVar, int i8) {
        ArrayList arrayList = new ArrayList();
        Long lE = E(sQLiteDatabase, iVar);
        if (lE == null) {
            return arrayList;
        }
        c0(sQLiteDatabase.query("events", new String[]{"_id", "transport_name", "timestamp_ms", "uptime_ms", "payload_encoding", "payload", "code", "inline"}, "context_id = ?", new String[]{lE.toString()}, null, null, null, String.valueOf(i8)), new A(this, arrayList, iVar, 5));
        return arrayList;
    }

    public final Object a0(p020c3.b bVar) {
        SQLiteDatabase sQLiteDatabaseK = k();
        C0084i c0084i = new C0084i(12);
        p028d3.c cVar = (p028d3.c) this.f9855I;
        long jA = cVar.a();
        while (true) {
            try {
                sQLiteDatabaseK.beginTransaction();
                break;
            } catch (SQLiteDatabaseLockedException e8) {
                if (cVar.a() >= ((long) this.f9856J.f9836c) + jA) {
                    c0084i.apply(e8);
                    break;
                }
                SystemClock.sleep(50L);
            }
        }
        try {
            Object objExecute = bVar.execute();
            sQLiteDatabaseK.setTransactionSuccessful();
            return objExecute;
        } finally {
            sQLiteDatabaseK.endTransaction();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f9853G.close();
    }

    public final SQLiteDatabase k() {
        Object objApply;
        m mVar = this.f9853G;
        Objects.requireNonNull(mVar);
        C0084i c0084i = new C0084i(13);
        p028d3.c cVar = (p028d3.c) this.f9855I;
        long jA = cVar.a();
        while (true) {
            try {
                objApply = mVar.getWritableDatabase();
                break;
            } catch (SQLiteDatabaseLockedException e8) {
                if (cVar.a() >= ((long) this.f9856J.f9836c) + jA) {
                    objApply = c0084i.apply(e8);
                    break;
                }
                SystemClock.sleep(50L);
            }
        }
        return (SQLiteDatabase) objApply;
    }
}
