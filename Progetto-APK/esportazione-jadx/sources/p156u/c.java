package p156u;

import com.google.protobuf.U2;
import java.util.ArrayList;
import okhttp3.HttpUrl;
import p096m2.o;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final b f30333d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public i f30330a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f30331b = 0.0f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f30332c = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f30334e = false;

    public c(o oVar) {
        this.f30333d = new a(this, oVar);
    }

    public final void a(d dVar, int i8) {
        this.f30333d.j(dVar.j(i8), 1.0f);
        this.f30333d.j(dVar.j(i8), -1.0f);
    }

    public final void b(i iVar, i iVar2, i iVar3, int i8) {
        boolean z7;
        if (i8 != 0) {
            if (i8 < 0) {
                i8 *= -1;
                z7 = true;
            } else {
                z7 = false;
            }
            this.f30331b = i8;
            if (z7) {
                this.f30333d.j(iVar, 1.0f);
                this.f30333d.j(iVar2, -1.0f);
                this.f30333d.j(iVar3, -1.0f);
                return;
            }
        }
        this.f30333d.j(iVar, -1.0f);
        this.f30333d.j(iVar2, 1.0f);
        this.f30333d.j(iVar3, 1.0f);
    }

    public final void c(i iVar, i iVar2, i iVar3, int i8) {
        boolean z7;
        if (i8 != 0) {
            if (i8 < 0) {
                i8 *= -1;
                z7 = true;
            } else {
                z7 = false;
            }
            this.f30331b = i8;
            if (z7) {
                this.f30333d.j(iVar, 1.0f);
                this.f30333d.j(iVar2, -1.0f);
                this.f30333d.j(iVar3, 1.0f);
                return;
            }
        }
        this.f30333d.j(iVar, -1.0f);
        this.f30333d.j(iVar2, 1.0f);
        this.f30333d.j(iVar3, -1.0f);
    }

    public i d(boolean[] zArr) {
        return f(zArr, null);
    }

    public boolean e() {
        return this.f30330a == null && this.f30331b == 0.0f && this.f30333d.b() == 0;
    }

    public final i f(boolean[] zArr, i iVar) {
        int i8;
        int iB = this.f30333d.b();
        i iVar2 = null;
        float f8 = 0.0f;
        for (int i9 = 0; i9 < iB; i9++) {
            float f9 = this.f30333d.f(i9);
            if (f9 < 0.0f) {
                i iVarD = this.f30333d.d(i9);
                if ((zArr == null || !zArr[iVarD.f30363H]) && iVarD != iVar && (((i8 = iVarD.f30373R) == 3 || i8 == 4) && f9 < f8)) {
                    f8 = f9;
                    iVar2 = iVarD;
                }
            }
        }
        return iVar2;
    }

    public final void g(i iVar) {
        i iVar2 = this.f30330a;
        if (iVar2 != null) {
            this.f30333d.j(iVar2, -1.0f);
            this.f30330a.f30364I = -1;
            this.f30330a = null;
        }
        float fG = this.f30333d.g(iVar, true) * (-1.0f);
        this.f30330a = iVar;
        if (fG == 1.0f) {
            return;
        }
        this.f30331b /= fG;
        this.f30333d.k(fG);
    }

    public final void h(d dVar, i iVar, boolean z7) {
        if (iVar == null || !iVar.f30367L) {
            return;
        }
        float fI = this.f30333d.i(iVar);
        this.f30331b = (iVar.f30366K * fI) + this.f30331b;
        this.f30333d.g(iVar, z7);
        if (z7) {
            iVar.b(this);
        }
        if (this.f30333d.b() == 0) {
            this.f30334e = true;
            dVar.f30337b = true;
        }
    }

    public void i(d dVar, c cVar, boolean z7) {
        float fA = this.f30333d.a(cVar, z7);
        this.f30331b = (cVar.f30331b * fA) + this.f30331b;
        if (z7) {
            cVar.f30330a.b(this);
        }
        if (this.f30330a == null || this.f30333d.b() != 0) {
            return;
        }
        this.f30334e = true;
        dVar.f30337b = true;
    }

    public String toString() {
        boolean z7;
        String strA = U2.A(this.f30330a == null ? "0" : HttpUrl.FRAGMENT_ENCODE_SET + this.f30330a, " = ");
        if (this.f30331b != 0.0f) {
            StringBuilder sbO = U2.o(strA);
            sbO.append(this.f30331b);
            strA = sbO.toString();
            z7 = true;
        } else {
            z7 = false;
        }
        int iB = this.f30333d.b();
        for (int i8 = 0; i8 < iB; i8++) {
            i iVarD = this.f30333d.d(i8);
            if (iVarD != null) {
                float f8 = this.f30333d.f(i8);
                if (f8 != 0.0f) {
                    String string = iVarD.toString();
                    if (z7) {
                        if (f8 > 0.0f) {
                            strA = U2.A(strA, " + ");
                        } else {
                            strA = U2.A(strA, " - ");
                            f8 *= -1.0f;
                        }
                    } else if (f8 < 0.0f) {
                        strA = U2.A(strA, "- ");
                        f8 *= -1.0f;
                    }
                    strA = f8 == 1.0f ? U2.A(strA, string) : strA + f8 + " " + string;
                    z7 = true;
                }
            }
        }
        return !z7 ? U2.A(strA, "0.0") : strA;
    }
}
