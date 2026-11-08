package p004a3;

import B0.C0073x;
import C0.C0084i;
import U2.i;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.SystemClock;
import java.util.Objects;
import p012b3.d;
import p012b3.j;
import p020c3.a;
import p020c3.c;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ j f8663G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ i f8664H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ int f8665I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ Runnable f8666J;

    public /* synthetic */ f(j jVar, i iVar, int i8, Runnable runnable) {
        this.f8663G = jVar;
        this.f8664H = iVar;
        this.f8665I = i8;
        this.f8666J = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        SQLiteDatabase sQLiteDatabase;
        i iVar = this.f8664H;
        int i8 = this.f8665I;
        Runnable runnable = this.f8666J;
        j jVar = this.f8663G;
        m mVar = jVar.f8679d;
        c cVar = jVar.f8681f;
        try {
            try {
                d dVar = jVar.f8678c;
                Objects.requireNonNull(dVar);
                ((j) cVar).a0(new C0073x(dVar, 28));
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) jVar.f8676a.getSystemService("connectivity")).getActiveNetworkInfo();
                if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                    j jVar2 = (j) cVar;
                    SQLiteDatabase sQLiteDatabaseK = jVar2.k();
                    C0084i c0084i = new C0084i(12);
                    p028d3.c cVar2 = (p028d3.c) jVar2.f9855I;
                    long jA = cVar2.a();
                    while (true) {
                        try {
                            sQLiteDatabaseK.beginTransaction();
                            sQLiteDatabase = sQLiteDatabaseK;
                            break;
                        } catch (SQLiteDatabaseLockedException e8) {
                            sQLiteDatabase = sQLiteDatabaseK;
                            if (cVar2.a() >= ((long) jVar2.f9856J.f9836c) + jA) {
                                c0084i.apply(e8);
                                break;
                            } else {
                                SystemClock.sleep(50L);
                                sQLiteDatabaseK = sQLiteDatabase;
                            }
                        }
                    }
                    try {
                        ((d) mVar).a(iVar, i8 + 1, false);
                        sQLiteDatabase.setTransactionSuccessful();
                        sQLiteDatabase.endTransaction();
                    } catch (Throwable th) {
                        sQLiteDatabase.endTransaction();
                        throw th;
                    }
                } else {
                    jVar.a(iVar, i8);
                }
            } catch (a unused) {
                ((d) mVar).a(iVar, i8 + 1, false);
            }
            runnable.run();
        } catch (Throwable th2) {
            runnable.run();
            throw th2;
        }
    }
}
