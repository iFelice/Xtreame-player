package O1;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public class M extends ViewGroup.MarginLayoutParams {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public c0 f5294a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Rect f5295b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f5296c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f5297d;

    public M(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5295b = new Rect();
        this.f5296c = true;
        this.f5297d = false;
    }

    public M(int i8, int i9) {
        super(i8, i9);
        this.f5295b = new Rect();
        this.f5296c = true;
        this.f5297d = false;
    }

    public M(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.f5295b = new Rect();
        this.f5296c = true;
        this.f5297d = false;
    }

    public M(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.f5295b = new Rect();
        this.f5296c = true;
        this.f5297d = false;
    }

    public M(M m7) {
        super((ViewGroup.LayoutParams) m7);
        this.f5295b = new Rect();
        this.f5296c = true;
        this.f5297d = false;
    }
}
