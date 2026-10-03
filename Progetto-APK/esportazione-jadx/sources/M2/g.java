package M2;

import android.graphics.Bitmap;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import java.util.ArrayList;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public abstract class g extends a implements N2.d {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final View f4790G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final j f4791H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Animatable f4792I;

    public g(ImageView imageView) {
        p102n0.c.c(imageView, "Argument must not be null");
        this.f4790G = imageView;
        this.f4791H = new j(imageView);
    }

    @Override // M2.i
    public final void a(Object obj, N2.e eVar) {
        if (eVar == null || !eVar.a(obj, this)) {
            k(obj);
        } else {
            if (!(obj instanceof Animatable)) {
                this.f4792I = null;
                return;
            }
            Animatable animatable = (Animatable) obj;
            this.f4792I = animatable;
            animatable.start();
        }
    }

    @Override // M2.i
    public final void b(h hVar) throws Throwable {
        j jVar = this.f4791H;
        View view = jVar.f4794a;
        int paddingRight = view.getPaddingRight() + view.getPaddingLeft();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        int iA = jVar.a(view.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingRight);
        View view2 = jVar.f4794a;
        int paddingBottom = view2.getPaddingBottom() + view2.getPaddingTop();
        ViewGroup.LayoutParams layoutParams2 = view2.getLayoutParams();
        int iA2 = jVar.a(view2.getHeight(), layoutParams2 != null ? layoutParams2.height : 0, paddingBottom);
        if ((iA > 0 || iA == Integer.MIN_VALUE) && (iA2 > 0 || iA2 == Integer.MIN_VALUE)) {
            ((L2.h) hVar).l(iA, iA2);
            return;
        }
        ArrayList arrayList = jVar.f4795b;
        if (!arrayList.contains(hVar)) {
            arrayList.add(hVar);
        }
        if (jVar.f4796c == null) {
            ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
            d dVar = new d(jVar);
            jVar.f4796c = dVar;
            viewTreeObserver.addOnPreDrawListener(dVar);
        }
    }

    @Override // M2.i
    public final void c(L2.c cVar) {
        this.f4790G.setTag(R.id.glide_custom_view_target_tag, cVar);
    }

    @Override // M2.i
    public final void d(Drawable drawable) {
        k(null);
        ((ImageView) this.f4790G).setImageDrawable(drawable);
    }

    @Override // J2.j
    public final void e() {
        Animatable animatable = this.f4792I;
        if (animatable != null) {
            animatable.stop();
        }
    }

    @Override // M2.i
    public final void f(h hVar) {
        this.f4791H.f4795b.remove(hVar);
    }

    @Override // M2.i
    public final void g(Drawable drawable) {
        k(null);
        ((ImageView) this.f4790G).setImageDrawable(drawable);
    }

    @Override // M2.i
    public final L2.c h() {
        Object tag = this.f4790G.getTag(R.id.glide_custom_view_target_tag);
        if (tag == null) {
            return null;
        }
        if (tag instanceof L2.c) {
            return (L2.c) tag;
        }
        throw new IllegalArgumentException("You must not call setTag() on a view Glide is targeting");
    }

    @Override // M2.i
    public final void i(Drawable drawable) {
        j jVar = this.f4791H;
        ViewTreeObserver viewTreeObserver = jVar.f4794a.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(jVar.f4796c);
        }
        jVar.f4796c = null;
        jVar.f4795b.clear();
        Animatable animatable = this.f4792I;
        if (animatable != null) {
            animatable.stop();
        }
        k(null);
        ((ImageView) this.f4790G).setImageDrawable(drawable);
    }

    @Override // J2.j
    public final void j() {
        Animatable animatable = this.f4792I;
        if (animatable != null) {
            animatable.start();
        }
    }

    public final void k(Object obj) {
        b bVar = (b) this;
        int i8 = bVar.f4778J;
        View view = bVar.f4790G;
        switch (i8) {
            case 0:
                ((ImageView) view).setImageBitmap((Bitmap) obj);
                break;
            default:
                ((ImageView) view).setImageDrawable((Drawable) obj);
                break;
        }
        if (!(obj instanceof Animatable)) {
            this.f4792I = null;
            return;
        }
        Animatable animatable = (Animatable) obj;
        this.f4792I = animatable;
        animatable.start();
    }

    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public final String toString() {
        return "Target for: " + this.f4790G;
    }
}
