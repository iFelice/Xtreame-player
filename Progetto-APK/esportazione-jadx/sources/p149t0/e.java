package p149t0;

import I0.u;
import android.content.ContentValues;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.support.v4.media.session.PlaybackStateCompat;
import com.google.android.gms.internal.measurement.H1;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import p117p0.M;
import p117p0.x;
import p141s0.C3188m;
import p148t.a;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b f30170a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f30171b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f30172c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public C3188m f30173d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f30174e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public File f30175f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public OutputStream f30176g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f30177h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f30178i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public t f30179j;

    public e(b bVar, long j8, int i8) {
        H1.h("fragmentSize must be positive or C.LENGTH_UNSET.", j8 > 0 || j8 == -1);
        if (j8 != -1 && j8 < PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE) {
            x.f("CacheDataSink", "fragmentSize is below the minimum recommended value of 2097152. This may cause poor cache performance.");
        }
        this.f30170a = bVar;
        this.f30171b = j8 == -1 ? Long.MAX_VALUE : j8;
        this.f30172c = i8;
    }

    public final void a() {
        OutputStream outputStream = this.f30176g;
        if (outputStream == null) {
            return;
        }
        try {
            outputStream.flush();
            M.g(this.f30176g);
            this.f30176g = null;
            File file = this.f30175f;
            this.f30175f = null;
            long j8 = this.f30177h;
            v vVar = (v) this.f30170a;
            synchronized (vVar) {
                if (file.exists()) {
                    if (j8 == 0) {
                        file.delete();
                        return;
                    }
                    w wVarA = w.a(file, j8, -9223372036854775807L, vVar.f30245c);
                    wVarA.getClass();
                    n nVarG = vVar.f30245c.g(wVarA.f30211G);
                    nVarG.getClass();
                    H1.i(nVarG.a(wVarA.f30212H, wVarA.f30213I));
                    long jA = a.a(nVarG.f30223e);
                    if (jA != -1) {
                        H1.i(wVarA.f30212H + wVarA.f30213I <= jA);
                    }
                    if (vVar.f30246d == null) {
                        vVar.b(wVarA);
                        vVar.f30245c.o();
                        vVar.notifyAll();
                        return;
                    }
                    String name = file.getName();
                    try {
                        j jVar = vVar.f30246d;
                        long j9 = wVarA.f30213I;
                        long j10 = wVarA.f30216L;
                        jVar.f30209b.getClass();
                        try {
                            SQLiteDatabase writableDatabase = jVar.f30208a.getWritableDatabase();
                            ContentValues contentValues = new ContentValues();
                            contentValues.put("name", name);
                            contentValues.put("length", Long.valueOf(j9));
                            contentValues.put("last_touch_timestamp", Long.valueOf(j10));
                            writableDatabase.replaceOrThrow(jVar.f30209b, null, contentValues);
                            vVar.b(wVarA);
                            try {
                                vVar.f30245c.o();
                                vVar.notifyAll();
                                return;
                            } catch (IOException e8) {
                                throw new a(e8);
                            }
                        } catch (SQLException e9) {
                            throw new u(e9);
                        }
                    } catch (IOException e10) {
                        throw new a(e10);
                    }
                    throw th;
                }
            }
        } catch (Throwable th) {
            M.g(this.f30176g);
            this.f30176g = null;
            File file2 = this.f30175f;
            this.f30175f = null;
            file2.delete();
            throw th;
        }
    }

    public final void b(C3188m c3188m) {
        File fileB;
        long j8 = c3188m.f29969g;
        long jMin = j8 != -1 ? Math.min(j8 - this.f30178i, this.f30174e) : -1L;
        b bVar = this.f30170a;
        String str = c3188m.f29970h;
        String str2 = M.f28050a;
        long j9 = c3188m.f29968f + this.f30178i;
        v vVar = (v) bVar;
        synchronized (vVar) {
            try {
                vVar.d();
                n nVarG = vVar.f30245c.g(str);
                nVarG.getClass();
                H1.i(nVarG.a(j9, jMin));
                if (!vVar.f30243a.exists()) {
                    v.e(vVar.f30243a);
                    vVar.k();
                }
                vVar.f30244b.getClass();
                File file = new File(vVar.f30243a, Integer.toString(vVar.f30248f.nextInt(10)));
                if (!file.exists()) {
                    v.e(file);
                }
                fileB = w.b(file, nVarG.f30219a, j9, System.currentTimeMillis());
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f30175f = fileB;
        FileOutputStream fileOutputStream = new FileOutputStream(this.f30175f);
        if (this.f30172c > 0) {
            t tVar = this.f30179j;
            if (tVar == null) {
                this.f30179j = new t(fileOutputStream, this.f30172c);
            } else {
                tVar.k(fileOutputStream);
            }
            this.f30176g = this.f30179j;
        } else {
            this.f30176g = fileOutputStream;
        }
        this.f30177h = 0L;
    }
}
