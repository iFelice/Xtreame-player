package Y1;

import com.google.android.gms.internal.measurement.H1;

/* JADX INFO: loaded from: classes.dex */
public abstract class k extends j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public G.d[] f8091a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f8092b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8093c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f8094d;

    public k() {
        this.f8091a = null;
        this.f8093c = 0;
    }

    public G.d[] getPathData() {
        return this.f8091a;
    }

    public String getPathName() {
        return this.f8092b;
    }

    public void setPathData(G.d[] dVarArr) {
        if (!H1.b(this.f8091a, dVarArr)) {
            this.f8091a = H1.n(dVarArr);
            return;
        }
        G.d[] dVarArr2 = this.f8091a;
        for (int i8 = 0; i8 < dVarArr.length; i8++) {
            dVarArr2[i8].f3281a = dVarArr[i8].f3281a;
            int i9 = 0;
            while (true) {
                float[] fArr = dVarArr[i8].f3282b;
                if (i9 < fArr.length) {
                    dVarArr2[i8].f3282b[i9] = fArr[i9];
                    i9++;
                }
            }
        }
    }

    public k(k kVar) {
        this.f8091a = null;
        this.f8093c = 0;
        this.f8092b = kVar.f8092b;
        this.f8094d = kVar.f8094d;
        this.f8091a = H1.n(kVar.f8091a);
    }
}
