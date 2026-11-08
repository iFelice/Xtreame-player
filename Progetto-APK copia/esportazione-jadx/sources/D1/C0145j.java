package D1;

import O1.c0;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import p094m0.Y;
import p094m0.k0;
import pe.hf.black20.R;
import z4.d0;

/* JADX INFO: renamed from: D1.j, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0145j extends AbstractC0154t {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ int f2188K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final /* synthetic */ C0156v f2189L;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0145j(C0156v c0156v, int i8) {
        super(c0156v);
        this.f2188K = i8;
        this.f2189L = c0156v;
    }

    @Override // O1.C
    public final /* bridge */ /* synthetic */ void c(c0 c0Var, int i8) {
        switch (this.f2188K) {
            case 1:
                f((r) c0Var, i8);
                break;
            default:
                f((r) c0Var, i8);
                break;
        }
    }

    @Override // D1.AbstractC0154t
    public final void f(r rVar, int i8) {
        switch (this.f2188K) {
            case 1:
                super.f(rVar, i8);
                if (i8 > 0) {
                    C0153s c0153s = (C0153s) this.f2212I.get(i8 - 1);
                    rVar.f2208b0.setVisibility(c0153s.f2209a.f26952e[c0153s.f2210b] ? 0 : 4);
                }
                break;
            default:
                super.f(rVar, i8);
                break;
        }
    }

    public final boolean g(k0 k0Var) {
        for (int i8 = 0; i8 < this.f2212I.size(); i8++) {
            if (k0Var.f26915D.containsKey(((C0153s) this.f2212I.get(i8)).f2209a.f26949b)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0027 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:14:0x0029  */
    /* JADX WARN: Code duplicated, block: B:15:0x002c  */
    /* JADX WARN: Code duplicated, block: B:18:0x0033  */
    /* JADX WARN: Code duplicated, block: B:19:0x0036  */
    public final void h(d0 d0Var) {
        ImageView imageView;
        Drawable drawable;
        String str;
        int i8 = this.f2188K;
        C0156v c0156v = this.f2189L;
        int i9 = 0;
        switch (i8) {
            case 0:
                this.f2212I = d0Var;
                Y y7 = c0156v.f2252V0;
                y7.getClass();
                k0 k0VarE = ((B0.O) y7).E();
                boolean zIsEmpty = d0Var.isEmpty();
                C0152q c0152q = c0156v.f2243R;
                if (zIsEmpty) {
                    c0152q.f(1, c0156v.getResources().getString(R.string.exo_track_selection_none));
                } else if (g(k0VarE)) {
                    while (i9 < d0Var.f31846J) {
                        C0153s c0153s = (C0153s) d0Var.get(i9);
                        if (c0153s.f2209a.f26952e[c0153s.f2210b]) {
                            c0152q.f(1, c0153s.f2211c);
                        } else {
                            i9++;
                        }
                    }
                } else {
                    c0152q.f(1, c0156v.getResources().getString(R.string.exo_track_selection_auto));
                }
                break;
            default:
                for (int i10 = 0; i10 < d0Var.f31846J; i10++) {
                    C0153s c0153s2 = (C0153s) d0Var.get(i10);
                    if (c0153s2.f2209a.f26952e[c0153s2.f2210b]) {
                        i9 = 1;
                        imageView = c0156v.f2280l0;
                        if (imageView != null) {
                            if (i9 != 0) {
                                drawable = c0156v.f2236N0;
                            } else {
                                drawable = c0156v.f2238O0;
                            }
                            imageView.setImageDrawable(drawable);
                            if (i9 != 0) {
                                str = c0156v.f2240P0;
                            } else {
                                str = c0156v.f2242Q0;
                            }
                            c0156v.f2280l0.setContentDescription(str);
                        }
                        this.f2212I = d0Var;
                    }
                    break;
                }
                imageView = c0156v.f2280l0;
                if (imageView != null) {
                    if (i9 != 0) {
                        drawable = c0156v.f2236N0;
                    } else {
                        drawable = c0156v.f2238O0;
                    }
                    imageView.setImageDrawable(drawable);
                    if (i9 != 0) {
                        str = c0156v.f2240P0;
                    } else {
                        str = c0156v.f2242Q0;
                    }
                    c0156v.f2280l0.setContentDescription(str);
                }
                this.f2212I = d0Var;
                break;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0145j(C0156v c0156v, int i8, int i9) {
        this(c0156v, 0);
        this.f2188K = i8;
        int i10 = 1;
        if (i8 != 1) {
        } else {
            this(c0156v, i10);
        }
    }
}
