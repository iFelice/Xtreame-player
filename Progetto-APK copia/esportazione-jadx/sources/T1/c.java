package T1;

import I6.k;
import Q6.j;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import java.io.File;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f6519a;

    public c(int i8) {
        this.f6519a = i8;
    }

    public static void a(String str) {
        if (k.F0(str, ":memory:")) {
            return;
        }
        int length = str.length() - 1;
        int i8 = 0;
        boolean z7 = false;
        while (i8 <= length) {
            boolean z8 = q0.l(str.charAt(!z7 ? i8 : length), 32) <= 0;
            if (z7) {
                if (!z8) {
                    break;
                } else {
                    length--;
                }
            } else if (z8) {
                i8++;
            } else {
                z7 = true;
            }
        }
        if (str.subSequence(i8, length + 1).toString().length() == 0) {
            return;
        }
        Log.w("SupportSQLite", "deleting the database file: ".concat(str));
        try {
            SQLiteDatabase.deleteDatabase(new File(str));
        } catch (Exception e8) {
            Log.w("SupportSQLite", "delete failed: ", e8);
        }
    }

    public abstract int b(int i8);

    public abstract void c(U1.c cVar);

    public abstract void d(U1.c cVar);

    public abstract void e(U1.c cVar, int i8, int i9);

    public abstract void f(U1.c cVar);

    public abstract void g(U1.c cVar, int i8, int i9);

    public abstract int h();

    public abstract void i(int i8, boolean z7, j jVar);
}
