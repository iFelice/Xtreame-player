package K3;

/* JADX INFO: renamed from: K3.s, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0245s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final J3.d[] f4572a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f4573b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f4574c;

    public AbstractC0245s(J3.d[] dVarArr, boolean z7, int i8) {
        this.f4572a = dVarArr;
        boolean z8 = false;
        if (dVarArr != null && z7) {
            z8 = true;
        }
        this.f4573b = z8;
        this.f4574c = i8;
    }

    public static r a() {
        r rVar = new r();
        rVar.f4569b = true;
        rVar.f4568a = 0;
        return rVar;
    }
}
