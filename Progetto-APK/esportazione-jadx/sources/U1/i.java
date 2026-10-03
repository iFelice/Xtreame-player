package U1;

import P1.u;
import android.database.sqlite.SQLiteStatement;

/* JADX INFO: loaded from: classes.dex */
public final class i extends u implements T1.i {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final SQLiteStatement f6925I;

    public i(SQLiteStatement sQLiteStatement) {
        super(sQLiteStatement);
        this.f6925I = sQLiteStatement;
    }

    @Override // T1.i
    public final long W() {
        return this.f6925I.executeInsert();
    }

    @Override // T1.i
    public final int l() {
        return this.f6925I.executeUpdateDelete();
    }
}
