package R0;

import B0.E0;
import com.google.android.gms.internal.measurement.H1;
import java.util.Objects;
import p094m0.m0;

/* JADX INFO: loaded from: classes.dex */
public final class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f6252a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final E0[] f6253b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final t[] f6254c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final m0 f6255d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f6256e;

    public y(E0[] e0Arr, t[] tVarArr, m0 m0Var, Object obj) {
        H1.d(e0Arr.length == tVarArr.length);
        this.f6253b = e0Arr;
        this.f6254c = (t[]) tVarArr.clone();
        this.f6255d = m0Var;
        this.f6256e = obj;
        this.f6252a = e0Arr.length;
    }

    public final boolean a(y yVar, int i8) {
        return yVar != null && Objects.equals(this.f6253b[i8], yVar.f6253b[i8]) && Objects.equals(this.f6254c[i8], yVar.f6254c[i8]);
    }

    public final boolean b(int i8) {
        return this.f6253b[i8] != null;
    }
}
