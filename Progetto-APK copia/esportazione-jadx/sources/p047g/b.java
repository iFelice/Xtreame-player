package p047g;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import p132r.j;
import p132r.n;
import p132r.o;
import p140s.a;

/* JADX INFO: loaded from: classes.dex */
public final class b extends i {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public j f25229I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public n f25230J;

    public b(b bVar, e eVar, Resources resources) {
        super(bVar, eVar, resources);
        if (bVar != null) {
            this.f25289H = bVar.f25289H;
        } else {
            this.f25289H = new int[this.f25256g.length][];
        }
        if (bVar != null) {
            this.f25229I = bVar.f25229I;
            this.f25230J = bVar.f25230J;
        } else {
            this.f25229I = new j();
            this.f25230J = new n();
        }
    }

    public final int e(int i8) {
        Object obj;
        if (i8 < 0) {
            return 0;
        }
        n nVar = this.f25230J;
        Object obj2 = 0;
        nVar.getClass();
        Object obj3 = o.f29688a;
        int iA = a.a(nVar.f29687I, i8, nVar.f29685G);
        if (iA >= 0 && (obj = nVar.f29686H[iA]) != o.f29688a) {
            obj2 = obj;
        }
        return ((Integer) obj2).intValue();
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        return new e(this, null);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources) {
        return new e(this, resources);
    }
}
