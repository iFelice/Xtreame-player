package p106n4;

import android.content.res.ColorStateList;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import p129q4.a;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f27551a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f27552b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f27553c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f27554d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f27555e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f27556f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f27557g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public PorterDuff.Mode f27558h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ColorStateList f27559i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ColorStateList f27560j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ColorStateList f27561k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Paint f27562l = new Paint(1);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public GradientDrawable f27563m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public GradientDrawable f27564n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public GradientDrawable f27565o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f27566p;

    public c(a aVar) {
        new Rect();
        new RectF();
        this.f27566p = false;
        this.f27551a = aVar;
    }

    public final b a() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        this.f27563m = gradientDrawable;
        gradientDrawable.setCornerRadius(this.f27556f + 1.0E-5f);
        this.f27563m.setColor(-1);
        b();
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        this.f27564n = gradientDrawable2;
        gradientDrawable2.setCornerRadius(this.f27556f + 1.0E-5f);
        this.f27564n.setColor(0);
        this.f27564n.setStroke(this.f27557g, this.f27560j);
        InsetDrawable insetDrawable = new InsetDrawable((Drawable) new LayerDrawable(new Drawable[]{this.f27563m, this.f27564n}), this.f27552b, this.f27554d, this.f27553c, this.f27555e);
        GradientDrawable gradientDrawable3 = new GradientDrawable();
        this.f27565o = gradientDrawable3;
        gradientDrawable3.setCornerRadius(this.f27556f + 1.0E-5f);
        this.f27565o.setColor(-1);
        return new b(a.a(this.f27561k), insetDrawable, this.f27565o);
    }

    public final void b() {
        GradientDrawable gradientDrawable = this.f27563m;
        if (gradientDrawable != null) {
            gradientDrawable.setTintList(this.f27559i);
            PorterDuff.Mode mode = this.f27558h;
            if (mode != null) {
                this.f27563m.setTintMode(mode);
            }
        }
    }
}
