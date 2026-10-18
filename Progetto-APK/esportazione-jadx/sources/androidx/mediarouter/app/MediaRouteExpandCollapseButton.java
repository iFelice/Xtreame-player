package androidx.mediarouter.app;

import android.content.Context;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.AnimationDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import p086l.C;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
class MediaRouteExpandCollapseButton extends C {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final AnimationDrawable f9536J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final AnimationDrawable f9537K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final String f9538L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final String f9539M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public boolean f9540N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public View.OnClickListener f9541O;

    public MediaRouteExpandCollapseButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        AnimationDrawable animationDrawable = (AnimationDrawable) context.getDrawable(R.drawable.mr_group_expand);
        this.f9536J = animationDrawable;
        AnimationDrawable animationDrawable2 = (AnimationDrawable) context.getDrawable(R.drawable.mr_group_collapse);
        this.f9537K = animationDrawable2;
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.colorPrimary, typedValue, true);
        int color = typedValue.resourceId != 0 ? context.getResources().getColor(typedValue.resourceId) : typedValue.data;
        ThreadLocal threadLocal = G.a.f3273a;
        if (Color.alpha(color) != 255) {
            throw new IllegalArgumentException("background can not be translucent: #" + Integer.toHexString(color));
        }
        double dB = G.a.b(Color.alpha(-1) < 255 ? G.a.c(-1, color) : -1) + 0.05d;
        double dB2 = G.a.b(color) + 0.05d;
        PorterDuffColorFilter porterDuffColorFilter = new PorterDuffColorFilter(Math.max(dB, dB2) / Math.min(dB, dB2) < 3.0d ? -570425344 : -1, PorterDuff.Mode.SRC_IN);
        animationDrawable.setColorFilter(porterDuffColorFilter);
        animationDrawable2.setColorFilter(porterDuffColorFilter);
        String string = context.getString(R.string.mr_controller_expand_group);
        this.f9538L = string;
        this.f9539M = context.getString(R.string.mr_controller_collapse_group);
        setImageDrawable(animationDrawable.getFrame(0));
        setContentDescription(string);
        super.setOnClickListener(new a(this));
    }

    @Override // android.view.View
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.f9541O = onClickListener;
    }
}
