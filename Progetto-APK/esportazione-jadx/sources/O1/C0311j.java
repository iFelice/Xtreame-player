package O1;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import java.util.ArrayList;

/* JADX INFO: renamed from: O1.j, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0311j extends H {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static TimeInterpolator f5418s;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f5419g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ArrayList f5420h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ArrayList f5421i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ArrayList f5422j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ArrayList f5423k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public ArrayList f5424l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public ArrayList f5425m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public ArrayList f5426n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public ArrayList f5427o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public ArrayList f5428p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public ArrayList f5429q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public ArrayList f5430r;

    public static void h(ArrayList arrayList) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((c0) arrayList.get(size)).f5353G.animate().cancel();
        }
    }

    @Override // O1.H
    public final boolean a(c0 c0Var, c0 c0Var2, p072j0.c cVar, p072j0.c cVar2) {
        int i8;
        int i9;
        int i10 = cVar.f25660G;
        int i11 = cVar.f25661H;
        if (c0Var2.q()) {
            int i12 = cVar.f25660G;
            i9 = cVar.f25661H;
            i8 = i12;
        } else {
            i8 = cVar2.f25660G;
            i9 = cVar2.f25661H;
        }
        if (c0Var == c0Var2) {
            return g(c0Var, i10, i11, i8, i9);
        }
        View view = c0Var.f5353G;
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        float alpha = view.getAlpha();
        l(c0Var);
        view.setTranslationX(translationX);
        view.setTranslationY(translationY);
        view.setAlpha(alpha);
        l(c0Var2);
        float f8 = -((int) ((i8 - i10) - translationX));
        View view2 = c0Var2.f5353G;
        view2.setTranslationX(f8);
        view2.setTranslationY(-((int) ((i9 - i11) - translationY)));
        view2.setAlpha(0.0f);
        ArrayList arrayList = this.f5423k;
        C0309h c0309h = new C0309h();
        c0309h.f5399a = c0Var;
        c0309h.f5400b = c0Var2;
        c0309h.f5401c = i10;
        c0309h.f5402d = i11;
        c0309h.f5403e = i8;
        c0309h.f5404f = i9;
        arrayList.add(c0309h);
        return true;
    }

    @Override // O1.H
    public final void d(c0 c0Var) {
        View view = c0Var.f5353G;
        view.animate().cancel();
        ArrayList arrayList = this.f5422j;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            if (((C0310i) arrayList.get(size)).f5412a == c0Var) {
                view.setTranslationY(0.0f);
                view.setTranslationX(0.0f);
                c(c0Var);
                arrayList.remove(size);
            }
        }
        j(c0Var, this.f5423k);
        if (this.f5420h.remove(c0Var)) {
            view.setAlpha(1.0f);
            c(c0Var);
        }
        if (this.f5421i.remove(c0Var)) {
            view.setAlpha(1.0f);
            c(c0Var);
        }
        ArrayList arrayList2 = this.f5426n;
        for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
            ArrayList arrayList3 = (ArrayList) arrayList2.get(size2);
            j(c0Var, arrayList3);
            if (arrayList3.isEmpty()) {
                arrayList2.remove(size2);
            }
        }
        ArrayList arrayList4 = this.f5425m;
        for (int size3 = arrayList4.size() - 1; size3 >= 0; size3--) {
            ArrayList arrayList5 = (ArrayList) arrayList4.get(size3);
            for (int size4 = arrayList5.size() - 1; size4 >= 0; size4--) {
                if (((C0310i) arrayList5.get(size4)).f5412a == c0Var) {
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    c(c0Var);
                    arrayList5.remove(size4);
                    if (!arrayList5.isEmpty()) {
                        break;
                    }
                    arrayList4.remove(size3);
                    break;
                }
            }
        }
        ArrayList arrayList6 = this.f5424l;
        for (int size5 = arrayList6.size() - 1; size5 >= 0; size5--) {
            ArrayList arrayList7 = (ArrayList) arrayList6.get(size5);
            if (arrayList7.remove(c0Var)) {
                view.setAlpha(1.0f);
                c(c0Var);
                if (arrayList7.isEmpty()) {
                    arrayList6.remove(size5);
                }
            }
        }
        this.f5429q.remove(c0Var);
        this.f5427o.remove(c0Var);
        this.f5430r.remove(c0Var);
        this.f5428p.remove(c0Var);
        i();
    }

    @Override // O1.H
    public final void e() {
        ArrayList arrayList = this.f5422j;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            C0310i c0310i = (C0310i) arrayList.get(size);
            View view = c0310i.f5412a.f5353G;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            c(c0310i.f5412a);
            arrayList.remove(size);
        }
        ArrayList arrayList2 = this.f5420h;
        for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
            c((c0) arrayList2.get(size2));
            arrayList2.remove(size2);
        }
        ArrayList arrayList3 = this.f5421i;
        int size3 = arrayList3.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            c0 c0Var = (c0) arrayList3.get(size3);
            c0Var.f5353G.setAlpha(1.0f);
            c(c0Var);
            arrayList3.remove(size3);
        }
        ArrayList arrayList4 = this.f5423k;
        for (int size4 = arrayList4.size() - 1; size4 >= 0; size4--) {
            C0309h c0309h = (C0309h) arrayList4.get(size4);
            c0 c0Var2 = c0309h.f5399a;
            if (c0Var2 != null) {
                k(c0309h, c0Var2);
            }
            c0 c0Var3 = c0309h.f5400b;
            if (c0Var3 != null) {
                k(c0309h, c0Var3);
            }
        }
        arrayList4.clear();
        if (f()) {
            ArrayList arrayList5 = this.f5425m;
            for (int size5 = arrayList5.size() - 1; size5 >= 0; size5--) {
                ArrayList arrayList6 = (ArrayList) arrayList5.get(size5);
                for (int size6 = arrayList6.size() - 1; size6 >= 0; size6--) {
                    C0310i c0310i2 = (C0310i) arrayList6.get(size6);
                    View view2 = c0310i2.f5412a.f5353G;
                    view2.setTranslationY(0.0f);
                    view2.setTranslationX(0.0f);
                    c(c0310i2.f5412a);
                    arrayList6.remove(size6);
                    if (arrayList6.isEmpty()) {
                        arrayList5.remove(arrayList6);
                    }
                }
            }
            ArrayList arrayList7 = this.f5424l;
            for (int size7 = arrayList7.size() - 1; size7 >= 0; size7--) {
                ArrayList arrayList8 = (ArrayList) arrayList7.get(size7);
                for (int size8 = arrayList8.size() - 1; size8 >= 0; size8--) {
                    c0 c0Var4 = (c0) arrayList8.get(size8);
                    c0Var4.f5353G.setAlpha(1.0f);
                    c(c0Var4);
                    arrayList8.remove(size8);
                    if (arrayList8.isEmpty()) {
                        arrayList7.remove(arrayList8);
                    }
                }
            }
            ArrayList arrayList9 = this.f5426n;
            for (int size9 = arrayList9.size() - 1; size9 >= 0; size9--) {
                ArrayList arrayList10 = (ArrayList) arrayList9.get(size9);
                for (int size10 = arrayList10.size() - 1; size10 >= 0; size10--) {
                    C0309h c0309h2 = (C0309h) arrayList10.get(size10);
                    c0 c0Var5 = c0309h2.f5399a;
                    if (c0Var5 != null) {
                        k(c0309h2, c0Var5);
                    }
                    c0 c0Var6 = c0309h2.f5400b;
                    if (c0Var6 != null) {
                        k(c0309h2, c0Var6);
                    }
                    if (arrayList10.isEmpty()) {
                        arrayList9.remove(arrayList10);
                    }
                }
            }
            h(this.f5429q);
            h(this.f5428p);
            h(this.f5427o);
            h(this.f5430r);
            ArrayList arrayList11 = this.f5268b;
            if (arrayList11.size() > 0) {
                A0.O.I(arrayList11.get(0));
                throw null;
            }
            arrayList11.clear();
        }
    }

    @Override // O1.H
    public final boolean f() {
        return (this.f5421i.isEmpty() && this.f5423k.isEmpty() && this.f5422j.isEmpty() && this.f5420h.isEmpty() && this.f5428p.isEmpty() && this.f5429q.isEmpty() && this.f5427o.isEmpty() && this.f5430r.isEmpty() && this.f5425m.isEmpty() && this.f5424l.isEmpty() && this.f5426n.isEmpty()) ? false : true;
    }

    public final boolean g(c0 c0Var, int i8, int i9, int i10, int i11) {
        View view = c0Var.f5353G;
        int translationX = i8 + ((int) view.getTranslationX());
        int translationY = i9 + ((int) c0Var.f5353G.getTranslationY());
        l(c0Var);
        int i12 = i10 - translationX;
        int i13 = i11 - translationY;
        if (i12 == 0 && i13 == 0) {
            c(c0Var);
            return false;
        }
        if (i12 != 0) {
            view.setTranslationX(-i12);
        }
        if (i13 != 0) {
            view.setTranslationY(-i13);
        }
        ArrayList arrayList = this.f5422j;
        C0310i c0310i = new C0310i();
        c0310i.f5412a = c0Var;
        c0310i.f5413b = translationX;
        c0310i.f5414c = translationY;
        c0310i.f5415d = i10;
        c0310i.f5416e = i11;
        arrayList.add(c0310i);
        return true;
    }

    public final void i() {
        if (f()) {
            return;
        }
        ArrayList arrayList = this.f5268b;
        if (arrayList.size() <= 0) {
            arrayList.clear();
        } else {
            A0.O.I(arrayList.get(0));
            throw null;
        }
    }

    public final void j(c0 c0Var, ArrayList arrayList) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            C0309h c0309h = (C0309h) arrayList.get(size);
            if (k(c0309h, c0Var) && c0309h.f5399a == null && c0309h.f5400b == null) {
                arrayList.remove(c0309h);
            }
        }
    }

    public final boolean k(C0309h c0309h, c0 c0Var) {
        if (c0309h.f5400b == c0Var) {
            c0309h.f5400b = null;
        } else {
            if (c0309h.f5399a != c0Var) {
                return false;
            }
            c0309h.f5399a = null;
        }
        c0Var.f5353G.setAlpha(1.0f);
        View view = c0Var.f5353G;
        view.setTranslationX(0.0f);
        view.setTranslationY(0.0f);
        c(c0Var);
        return true;
    }

    public final void l(c0 c0Var) {
        if (f5418s == null) {
            f5418s = new ValueAnimator().getInterpolator();
        }
        c0Var.f5353G.animate().setInterpolator(f5418s);
        d(c0Var);
    }
}
