package O1;

import W0.C0371d;
import android.view.View;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class o0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5467a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f5468b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f5469c;

    public o0(int i8) {
        this.f5467a = i8;
        if (i8 != 1) {
            this.f5468b = new p132r.m(0);
            this.f5469c = new p132r.j();
        }
    }

    public final void a(c0 c0Var) {
        n0 n0VarA = (n0) ((p132r.m) this.f5468b).get(c0Var);
        if (n0VarA == null) {
            n0VarA = n0.a();
            ((p132r.m) this.f5468b).put(c0Var, n0VarA);
        }
        n0VarA.f5463a |= 1;
    }

    public final void b(c0 c0Var, p072j0.c cVar) {
        n0 n0VarA = (n0) ((p132r.m) this.f5468b).get(c0Var);
        if (n0VarA == null) {
            n0VarA = n0.a();
            ((p132r.m) this.f5468b).put(c0Var, n0VarA);
        }
        n0VarA.f5465c = cVar;
        n0VarA.f5463a |= 8;
    }

    public final void c(c0 c0Var, p072j0.c cVar) {
        n0 n0VarA = (n0) ((p132r.m) this.f5468b).get(c0Var);
        if (n0VarA == null) {
            n0VarA = n0.a();
            ((p132r.m) this.f5468b).put(c0Var, n0VarA);
        }
        n0VarA.f5464b = cVar;
        n0VarA.f5463a |= 4;
    }

    public final void d() {
        switch (this.f5467a) {
            case 0:
                ((p132r.m) this.f5468b).clear();
                ((p132r.j) this.f5469c).b();
                break;
            default:
                int[] iArr = (int[]) this.f5468b;
                if (iArr != null) {
                    Arrays.fill(iArr, -1);
                }
                this.f5469c = null;
                break;
        }
    }

    public final void e(int i8) {
        Object obj = this.f5468b;
        if (((int[]) obj) == null) {
            int[] iArr = new int[Math.max(i8, 10) + 1];
            this.f5468b = iArr;
            Arrays.fill(iArr, -1);
        } else if (i8 >= ((int[]) obj).length) {
            int[] iArr2 = (int[]) obj;
            int length = ((int[]) obj).length;
            while (length <= i8) {
                length *= 2;
            }
            int[] iArr3 = new int[length];
            this.f5468b = iArr3;
            System.arraycopy(iArr2, 0, iArr3, 0, iArr2.length);
            Object obj2 = this.f5468b;
            Arrays.fill((int[]) obj2, iArr2.length, ((int[]) obj2).length, -1);
        }
    }

    public final View f(int i8, int i9, int i10, int i11) {
        int iJ;
        int i12;
        int iK;
        View viewW;
        J j8 = (J) ((m0) this.f5468b);
        int i13 = j8.f5273G;
        Object obj = j8.f5274H;
        switch (i13) {
            case 0:
                iJ = ((L) obj).J();
                break;
            default:
                iJ = ((L) obj).L();
                break;
        }
        J j9 = (J) ((m0) this.f5468b);
        int i14 = j9.f5273G;
        Object obj2 = j9.f5274H;
        switch (i14) {
            case 0:
                L l4 = (L) obj2;
                i12 = l4.f5292n;
                iK = l4.K();
                break;
            default:
                L l8 = (L) obj2;
                i12 = l8.f5293o;
                iK = l8.I();
                break;
        }
        int i15 = i12 - iK;
        int i16 = i9 > i8 ? 1 : -1;
        View view = null;
        while (i8 != i9) {
            J j10 = (J) ((m0) this.f5468b);
            int i17 = j10.f5273G;
            Object obj3 = j10.f5274H;
            switch (i17) {
                case 0:
                    viewW = ((L) obj3).w(i8);
                    break;
                default:
                    viewW = ((L) obj3).w(i8);
                    break;
            }
            int iD = ((J) ((m0) this.f5468b)).d(viewW);
            int iB = ((J) ((m0) this.f5468b)).b(viewW);
            Object obj4 = this.f5469c;
            C0371d c0371d = (C0371d) obj4;
            c0371d.f7389c = iJ;
            c0371d.f7390d = i15;
            c0371d.f7391e = iD;
            c0371d.f7392f = iB;
            if (i10 != 0) {
                ((C0371d) obj4).f7388b = i10;
                if (((C0371d) obj4).a()) {
                    return viewW;
                }
            }
            if (i11 != 0) {
                Object obj5 = this.f5469c;
                ((C0371d) obj5).f7388b = i11;
                if (((C0371d) obj5).a()) {
                    view = viewW;
                }
            }
            i8 += i16;
        }
        return view;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0013  */
    public final int g(int i8) {
        int i9;
        int[] iArr = (int[]) this.f5468b;
        if (iArr == null || i8 >= iArr.length) {
            return -1;
        }
        Object obj = this.f5469c;
        if (((List) obj) == null) {
            i9 = -1;
        } else {
            List list = (List) obj;
            j0 j0Var = null;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    j0 j0Var2 = (j0) ((List) this.f5469c).get(size);
                    if (j0Var2.f5431G == i8) {
                        j0Var = j0Var2;
                        break;
                    }
                }
            }
            if (j0Var != null) {
                ((List) this.f5469c).remove(j0Var);
            }
            int size2 = ((List) this.f5469c).size();
            int i10 = 0;
            while (true) {
                if (i10 >= size2) {
                    i10 = -1;
                    break;
                }
                if (((j0) ((List) this.f5469c).get(i10)).f5431G >= i8) {
                    break;
                }
                i10++;
            }
            if (i10 != -1) {
                j0 j0Var3 = (j0) ((List) this.f5469c).get(i10);
                ((List) this.f5469c).remove(i10);
                i9 = j0Var3.f5431G;
            } else {
                i9 = -1;
            }
        }
        if (i9 == -1) {
            int[] iArr2 = (int[]) this.f5468b;
            Arrays.fill(iArr2, i8, iArr2.length, -1);
            return ((int[]) this.f5468b).length;
        }
        int iMin = Math.min(i9 + 1, ((int[]) this.f5468b).length);
        Arrays.fill((int[]) this.f5468b, i8, iMin, -1);
        return iMin;
    }

    public final boolean h(View view) {
        int iJ;
        int i8;
        int iK;
        C0371d c0371d = (C0371d) this.f5469c;
        J j8 = (J) ((m0) this.f5468b);
        int i9 = j8.f5273G;
        Object obj = j8.f5274H;
        switch (i9) {
            case 0:
                iJ = ((L) obj).J();
                break;
            default:
                iJ = ((L) obj).L();
                break;
        }
        J j9 = (J) ((m0) this.f5468b);
        int i10 = j9.f5273G;
        Object obj2 = j9.f5274H;
        switch (i10) {
            case 0:
                L l4 = (L) obj2;
                i8 = l4.f5292n;
                iK = l4.K();
                break;
            default:
                L l8 = (L) obj2;
                i8 = l8.f5293o;
                iK = l8.I();
                break;
        }
        int i11 = i8 - iK;
        int iD = ((J) ((m0) this.f5468b)).d(view);
        int iB = ((J) ((m0) this.f5468b)).b(view);
        c0371d.f7389c = iJ;
        c0371d.f7390d = i11;
        c0371d.f7391e = iD;
        c0371d.f7392f = iB;
        Object obj3 = this.f5469c;
        ((C0371d) obj3).f7388b = 24579;
        return ((C0371d) obj3).a();
    }

    public final void i(int i8, int i9) {
        int[] iArr = (int[]) this.f5468b;
        if (iArr == null || i8 >= iArr.length) {
            return;
        }
        int i10 = i8 + i9;
        e(i10);
        int[] iArr2 = (int[]) this.f5468b;
        System.arraycopy(iArr2, i8, iArr2, i10, (iArr2.length - i8) - i9);
        Arrays.fill((int[]) this.f5468b, i8, i10, -1);
        List list = (List) this.f5469c;
        if (list == null) {
            return;
        }
        for (int size = list.size() - 1; size >= 0; size--) {
            j0 j0Var = (j0) ((List) this.f5469c).get(size);
            int i11 = j0Var.f5431G;
            if (i11 >= i8) {
                j0Var.f5431G = i11 + i9;
            }
        }
    }

    public final void j(int i8, int i9) {
        int[] iArr = (int[]) this.f5468b;
        if (iArr == null || i8 >= iArr.length) {
            return;
        }
        int i10 = i8 + i9;
        e(i10);
        int[] iArr2 = (int[]) this.f5468b;
        System.arraycopy(iArr2, i10, iArr2, i8, (iArr2.length - i8) - i9);
        int[] iArr3 = (int[]) this.f5468b;
        Arrays.fill(iArr3, iArr3.length - i9, iArr3.length, -1);
        List list = (List) this.f5469c;
        if (list == null) {
            return;
        }
        for (int size = list.size() - 1; size >= 0; size--) {
            j0 j0Var = (j0) ((List) this.f5469c).get(size);
            int i11 = j0Var.f5431G;
            if (i11 >= i8) {
                if (i11 < i10) {
                    ((List) this.f5469c).remove(size);
                } else {
                    j0Var.f5431G = i11 - i9;
                }
            }
        }
    }

    public final p072j0.c k(c0 c0Var, int i8) {
        n0 n0Var;
        p072j0.c cVar;
        int iD = ((p132r.m) this.f5468b).d(c0Var);
        if (iD >= 0 && (n0Var = (n0) ((p132r.m) this.f5468b).j(iD)) != null) {
            int i9 = n0Var.f5463a;
            if ((i9 & i8) != 0) {
                int i10 = i9 & (~i8);
                n0Var.f5463a = i10;
                if (i8 == 4) {
                    cVar = n0Var.f5464b;
                } else {
                    if (i8 != 8) {
                        throw new IllegalArgumentException("Must provide flag PRE or POST");
                    }
                    cVar = n0Var.f5465c;
                }
                if ((i10 & 12) == 0) {
                    ((p132r.m) this.f5468b).h(iD);
                    n0Var.f5463a = 0;
                    n0Var.f5464b = null;
                    n0Var.f5465c = null;
                    n0.f5462d.a(n0Var);
                }
                return cVar;
            }
        }
        return null;
    }

    public final void l(c0 c0Var) {
        n0 n0Var = (n0) ((p132r.m) this.f5468b).get(c0Var);
        if (n0Var == null) {
            return;
        }
        n0Var.f5463a &= -2;
    }

    public final void m(c0 c0Var) {
        for (int iH = ((p132r.j) this.f5469c).h() - 1; iH >= 0; iH--) {
            if (c0Var == ((p132r.j) this.f5469c).i(iH)) {
                p132r.j jVar = (p132r.j) this.f5469c;
                Object[] objArr = jVar.f29673I;
                Object obj = objArr[iH];
                Object obj2 = p132r.k.f29675a;
                if (obj == obj2) {
                    break;
                }
                objArr[iH] = obj2;
                jVar.f29671G = true;
                break;
            }
        }
        n0 n0Var = (n0) ((p132r.m) this.f5468b).remove(c0Var);
        if (n0Var != null) {
            n0Var.f5463a = 0;
            n0Var.f5464b = null;
            n0Var.f5465c = null;
            n0.f5462d.a(n0Var);
        }
    }

    public o0(J j8) {
        this.f5467a = 2;
        this.f5468b = j8;
        this.f5469c = new C0371d();
    }
}
