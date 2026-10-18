package p086l;

import B0.M0;
import android.content.Context;
import android.os.Looper;
import android.util.SparseIntArray;
import p015b6.a;
import p015b6.b;
import p015b6.l;
import p086l.e1;
import p096m2.c;
import p096m2.e;
import p117p0.G;
import p117p0.I;
import p117p0.q;

/* JADX INFO: loaded from: classes.dex */
public final class e1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f26250a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f26251b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f26252c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f26253d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f26254e;

    public e1(int i8) {
        this.f26250a = i8;
        if (i8 != 3) {
            return;
        }
        this.f26253d = new SparseIntArray();
        this.f26254e = new SparseIntArray();
        this.f26251b = false;
        this.f26252c = false;
    }

    public final void a(a... aVarArr) {
        if (!this.f26251b) {
            throw new IllegalStateException("no cipher suites for cleartext connections");
        }
        String[] strArr = new String[aVarArr.length];
        for (int i8 = 0; i8 < aVarArr.length; i8++) {
            strArr[i8] = aVarArr[i8].f9891G;
        }
        this.f26253d = strArr;
    }

    public final int b(int i8, int i9) {
        if (!this.f26252c) {
            return d(i8, i9);
        }
        int i10 = ((SparseIntArray) this.f26254e).get(i8, -1);
        if (i10 != -1) {
            return i10;
        }
        int iD = d(i8, i9);
        ((SparseIntArray) this.f26254e).put(i8, iD);
        return iD;
    }

    public final int c(int i8, int i9) {
        if (!this.f26251b) {
            return i8 % i9;
        }
        int i10 = ((SparseIntArray) this.f26253d).get(i8, -1);
        if (i10 != -1) {
            return i10;
        }
        int i11 = i8 % i9;
        ((SparseIntArray) this.f26253d).put(i8, i11);
        return i11;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0049  */
    public final int d(int i8, int i9) {
        int iC;
        int i10;
        int i11;
        if (this.f26252c) {
            SparseIntArray sparseIntArray = (SparseIntArray) this.f26254e;
            int size = sparseIntArray.size() - 1;
            int i12 = 0;
            while (i12 <= size) {
                int i13 = (i12 + size) >>> 1;
                if (sparseIntArray.keyAt(i13) < i8) {
                    i12 = i13 + 1;
                } else {
                    size = i13 - 1;
                }
            }
            int i14 = i12 - 1;
            int iKeyAt = (i14 < 0 || i14 >= sparseIntArray.size()) ? -1 : sparseIntArray.keyAt(i14);
            if (iKeyAt != -1) {
                i10 = ((SparseIntArray) this.f26254e).get(iKeyAt);
                i11 = iKeyAt + 1;
                iC = c(iKeyAt, i9) + 1;
                if (iC == i9) {
                    i10++;
                    iC = 0;
                }
            } else {
                iC = 0;
                i10 = 0;
                i11 = 0;
            }
        } else {
            iC = 0;
            i10 = 0;
            i11 = 0;
        }
        while (i11 < i8) {
            iC++;
            if (iC == i9) {
                i10++;
                iC = 0;
            } else if (iC > i9) {
                i10++;
                iC = 1;
            }
            i11++;
        }
        return iC + 1 > i9 ? i10 + 1 : i10;
    }

    public final void e() {
        ((SparseIntArray) this.f26253d).clear();
    }

    public final void f() {
        final int i8 = 0;
        switch (this.f26250a) {
            case 1:
                if (this.f26251b) {
                    this.f26251b = false;
                    final boolean z7 = this.f26252c;
                    ((I) ((q) this.f26254e)).c(new Runnable() { // from class: B0.N0

                        /* JADX INFO: renamed from: H, reason: collision with root package name */
                        public final /* synthetic */ boolean f754H = false;

                        @Override // java.lang.Runnable
                        public final void run() {
                            int i9 = i8;
                            boolean z8 = z7;
                            boolean z9 = this.f754H;
                            e1 e1Var = (e1) this;
                            switch (i9) {
                                case 0:
                                    switch (e1Var.f26250a) {
                                        case 1:
                                            ((p096m2.c) e1Var.f26253d).B(z9, z8);
                                            break;
                                        default:
                                            ((p096m2.e) e1Var.f26253d).F(z9, z8);
                                            break;
                                    }
                                    break;
                                default:
                                    switch (e1Var.f26250a) {
                                        case 1:
                                            ((p096m2.c) e1Var.f26253d).B(z9, z8);
                                            break;
                                        default:
                                            ((p096m2.e) e1Var.f26253d).F(z9, z8);
                                            break;
                                    }
                                    break;
                            }
                        }
                    });
                    break;
                }
                break;
            default:
                if (this.f26251b) {
                    this.f26251b = false;
                    final boolean z8 = this.f26252c;
                    final int i9 = 1;
                    ((I) ((q) this.f26254e)).c(new Runnable() { // from class: B0.N0

                        /* JADX INFO: renamed from: H, reason: collision with root package name */
                        public final /* synthetic */ boolean f754H = false;

                        @Override // java.lang.Runnable
                        public final void run() {
                            int i10 = i9;
                            boolean z9 = z8;
                            boolean z10 = this.f754H;
                            e1 e1Var = (e1) this;
                            switch (i10) {
                                case 0:
                                    switch (e1Var.f26250a) {
                                        case 1:
                                            ((p096m2.c) e1Var.f26253d).B(z10, z9);
                                            break;
                                        default:
                                            ((p096m2.e) e1Var.f26253d).F(z10, z9);
                                            break;
                                    }
                                    break;
                                default:
                                    switch (e1Var.f26250a) {
                                        case 1:
                                            ((p096m2.c) e1Var.f26253d).B(z10, z9);
                                            break;
                                        default:
                                            ((p096m2.e) e1Var.f26253d).F(z10, z9);
                                            break;
                                    }
                                    break;
                            }
                        }
                    });
                    break;
                }
                break;
        }
    }

    public final void g(boolean z7) {
        switch (this.f26250a) {
            case 1:
                if (this.f26252c != z7) {
                    this.f26252c = z7;
                    if (this.f26251b) {
                        ((I) ((q) this.f26254e)).c(new M0(0, this, z7));
                    }
                    break;
                }
                break;
            default:
                if (this.f26252c != z7) {
                    this.f26252c = z7;
                    if (this.f26251b) {
                        ((I) ((q) this.f26254e)).c(new M0(1, this, z7));
                    }
                    break;
                }
                break;
        }
    }

    public final void h(l... lVarArr) {
        if (!this.f26251b) {
            throw new IllegalStateException("no TLS versions for cleartext connections");
        }
        if (lVarArr.length == 0) {
            throw new IllegalArgumentException("At least one TlsVersion is required");
        }
        String[] strArr = new String[lVarArr.length];
        for (int i8 = 0; i8 < lVarArr.length; i8++) {
            strArr[i8] = lVarArr[i8].f9936G;
        }
        this.f26254e = strArr;
    }

    public e1(Context context, Looper looper, G g8, int i8) {
        this.f26250a = i8;
        int i9 = 4;
        if (i8 != 2) {
            this.f26253d = new c(context.getApplicationContext(), i9);
            this.f26254e = g8.a(looper, null);
        } else {
            this.f26253d = new e(context.getApplicationContext(), i9);
            this.f26254e = g8.a(looper, null);
        }
    }

    public e1(boolean z7) {
        this.f26250a = 4;
        this.f26251b = z7;
    }

    public e1(b bVar) {
        this.f26250a = 4;
        this.f26251b = bVar.f9892a;
        this.f26253d = bVar.f9893b;
        this.f26254e = bVar.f9894c;
        this.f26252c = bVar.f9895d;
    }
}
