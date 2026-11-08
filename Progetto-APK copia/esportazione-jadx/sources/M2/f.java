package M2;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import java.util.ArrayList;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public abstract class f implements i {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final e f4788G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final View f4789H;

    public f(View view) {
        p102n0.c.c(view, "Argument must not be null");
        this.f4789H = view;
        this.f4788G = new e(view);
    }

    @Override // M2.i
    public final void b(h hVar) throws Throwable {
        e eVar = this.f4788G;
        View view = eVar.f4785a;
        int paddingRight = view.getPaddingRight() + view.getPaddingLeft();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        int iA = eVar.a(view.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingRight);
        View view2 = eVar.f4785a;
        int paddingBottom = view2.getPaddingBottom() + view2.getPaddingTop();
        ViewGroup.LayoutParams layoutParams2 = view2.getLayoutParams();
        int iA2 = eVar.a(view2.getHeight(), layoutParams2 != null ? layoutParams2.height : 0, paddingBottom);
        if ((iA > 0 || iA == Integer.MIN_VALUE) && (iA2 > 0 || iA2 == Integer.MIN_VALUE)) {
            ((L2.h) hVar).l(iA, iA2);
            return;
        }
        ArrayList arrayList = eVar.f4786b;
        if (!arrayList.contains(hVar)) {
            arrayList.add(hVar);
        }
        if (eVar.f4787c == null) {
            ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
            d dVar = new d(eVar);
            eVar.f4787c = dVar;
            viewTreeObserver.addOnPreDrawListener(dVar);
        }
    }

    @Override // M2.i
    public final void c(L2.c cVar) {
        this.f4789H.setTag(R.id.glide_custom_view_target_tag, cVar);
    }

    @Override // M2.i
    public final void f(h hVar) {
        this.f4788G.f4786b.remove(hVar);
    }

    @Override // M2.i
    public final L2.c h() {
        Object tag = this.f4789H.getTag(R.id.glide_custom_view_target_tag);
        if (tag == null) {
            return null;
        }
        if (tag instanceof L2.c) {
            return (L2.c) tag;
        }
        throw new IllegalArgumentException("You must not pass non-R.id ids to setTag(id)");
    }

    @Override // M2.i
    public final void i(Drawable drawable) {
        e eVar = this.f4788G;
        ViewTreeObserver viewTreeObserver = eVar.f4785a.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(eVar.f4787c);
        }
        eVar.f4787c = null;
        eVar.f4786b.clear();
        ((p160u4.b) this).f30510I.f24201F0.setImageDrawable(drawable);
    }

    public final String toString() {
        return "Target for: " + this.f4789H;
    }

    @Override // J2.j
    public final void e() {
    }

    @Override // J2.j
    public final void j() {
    }

    @Override // J2.j
    public final void onDestroy() {
    }

    @Override // M2.i
    public final void g(Drawable drawable) {
    }
}
