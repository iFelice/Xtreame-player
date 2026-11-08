package androidx.leanback.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public class TitleView extends FrameLayout {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final ImageView f9262G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final TextView f9263H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final SearchOrbView f9264I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final int f9265J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public boolean f9266K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final W f9267L;

    public TitleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.browseTitleViewStyle);
        this.f9265J = 6;
        this.f9266K = false;
        this.f9267L = new W();
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.lb_title_view, this);
        this.f9262G = (ImageView) viewInflate.findViewById(R.id.title_badge);
        this.f9263H = (TextView) viewInflate.findViewById(R.id.title_text);
        this.f9264I = (SearchOrbView) viewInflate.findViewById(R.id.title_orb);
        setClipToPadding(false);
        setClipChildren(false);
    }

    public Drawable getBadgeDrawable() {
        return this.f9262G.getDrawable();
    }

    public N getSearchAffordanceColors() {
        return this.f9264I.getOrbColors();
    }

    public View getSearchAffordanceView() {
        return this.f9264I;
    }

    public CharSequence getTitle() {
        return this.f9263H.getText();
    }

    public X getTitleViewAdapter() {
        return this.f9267L;
    }

    public void setBadgeDrawable(Drawable drawable) {
        this.f9262G.setImageDrawable(drawable);
        ImageView imageView = this.f9262G;
        Drawable drawable2 = imageView.getDrawable();
        TextView textView = this.f9263H;
        if (drawable2 != null) {
            imageView.setVisibility(0);
            textView.setVisibility(8);
        } else {
            imageView.setVisibility(8);
            textView.setVisibility(0);
        }
    }

    public void setOnSearchClickedListener(View.OnClickListener onClickListener) {
        this.f9266K = onClickListener != null;
        SearchOrbView searchOrbView = this.f9264I;
        searchOrbView.setOnOrbClickedListener(onClickListener);
        searchOrbView.setVisibility((this.f9266K && (this.f9265J & 4) == 4) ? 0 : 4);
    }

    public void setSearchAffordanceColors(N n7) {
        this.f9264I.setOrbColors(n7);
    }

    public void setTitle(CharSequence charSequence) {
        this.f9263H.setText(charSequence);
        ImageView imageView = this.f9262G;
        Drawable drawable = imageView.getDrawable();
        TextView textView = this.f9263H;
        if (drawable != null) {
            imageView.setVisibility(0);
            textView.setVisibility(8);
        } else {
            imageView.setVisibility(8);
            textView.setVisibility(0);
        }
    }
}
