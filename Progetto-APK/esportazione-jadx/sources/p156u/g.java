package p156u;

import java.util.Arrays;
import p096m2.u;

/* JADX INFO: loaded from: classes.dex */
public final class g extends c {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public i[] f30357f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public i[] f30358g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f30359h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public u f30360i;

    @Override // p156u.c
    public final i d(boolean[] zArr) {
        int i8 = -1;
        for (int i9 = 0; i9 < this.f30359h; i9++) {
            i[] iVarArr = this.f30357f;
            i iVar = iVarArr[i9];
            if (!zArr[iVar.f30363H]) {
                u uVar = this.f30360i;
                uVar.f27278H = iVar;
                int i10 = 8;
                if (i8 != -1) {
                    i iVar2 = iVarArr[i8];
                    while (i10 >= 0) {
                        float f8 = iVar2.f30369N[i10];
                        float f9 = ((i) uVar.f27278H).f30369N[i10];
                        if (f9 != f8) {
                            if (f9 >= f8) {
                                break;
                            }
                            i8 = i9;
                            break;
                            break;
                        }
                        i10--;
                    }
                } else {
                    while (i10 >= 0) {
                        float f10 = ((i) uVar.f27278H).f30369N[i10];
                        if (f10 > 0.0f) {
                            break;
                        }
                        if (f10 < 0.0f) {
                            i8 = i9;
                            break;
                        }
                        i10--;
                    }
                }
            }
        }
        if (i8 == -1) {
            return null;
        }
        return this.f30357f[i8];
    }

    @Override // p156u.c
    public final boolean e() {
        return this.f30359h == 0;
    }

    @Override // p156u.c
    public final void i(d dVar, c cVar, boolean z7) {
        i iVar = cVar.f30330a;
        if (iVar == null) {
            return;
        }
        b bVar = cVar.f30333d;
        int iB = bVar.b();
        for (int i8 = 0; i8 < iB; i8++) {
            i iVarD = bVar.d(i8);
            float f8 = bVar.f(i8);
            u uVar = this.f30360i;
            uVar.f27278H = iVarD;
            boolean z8 = iVarD.f30362G;
            float[] fArr = iVar.f30369N;
            if (z8) {
                boolean z9 = true;
                for (int i9 = 0; i9 < 9; i9++) {
                    float[] fArr2 = ((i) uVar.f27278H).f30369N;
                    float f9 = (fArr[i9] * f8) + fArr2[i9];
                    fArr2[i9] = f9;
                    if (Math.abs(f9) < 1.0E-4f) {
                        ((i) uVar.f27278H).f30369N[i9] = 0.0f;
                    } else {
                        z9 = false;
                    }
                }
                if (z9) {
                    ((g) uVar.f27280J).k((i) uVar.f27278H);
                }
            } else {
                for (int i10 = 0; i10 < 9; i10++) {
                    float f10 = fArr[i10];
                    if (f10 != 0.0f) {
                        float f11 = f10 * f8;
                        if (Math.abs(f11) < 1.0E-4f) {
                            f11 = 0.0f;
                        }
                        ((i) uVar.f27278H).f30369N[i10] = f11;
                    } else {
                        ((i) uVar.f27278H).f30369N[i10] = 0.0f;
                    }
                }
                j(iVarD);
            }
            this.f30331b = (cVar.f30331b * f8) + this.f30331b;
        }
        k(iVar);
    }

    public final void j(i iVar) {
        int i8;
        int i9 = this.f30359h + 1;
        i[] iVarArr = this.f30357f;
        if (i9 > iVarArr.length) {
            i[] iVarArr2 = (i[]) Arrays.copyOf(iVarArr, iVarArr.length * 2);
            this.f30357f = iVarArr2;
            this.f30358g = (i[]) Arrays.copyOf(iVarArr2, iVarArr2.length * 2);
        }
        i[] iVarArr3 = this.f30357f;
        int i10 = this.f30359h;
        iVarArr3[i10] = iVar;
        int i11 = i10 + 1;
        this.f30359h = i11;
        if (i11 > 1 && iVarArr3[i10].f30363H > iVar.f30363H) {
            int i12 = 0;
            int i13 = 0;
            while (true) {
                i8 = this.f30359h;
                if (i13 >= i8) {
                    break;
                }
                this.f30358g[i13] = this.f30357f[i13];
                i13++;
            }
            Arrays.sort(this.f30358g, 0, i8, new f(this, i12));
            while (i12 < this.f30359h) {
                this.f30357f[i12] = this.f30358g[i12];
                i12++;
            }
        }
        iVar.f30362G = true;
        iVar.a(this);
    }

    public final void k(i iVar) {
        int i8 = 0;
        while (i8 < this.f30359h) {
            if (this.f30357f[i8] == iVar) {
                while (true) {
                    int i9 = this.f30359h;
                    if (i8 >= i9 - 1) {
                        this.f30359h = i9 - 1;
                        iVar.f30362G = false;
                        return;
                    } else {
                        i[] iVarArr = this.f30357f;
                        int i10 = i8 + 1;
                        iVarArr[i8] = iVarArr[i10];
                        i8 = i10;
                    }
                }
            } else {
                i8++;
            }
        }
    }

    @Override // p156u.c
    public final String toString() {
        String str = " goal -> (" + this.f30331b + ") : ";
        for (int i8 = 0; i8 < this.f30359h; i8++) {
            i iVar = this.f30357f[i8];
            u uVar = this.f30360i;
            uVar.f27278H = iVar;
            str = str + uVar + " ";
        }
        return str;
    }
}
