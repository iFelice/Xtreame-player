package com.google.android.gms.internal.pal;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class d7 extends AbstractMap implements Serializable {

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public static final C2772n f23778N = new C2772n();

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C2772n f23779G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public c7 f23780H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f23781I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f23782J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final c7 f23783K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public a7 f23784L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public a7 f23785M;

    public d7() {
        C2772n c2772n = f23778N;
        this.f23781I = 0;
        this.f23782J = 0;
        this.f23783K = new c7();
        this.f23779G = c2772n;
    }

    public final c7 a(Object obj, boolean z7) {
        int iCompareTo;
        c7 c7Var;
        c7 c7Var2 = this.f23780H;
        C2772n c2772n = f23778N;
        C2772n c2772n2 = this.f23779G;
        if (c7Var2 != null) {
            Comparable comparable = c2772n2 == c2772n ? (Comparable) obj : null;
            while (true) {
                Object obj2 = c7Var2.f23764L;
                iCompareTo = comparable != null ? comparable.compareTo(obj2) : c2772n2.compare(obj, obj2);
                if (iCompareTo == 0) {
                    return c7Var2;
                }
                c7 c7Var3 = iCompareTo < 0 ? c7Var2.f23760H : c7Var2.f23761I;
                if (c7Var3 == null) {
                    break;
                }
                c7Var2 = c7Var3;
            }
        } else {
            iCompareTo = 0;
        }
        if (!z7) {
            return null;
        }
        c7 c7Var4 = this.f23783K;
        if (c7Var2 != null) {
            c7 c7Var5 = new c7(c7Var2, obj, c7Var4, c7Var4.f23763K);
            if (iCompareTo < 0) {
                c7Var2.f23760H = c7Var5;
            } else {
                c7Var2.f23761I = c7Var5;
            }
            c(c7Var2, true);
            c7Var = c7Var5;
        } else {
            if (c2772n2 == c2772n && !(obj instanceof Comparable)) {
                throw new ClassCastException(obj.getClass().getName().concat(" is not Comparable"));
            }
            c7Var = new c7(null, obj, c7Var4, c7Var4.f23763K);
            this.f23780H = c7Var;
        }
        this.f23781I++;
        this.f23782J++;
        return c7Var;
    }

    public final void b(c7 c7Var, boolean z7) {
        c7 c7Var2;
        c7 c7Var3;
        int i8;
        if (z7) {
            c7 c7Var4 = c7Var.f23763K;
            c7Var4.f23762J = c7Var.f23762J;
            c7Var.f23762J.f23763K = c7Var4;
        }
        c7 c7Var5 = c7Var.f23760H;
        c7 c7Var6 = c7Var.f23761I;
        c7 c7Var7 = c7Var.f23759G;
        int i9 = 0;
        if (c7Var5 == null || c7Var6 == null) {
            if (c7Var5 != null) {
                d(c7Var, c7Var5);
                c7Var.f23760H = null;
            } else if (c7Var6 != null) {
                d(c7Var, c7Var6);
                c7Var.f23761I = null;
            } else {
                d(c7Var, null);
            }
            c(c7Var7, false);
            this.f23781I--;
            this.f23782J++;
            return;
        }
        if (c7Var5.f23766N > c7Var6.f23766N) {
            do {
                c7Var3 = c7Var5;
                c7Var5 = c7Var5.f23761I;
            } while (c7Var5 != null);
        } else {
            do {
                c7Var2 = c7Var6;
                c7Var6 = c7Var6.f23760H;
            } while (c7Var6 != null);
            c7Var3 = c7Var2;
        }
        b(c7Var3, false);
        c7 c7Var8 = c7Var.f23760H;
        if (c7Var8 != null) {
            i8 = c7Var8.f23766N;
            c7Var3.f23760H = c7Var8;
            c7Var8.f23759G = c7Var3;
            c7Var.f23760H = null;
        } else {
            i8 = 0;
        }
        c7 c7Var9 = c7Var.f23761I;
        if (c7Var9 != null) {
            i9 = c7Var9.f23766N;
            c7Var3.f23761I = c7Var9;
            c7Var9.f23759G = c7Var3;
            c7Var.f23761I = null;
        }
        c7Var3.f23766N = Math.max(i8, i9) + 1;
        d(c7Var, c7Var3);
    }

    public final void c(c7 c7Var, boolean z7) {
        while (c7Var != null) {
            c7 c7Var2 = c7Var.f23760H;
            c7 c7Var3 = c7Var.f23761I;
            int i8 = c7Var2 != null ? c7Var2.f23766N : 0;
            int i9 = c7Var3 != null ? c7Var3.f23766N : 0;
            int i10 = i8 - i9;
            if (i10 == -2) {
                c7 c7Var4 = c7Var3.f23760H;
                c7 c7Var5 = c7Var3.f23761I;
                int i11 = (c7Var4 != null ? c7Var4.f23766N : 0) - (c7Var5 != null ? c7Var5.f23766N : 0);
                if (i11 == -1 || (i11 == 0 && !z7)) {
                    e(c7Var);
                } else {
                    f(c7Var3);
                    e(c7Var);
                }
                if (z7) {
                    return;
                }
            } else if (i10 == 2) {
                c7 c7Var6 = c7Var2.f23760H;
                c7 c7Var7 = c7Var2.f23761I;
                int i12 = (c7Var6 != null ? c7Var6.f23766N : 0) - (c7Var7 != null ? c7Var7.f23766N : 0);
                if (i12 == 1 || (i12 == 0 && !z7)) {
                    f(c7Var);
                } else {
                    e(c7Var2);
                    f(c7Var);
                }
                if (z7) {
                    return;
                }
            } else if (i10 == 0) {
                c7Var.f23766N = i8 + 1;
                if (z7) {
                    return;
                }
            } else {
                c7Var.f23766N = Math.max(i8, i9) + 1;
                if (!z7) {
                    return;
                }
            }
            c7Var = c7Var.f23759G;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        this.f23780H = null;
        this.f23781I = 0;
        this.f23782J++;
        c7 c7Var = this.f23783K;
        c7Var.f23763K = c7Var;
        c7Var.f23762J = c7Var;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        c7 c7VarA = null;
        if (obj != null) {
            try {
                c7VarA = a(obj, false);
            } catch (ClassCastException unused) {
            }
        }
        return c7VarA != null;
    }

    public final void d(c7 c7Var, c7 c7Var2) {
        c7 c7Var3 = c7Var.f23759G;
        c7Var.f23759G = null;
        if (c7Var2 != null) {
            c7Var2.f23759G = c7Var3;
        }
        if (c7Var3 == null) {
            this.f23780H = c7Var2;
        } else if (c7Var3.f23760H == c7Var) {
            c7Var3.f23760H = c7Var2;
        } else {
            c7Var3.f23761I = c7Var2;
        }
    }

    public final void e(c7 c7Var) {
        c7 c7Var2 = c7Var.f23760H;
        c7 c7Var3 = c7Var.f23761I;
        c7 c7Var4 = c7Var3.f23760H;
        c7 c7Var5 = c7Var3.f23761I;
        c7Var.f23761I = c7Var4;
        if (c7Var4 != null) {
            c7Var4.f23759G = c7Var;
        }
        d(c7Var, c7Var3);
        c7Var3.f23760H = c7Var;
        c7Var.f23759G = c7Var3;
        int iMax = Math.max(c7Var2 != null ? c7Var2.f23766N : 0, c7Var4 != null ? c7Var4.f23766N : 0) + 1;
        c7Var.f23766N = iMax;
        c7Var3.f23766N = Math.max(iMax, c7Var5 != null ? c7Var5.f23766N : 0) + 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        a7 a7Var = this.f23784L;
        if (a7Var != null) {
            return a7Var;
        }
        a7 a7Var2 = new a7(this, 0);
        this.f23784L = a7Var2;
        return a7Var2;
    }

    public final void f(c7 c7Var) {
        c7 c7Var2 = c7Var.f23760H;
        c7 c7Var3 = c7Var.f23761I;
        c7 c7Var4 = c7Var2.f23760H;
        c7 c7Var5 = c7Var2.f23761I;
        c7Var.f23760H = c7Var5;
        if (c7Var5 != null) {
            c7Var5.f23759G = c7Var;
        }
        d(c7Var, c7Var2);
        c7Var2.f23761I = c7Var;
        c7Var.f23759G = c7Var2;
        int iMax = Math.max(c7Var3 != null ? c7Var3.f23766N : 0, c7Var5 != null ? c7Var5.f23766N : 0) + 1;
        c7Var.f23766N = iMax;
        c7Var2.f23766N = Math.max(iMax, c7Var4 != null ? c7Var4.f23766N : 0) + 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        c7 c7VarA;
        if (obj != null) {
            try {
                c7VarA = a(obj, false);
            } catch (ClassCastException unused) {
                c7VarA = null;
            }
        } else {
            c7VarA = null;
        }
        if (c7VarA != null) {
            return c7VarA.f23765M;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        a7 a7Var = this.f23785M;
        if (a7Var != null) {
            return a7Var;
        }
        a7 a7Var2 = new a7(this, 1);
        this.f23785M = a7Var2;
        return a7Var2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        if (obj == null) {
            throw new NullPointerException("key == null");
        }
        c7 c7VarA = a(obj, true);
        Object obj3 = c7VarA.f23765M;
        c7VarA.f23765M = obj2;
        return obj3;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        c7 c7VarA;
        if (obj != null) {
            try {
                c7VarA = a(obj, false);
            } catch (ClassCastException unused) {
                c7VarA = null;
            }
        } else {
            c7VarA = null;
        }
        if (c7VarA != null) {
            b(c7VarA, true);
        }
        if (c7VarA != null) {
            return c7VarA.f23765M;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f23781I;
    }
}
