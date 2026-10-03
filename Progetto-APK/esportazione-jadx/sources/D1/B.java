package D1;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import java.util.ArrayList;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public final class B {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public boolean f2030A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public boolean f2031B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0156v f2033a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final View f2034b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ViewGroup f2035c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ViewGroup f2036d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ViewGroup f2037e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ViewGroup f2038f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ViewGroup f2039g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ViewGroup f2040h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ViewGroup f2041i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final View f2042j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final View f2043k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final AnimatorSet f2044l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final AnimatorSet f2045m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final AnimatorSet f2046n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final AnimatorSet f2047o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final AnimatorSet f2048p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final ValueAnimator f2049q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final ValueAnimator f2050r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final w f2051s = new w(this, 0);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final w f2052t = new w(this, 1);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final w f2053u = new w(this, 2);

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final w f2054v = new w(this, 3);

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final w f2055w = new w(this, 4);

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final ViewOnLayoutChangeListenerC0143h f2056x = new ViewOnLayoutChangeListenerC0143h(this, 1);

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public boolean f2032C = true;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f2058z = 0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final ArrayList f2057y = new ArrayList();

    public B(C0156v c0156v) {
        this.f2033a = c0156v;
        final int i8 = 0;
        final int i9 = 1;
        int i10 = 2;
        this.f2034b = c0156v.findViewById(R.id.exo_controls_background);
        this.f2035c = (ViewGroup) c0156v.findViewById(R.id.exo_center_controls);
        this.f2037e = (ViewGroup) c0156v.findViewById(R.id.exo_minimal_controls);
        ViewGroup viewGroup = (ViewGroup) c0156v.findViewById(R.id.exo_bottom_bar);
        this.f2036d = viewGroup;
        this.f2041i = (ViewGroup) c0156v.findViewById(R.id.exo_time);
        View viewFindViewById = c0156v.findViewById(R.id.exo_progress);
        this.f2042j = viewFindViewById;
        this.f2038f = (ViewGroup) c0156v.findViewById(R.id.exo_basic_controls);
        this.f2039g = (ViewGroup) c0156v.findViewById(R.id.exo_extra_controls);
        this.f2040h = (ViewGroup) c0156v.findViewById(R.id.exo_extra_controls_scroll_view);
        View viewFindViewById2 = c0156v.findViewById(R.id.exo_overflow_show);
        this.f2043k = viewFindViewById2;
        View viewFindViewById3 = c0156v.findViewById(R.id.exo_overflow_hide);
        if (viewFindViewById2 != null && viewFindViewById3 != null) {
            viewFindViewById2.setOnClickListener(new View.OnClickListener(this) { // from class: D1.y

                /* JADX INFO: renamed from: H, reason: collision with root package name */
                public final /* synthetic */ B f2302H;

                {
                    this.f2302H = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    int i11 = i8;
                    B.a(this.f2302H, view);
                }
            });
            viewFindViewById3.setOnClickListener(new View.OnClickListener(this) { // from class: D1.y

                /* JADX INFO: renamed from: H, reason: collision with root package name */
                public final /* synthetic */ B f2302H;

                {
                    this.f2302H = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    int i11 = i9;
                    B.a(this.f2302H, view);
                }
            });
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        valueAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        valueAnimatorOfFloat.addUpdateListener(new x(this, 2));
        valueAnimatorOfFloat.addListener(new z(this, i8));
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat2.setInterpolator(new LinearInterpolator());
        valueAnimatorOfFloat2.addUpdateListener(new x(this, 3));
        valueAnimatorOfFloat2.addListener(new z(this, i9));
        Resources resources = c0156v.getResources();
        float dimension = resources.getDimension(R.dimen.exo_styled_bottom_bar_height) - resources.getDimension(R.dimen.exo_styled_progress_bar_height);
        float dimension2 = resources.getDimension(R.dimen.exo_styled_bottom_bar_height);
        AnimatorSet animatorSet = new AnimatorSet();
        this.f2044l = animatorSet;
        animatorSet.setDuration(250L);
        animatorSet.addListener(new A(this, c0156v, i8));
        animatorSet.play(valueAnimatorOfFloat).with(e(viewFindViewById, 0.0f, dimension)).with(e(viewGroup, 0.0f, dimension));
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.f2045m = animatorSet2;
        animatorSet2.setDuration(250L);
        animatorSet2.addListener(new A(this, c0156v, i9));
        animatorSet2.play(e(viewFindViewById, dimension, dimension2)).with(e(viewGroup, dimension, dimension2));
        AnimatorSet animatorSet3 = new AnimatorSet();
        this.f2046n = animatorSet3;
        animatorSet3.setDuration(250L);
        animatorSet3.addListener(new A(this, c0156v, i10));
        animatorSet3.play(valueAnimatorOfFloat).with(e(viewFindViewById, 0.0f, dimension2)).with(e(viewGroup, 0.0f, dimension2));
        AnimatorSet animatorSet4 = new AnimatorSet();
        this.f2047o = animatorSet4;
        animatorSet4.setDuration(250L);
        animatorSet4.addListener(new z(this, i10));
        animatorSet4.play(valueAnimatorOfFloat2).with(e(viewFindViewById, dimension, 0.0f)).with(e(viewGroup, dimension, 0.0f));
        AnimatorSet animatorSet5 = new AnimatorSet();
        this.f2048p = animatorSet5;
        animatorSet5.setDuration(250L);
        animatorSet5.addListener(new z(this, 3));
        animatorSet5.play(valueAnimatorOfFloat2).with(e(viewFindViewById, dimension2, 0.0f)).with(e(viewGroup, dimension2, 0.0f));
        ValueAnimator valueAnimatorOfFloat3 = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f2049q = valueAnimatorOfFloat3;
        valueAnimatorOfFloat3.setDuration(250L);
        valueAnimatorOfFloat3.addUpdateListener(new x(this, 0));
        valueAnimatorOfFloat3.addListener(new z(this, 4));
        ValueAnimator valueAnimatorOfFloat4 = ValueAnimator.ofFloat(1.0f, 0.0f);
        this.f2050r = valueAnimatorOfFloat4;
        valueAnimatorOfFloat4.setDuration(250L);
        valueAnimatorOfFloat4.addUpdateListener(new x(this, 1));
        valueAnimatorOfFloat4.addListener(new z(this, 5));
    }

    public static void a(B b8, View view) {
        b8.h();
        if (view.getId() == R.id.exo_overflow_show) {
            b8.f2049q.start();
        } else if (view.getId() == R.id.exo_overflow_hide) {
            b8.f2050r.start();
        }
    }

    public static int d(View view) {
        if (view == null) {
            return 0;
        }
        int width = view.getWidth();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            return width;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        return width + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
    }

    public static ObjectAnimator e(View view, float f8, float f9) {
        return ObjectAnimator.ofFloat(view, "translationY", f8, f9);
    }

    public static boolean k(View view) {
        int id = view.getId();
        return id == R.id.exo_bottom_bar || id == R.id.exo_prev || id == R.id.exo_next || id == R.id.exo_rew || id == R.id.exo_rew_with_amount || id == R.id.exo_ffwd || id == R.id.exo_ffwd_with_amount;
    }

    public final void b(float f8) {
        ViewGroup viewGroup = this.f2040h;
        if (viewGroup != null) {
            viewGroup.setTranslationX((int) ((1.0f - f8) * viewGroup.getWidth()));
        }
        ViewGroup viewGroup2 = this.f2041i;
        if (viewGroup2 != null) {
            viewGroup2.setAlpha(1.0f - f8);
        }
        ViewGroup viewGroup3 = this.f2038f;
        if (viewGroup3 != null) {
            viewGroup3.setAlpha(1.0f - f8);
        }
    }

    public final boolean c(ImageView imageView) {
        return imageView != null && this.f2057y.contains(imageView);
    }

    public final void f(w wVar, long j8) {
        if (j8 >= 0) {
            this.f2033a.postDelayed(wVar, j8);
        }
    }

    public final void g() {
        C0156v c0156v = this.f2033a;
        c0156v.removeCallbacks(this.f2055w);
        c0156v.removeCallbacks(this.f2052t);
        c0156v.removeCallbacks(this.f2054v);
        c0156v.removeCallbacks(this.f2053u);
    }

    public final void h() {
        if (this.f2058z == 3) {
            return;
        }
        g();
        int showTimeoutMs = this.f2033a.getShowTimeoutMs();
        if (showTimeoutMs > 0) {
            if (!this.f2032C) {
                f(this.f2055w, showTimeoutMs);
            } else if (this.f2058z == 1) {
                f(this.f2053u, 2000L);
            } else {
                f(this.f2054v, showTimeoutMs);
            }
        }
    }

    public final void i(View view, boolean z7) {
        if (view == null) {
            return;
        }
        ArrayList arrayList = this.f2057y;
        if (!z7) {
            view.setVisibility(8);
            arrayList.remove(view);
            return;
        }
        if (this.f2030A && k(view)) {
            view.setVisibility(4);
        } else {
            view.setVisibility(0);
        }
        arrayList.add(view);
    }

    public final void j(int i8) {
        int i9 = this.f2058z;
        this.f2058z = i8;
        C0156v c0156v = this.f2033a;
        if (i8 == 2) {
            c0156v.setVisibility(8);
        } else if (i9 == 2) {
            c0156v.setVisibility(0);
        }
        if (i9 != i8) {
            for (InterfaceC0155u interfaceC0155u : c0156v.f2239P) {
                c0156v.getVisibility();
                D d6 = (D) interfaceC0155u;
                d6.getClass();
                d6.f2062I.m();
            }
        }
    }

    public final void l() {
        if (!this.f2032C) {
            j(0);
            h();
            return;
        }
        int i8 = this.f2058z;
        if (i8 == 1) {
            this.f2047o.start();
        } else if (i8 == 2) {
            this.f2048p.start();
        } else if (i8 == 3) {
            this.f2031B = true;
        } else if (i8 == 4) {
            return;
        }
        h();
    }
}
