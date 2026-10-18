package B0;

import android.util.Pair;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class B0 extends p094m0.f0 {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final /* synthetic */ int f684k = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f685b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final O0.X f686c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f687d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f688e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int[] f689f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int[] f690g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final p094m0.f0[] f691h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Object[] f692i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final HashMap f693j;

    public B0(p094m0.f0[] f0VarArr, Object[] objArr, O0.X x7) {
        this.f686c = x7;
        this.f685b = x7.f5166b.length;
        int length = f0VarArr.length;
        this.f691h = f0VarArr;
        this.f689f = new int[length];
        this.f690g = new int[length];
        this.f692i = objArr;
        this.f693j = new HashMap();
        int length2 = f0VarArr.length;
        int i8 = 0;
        int iP = 0;
        int i9 = 0;
        int i10 = 0;
        while (i8 < length2) {
            p094m0.f0 f0Var = f0VarArr[i8];
            this.f691h[i10] = f0Var;
            this.f690g[i10] = iP;
            this.f689f[i10] = i9;
            iP += f0Var.p();
            i9 += this.f691h[i10].i();
            this.f693j.put(objArr[i10], Integer.valueOf(i10));
            i8++;
            i10++;
        }
        this.f687d = iP;
        this.f688e = i9;
    }

    @Override // p094m0.f0
    public final int a(boolean z7) {
        if (this.f685b == 0) {
            return -1;
        }
        int iR = 0;
        if (z7) {
            int[] iArr = this.f686c.f5166b;
            iR = iArr.length > 0 ? iArr[0] : -1;
        }
        do {
            p094m0.f0[] f0VarArr = this.f691h;
            if (!f0VarArr[iR].q()) {
                return this.f690g[iR] + f0VarArr[iR].a(z7);
            }
            iR = r(iR, z7);
        } while (iR != -1);
        return -1;
    }

    @Override // p094m0.f0
    public final int b(Object obj) {
        int iB;
        if (!(obj instanceof Pair)) {
            return -1;
        }
        Pair pair = (Pair) obj;
        Object obj2 = pair.first;
        Object obj3 = pair.second;
        Integer num = (Integer) this.f693j.get(obj2);
        int iIntValue = num == null ? -1 : num.intValue();
        if (iIntValue == -1 || (iB = this.f691h[iIntValue].b(obj3)) == -1) {
            return -1;
        }
        return this.f689f[iIntValue] + iB;
    }

    @Override // p094m0.f0
    public final int c(boolean z7) {
        int iS;
        int i8 = this.f685b;
        if (i8 == 0) {
            return -1;
        }
        if (z7) {
            int[] iArr = this.f686c.f5166b;
            iS = iArr.length > 0 ? iArr[iArr.length - 1] : -1;
        } else {
            iS = i8 - 1;
        }
        do {
            p094m0.f0[] f0VarArr = this.f691h;
            if (!f0VarArr[iS].q()) {
                return this.f690g[iS] + f0VarArr[iS].c(z7);
            }
            iS = s(iS, z7);
        } while (iS != -1);
        return -1;
    }

    @Override // p094m0.f0
    public final int e(boolean z7, int i8, int i9) {
        int[] iArr = this.f690g;
        int iD = p117p0.M.d(iArr, i8 + 1, false, false);
        int i10 = iArr[iD];
        p094m0.f0[] f0VarArr = this.f691h;
        int iE = f0VarArr[iD].e(z7, i8 - i10, i9 != 2 ? i9 : 0);
        if (iE != -1) {
            return i10 + iE;
        }
        int iR = r(iD, z7);
        while (iR != -1 && f0VarArr[iR].q()) {
            iR = r(iR, z7);
        }
        if (iR != -1) {
            return f0VarArr[iR].a(z7) + iArr[iR];
        }
        if (i9 == 2) {
            return a(z7);
        }
        return -1;
    }

    @Override // p094m0.f0
    public final p094m0.d0 g(int i8, p094m0.d0 d0Var, boolean z7) {
        int[] iArr = this.f689f;
        int iD = p117p0.M.d(iArr, i8 + 1, false, false);
        int i9 = this.f690g[iD];
        this.f691h[iD].g(i8 - iArr[iD], d0Var, z7);
        d0Var.f26827c += i9;
        if (z7) {
            Object obj = this.f692i[iD];
            Object obj2 = d0Var.f26826b;
            obj2.getClass();
            d0Var.f26826b = Pair.create(obj, obj2);
        }
        return d0Var;
    }

    @Override // p094m0.f0
    public final p094m0.d0 h(Object obj, p094m0.d0 d0Var) {
        Pair pair = (Pair) obj;
        Object obj2 = pair.first;
        Object obj3 = pair.second;
        Integer num = (Integer) this.f693j.get(obj2);
        int iIntValue = num == null ? -1 : num.intValue();
        int i8 = this.f690g[iIntValue];
        this.f691h[iIntValue].h(obj3, d0Var);
        d0Var.f26827c += i8;
        d0Var.f26826b = obj;
        return d0Var;
    }

    @Override // p094m0.f0
    public final int i() {
        return this.f688e;
    }

    @Override // p094m0.f0
    public final int l(boolean z7, int i8, int i9) {
        int[] iArr = this.f690g;
        int iD = p117p0.M.d(iArr, i8 + 1, false, false);
        int i10 = iArr[iD];
        p094m0.f0[] f0VarArr = this.f691h;
        int iL = f0VarArr[iD].l(z7, i8 - i10, i9 != 2 ? i9 : 0);
        if (iL != -1) {
            return i10 + iL;
        }
        int iS = s(iD, z7);
        while (iS != -1 && f0VarArr[iS].q()) {
            iS = s(iS, z7);
        }
        if (iS != -1) {
            return f0VarArr[iS].c(z7) + iArr[iS];
        }
        if (i9 == 2) {
            return c(z7);
        }
        return -1;
    }

    @Override // p094m0.f0
    public final Object m(int i8) {
        int[] iArr = this.f689f;
        int iD = p117p0.M.d(iArr, i8 + 1, false, false);
        return Pair.create(this.f692i[iD], this.f691h[iD].m(i8 - iArr[iD]));
    }

    @Override // p094m0.f0
    public final p094m0.e0 n(int i8, p094m0.e0 e0Var, long j8) {
        int[] iArr = this.f690g;
        int iD = p117p0.M.d(iArr, i8 + 1, false, false);
        int i9 = iArr[iD];
        int i10 = this.f689f[iD];
        this.f691h[iD].n(i8 - i9, e0Var, j8);
        Object objCreate = this.f692i[iD];
        if (!p094m0.e0.f26832q.equals(e0Var.f26834a)) {
            objCreate = Pair.create(objCreate, e0Var.f26834a);
        }
        e0Var.f26834a = objCreate;
        e0Var.f26847n += i10;
        e0Var.f26848o += i10;
        return e0Var;
    }

    @Override // p094m0.f0
    public final int p() {
        return this.f687d;
    }

    public final int r(int i8, boolean z7) {
        if (!z7) {
            if (i8 < this.f685b - 1) {
                return i8 + 1;
            }
            return -1;
        }
        O0.X x7 = this.f686c;
        int i9 = x7.f5167c[i8] + 1;
        int[] iArr = x7.f5166b;
        if (i9 < iArr.length) {
            return iArr[i9];
        }
        return -1;
    }

    public final int s(int i8, boolean z7) {
        if (!z7) {
            if (i8 > 0) {
                return i8 - 1;
            }
            return -1;
        }
        O0.X x7 = this.f686c;
        int i9 = x7.f5167c[i8] - 1;
        if (i9 >= 0) {
            return x7.f5166b[i9];
        }
        return -1;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public B0(List list, O0.X x7) {
        p094m0.f0[] f0VarArr = new p094m0.f0[list.size()];
        Iterator it = list.iterator();
        int i8 = 0;
        int i9 = 0;
        while (it.hasNext()) {
            f0VarArr[i9] = ((InterfaceC0056j0) it.next()).b();
            i9++;
        }
        Object[] objArr = new Object[list.size()];
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            objArr[i8] = ((InterfaceC0056j0) it2.next()).a();
            i8++;
        }
        this(f0VarArr, objArr, x7);
    }
}
