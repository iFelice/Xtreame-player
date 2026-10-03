package P1;

import android.database.sqlite.SQLiteProgram;
import java.util.List;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public class u implements T1.g {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f5835G = 1;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f5836H;

    public u(SQLiteProgram sQLiteProgram) {
        q0.h(sQLiteProgram, "delegate");
        this.f5836H = sQLiteProgram;
    }

    @Override // T1.g
    public final void A(int i8, byte[] bArr) {
        switch (this.f5835G) {
            case 0:
                k(i8, bArr);
                break;
            default:
                ((SQLiteProgram) this.f5836H).bindBlob(i8, bArr);
                break;
        }
    }

    @Override // T1.g
    public final void J(int i8) {
        switch (this.f5835G) {
            case 0:
                k(i8, null);
                break;
            default:
                ((SQLiteProgram) this.f5836H).bindNull(i8);
                break;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        switch (this.f5835G) {
            case 0:
                break;
            default:
                ((SQLiteProgram) this.f5836H).close();
                break;
        }
    }

    @Override // T1.g
    public final void g(int i8, String str) {
        switch (this.f5835G) {
            case 0:
                q0.h(str, "value");
                k(i8, str);
                break;
            default:
                q0.h(str, "value");
                ((SQLiteProgram) this.f5836H).bindString(i8, str);
                break;
        }
    }

    public final void k(int i8, Object obj) {
        int size;
        int i9 = i8 - 1;
        Object obj2 = this.f5836H;
        if (i9 >= ((List) obj2).size() && (size = ((List) obj2).size()) <= i9) {
            while (true) {
                ((List) obj2).add(null);
                if (size == i9) {
                    break;
                } else {
                    size++;
                }
            }
        }
        ((List) obj2).set(i9, obj);
    }

    @Override // T1.g
    public final void o(int i8, double d6) {
        switch (this.f5835G) {
            case 0:
                k(i8, Double.valueOf(d6));
                break;
            default:
                ((SQLiteProgram) this.f5836H).bindDouble(i8, d6);
                break;
        }
    }

    @Override // T1.g
    public final void w(int i8, long j8) {
        switch (this.f5835G) {
            case 0:
                k(i8, Long.valueOf(j8));
                break;
            default:
                ((SQLiteProgram) this.f5836H).bindLong(i8, j8);
                break;
        }
    }
}
