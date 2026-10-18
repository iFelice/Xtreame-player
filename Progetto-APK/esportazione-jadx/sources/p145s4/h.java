package p145s4;

import D.q;
import D0.AbstractC0134y;
import J6.r;
import N.G;
import N.N;
import Q3.b;
import Z3.H;
import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.text.Layout;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.material.tabs.TabLayout;
import java.util.WeakHashMap;
import p039f.S;
import p102n0.c;
import p129q4.a;

/* JADX INFO: loaded from: classes.dex */
public final class h extends LinearLayout {

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public static final /* synthetic */ int f30118P = 0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public f f30119G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public TextView f30120H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public ImageView f30121I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public View f30122J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public TextView f30123K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public ImageView f30124L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public Drawable f30125M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public int f30126N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final /* synthetic */ TabLayout f30127O;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(TabLayout tabLayout, Context context) {
        super(context);
        this.f30127O = tabLayout;
        this.f30126N = 2;
        b(context);
        int i8 = tabLayout.f24161K;
        WeakHashMap weakHashMap = N.f4843a;
        setPaddingRelative(i8, tabLayout.f24162L, tabLayout.f24163M, tabLayout.f24164N);
        setGravity(17);
        setOrientation(!tabLayout.f24183j0 ? 1 : 0);
        setClickable(true);
        Context context2 = getContext();
        int i9 = Build.VERSION.SDK_INT;
        int i10 = 12;
        S s7 = i9 >= 24 ? new S(q.e(context2), i10) : new S((Object) null, i10);
        if (i9 >= 24) {
            G.a(this, AbstractC0134y.k((PointerIcon) s7.f24988H));
        }
    }

    public final void a() {
        Drawable drawable;
        f fVar = this.f30119G;
        Drawable drawableMutate = null;
        View view = fVar != null ? fVar.f30112e : null;
        if (view != null) {
            ViewParent parent = view.getParent();
            if (parent != this) {
                if (parent != null) {
                    ((ViewGroup) parent).removeView(view);
                }
                addView(view);
            }
            this.f30122J = view;
            TextView textView = this.f30120H;
            if (textView != null) {
                textView.setVisibility(8);
            }
            ImageView imageView = this.f30121I;
            if (imageView != null) {
                imageView.setVisibility(8);
                this.f30121I.setImageDrawable(null);
            }
            TextView textView2 = (TextView) view.findViewById(R.id.text1);
            this.f30123K = textView2;
            if (textView2 != null) {
                this.f30126N = textView2.getMaxLines();
            }
            this.f30124L = (ImageView) view.findViewById(R.id.icon);
        } else {
            View view2 = this.f30122J;
            if (view2 != null) {
                removeView(view2);
                this.f30122J = null;
            }
            this.f30123K = null;
            this.f30124L = null;
        }
        boolean z7 = false;
        if (this.f30122J == null) {
            if (this.f30121I == null) {
                ImageView imageView2 = (ImageView) LayoutInflater.from(getContext()).inflate(pe.hf.black20.R.layout.design_layout_tab_icon, (ViewGroup) this, false);
                addView(imageView2, 0);
                this.f30121I = imageView2;
            }
            if (fVar != null && (drawable = fVar.f30108a) != null) {
                drawableMutate = c.q(drawable).mutate();
            }
            TabLayout tabLayout = this.f30127O;
            if (drawableMutate != null) {
                drawableMutate.setTintList(tabLayout.f24167Q);
                PorterDuff.Mode mode = tabLayout.f24170T;
                if (mode != null) {
                    drawableMutate.setTintMode(mode);
                }
            }
            if (this.f30120H == null) {
                TextView textView3 = (TextView) LayoutInflater.from(getContext()).inflate(pe.hf.black20.R.layout.design_layout_tab_text, (ViewGroup) this, false);
                addView(textView3);
                this.f30120H = textView3;
                this.f30126N = textView3.getMaxLines();
            }
            TextView textView4 = this.f30120H;
            int i8 = tabLayout.f24165O;
            if (Build.VERSION.SDK_INT >= 23) {
                textView4.setTextAppearance(i8);
            } else {
                textView4.setTextAppearance(textView4.getContext(), i8);
            }
            ColorStateList colorStateList = tabLayout.f24166P;
            if (colorStateList != null) {
                this.f30120H.setTextColor(colorStateList);
            }
            c(this.f30120H, this.f30121I);
        } else {
            TextView textView5 = this.f30123K;
            if (textView5 != null || this.f30124L != null) {
                c(textView5, this.f30124L);
            }
        }
        if (fVar != null && !TextUtils.isEmpty(fVar.f30110c)) {
            setContentDescription(fVar.f30110c);
        }
        if (fVar != null) {
            TabLayout tabLayout2 = fVar.f30113f;
            if (tabLayout2 == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            if (tabLayout2.getSelectedTabPosition() == fVar.f30111d) {
                z7 = true;
            }
        }
        setSelected(z7);
    }

    public final void b(Context context) {
        GradientDrawable gradientDrawable;
        TabLayout tabLayout = this.f30127O;
        int i8 = tabLayout.f24173W;
        if (i8 != 0) {
            Drawable drawableH = r.h(context, i8);
            this.f30125M = drawableH;
            if (drawableH != null && drawableH.isStateful()) {
                this.f30125M.setState(getDrawableState());
            }
        } else {
            this.f30125M = null;
        }
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setColor(0);
        Drawable rippleDrawable = gradientDrawable2;
        if (tabLayout.f24168R != null) {
            GradientDrawable gradientDrawable3 = new GradientDrawable();
            gradientDrawable3.setCornerRadius(1.0E-5f);
            gradientDrawable3.setColor(-1);
            ColorStateList colorStateListA = a.a(tabLayout.f24168R);
            boolean z7 = tabLayout.f24185l0;
            if (z7) {
                gradientDrawable = gradientDrawable2;
                gradientDrawable = null;
            }
            rippleDrawable = new RippleDrawable(colorStateListA, gradientDrawable, z7 ? null : gradientDrawable3);
        }
        WeakHashMap weakHashMap = N.f4843a;
        setBackground(rippleDrawable);
        tabLayout.invalidate();
    }

    public final void c(TextView textView, ImageView imageView) {
        Drawable drawable;
        f fVar = this.f30119G;
        Drawable drawableMutate = (fVar == null || (drawable = fVar.f30108a) == null) ? null : c.q(drawable).mutate();
        f fVar2 = this.f30119G;
        CharSequence charSequence = fVar2 != null ? fVar2.f30109b : null;
        if (imageView != null) {
            if (drawableMutate != null) {
                imageView.setImageDrawable(drawableMutate);
                imageView.setVisibility(0);
                setVisibility(0);
            } else {
                imageView.setVisibility(8);
                imageView.setImageDrawable(null);
            }
        }
        boolean z7 = !TextUtils.isEmpty(charSequence);
        if (textView != null) {
            if (z7) {
                textView.setText(charSequence);
                textView.setVisibility(0);
                setVisibility(0);
            } else {
                textView.setVisibility(8);
                textView.setText((CharSequence) null);
            }
        }
        if (imageView != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) imageView.getLayoutParams();
            TabLayout tabLayout = this.f30127O;
            int iD = (z7 && imageView.getVisibility() == 0) ? tabLayout.d(8) : 0;
            if (tabLayout.f24183j0) {
                if (iD != marginLayoutParams.getMarginEnd()) {
                    marginLayoutParams.setMarginEnd(iD);
                    marginLayoutParams.bottomMargin = 0;
                    imageView.setLayoutParams(marginLayoutParams);
                    imageView.requestLayout();
                }
            } else if (iD != marginLayoutParams.bottomMargin) {
                marginLayoutParams.bottomMargin = iD;
                marginLayoutParams.setMarginEnd(0);
                imageView.setLayoutParams(marginLayoutParams);
                imageView.requestLayout();
            }
        }
        f fVar3 = this.f30119G;
        H.v(this, z7 ? null : fVar3 != null ? fVar3.f30110c : null);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f30125M;
        if (drawable != null && drawable.isStateful() && this.f30125M.setState(drawableState)) {
            invalidate();
            this.f30127O.invalidate();
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(b.class.getName());
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(b.class.getName());
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i8, int i9) {
        int size = View.MeasureSpec.getSize(i8);
        int mode = View.MeasureSpec.getMode(i8);
        TabLayout tabLayout = this.f30127O;
        int tabMaxWidth = tabLayout.getTabMaxWidth();
        if (tabMaxWidth > 0 && (mode == 0 || size > tabMaxWidth)) {
            i8 = View.MeasureSpec.makeMeasureSpec(tabLayout.f24174a0, Integer.MIN_VALUE);
        }
        super.onMeasure(i8, i9);
        if (this.f30120H != null) {
            float f8 = tabLayout.f24171U;
            int i10 = this.f30126N;
            ImageView imageView = this.f30121I;
            if (imageView == null || imageView.getVisibility() != 0) {
                TextView textView = this.f30120H;
                if (textView != null && textView.getLineCount() > 1) {
                    f8 = tabLayout.f24172V;
                }
            } else {
                i10 = 1;
            }
            float textSize = this.f30120H.getTextSize();
            int lineCount = this.f30120H.getLineCount();
            int maxLines = this.f30120H.getMaxLines();
            if (f8 != textSize || (maxLines >= 0 && i10 != maxLines)) {
                if (tabLayout.f24182i0 == 1 && f8 > textSize && lineCount == 1) {
                    Layout layout = this.f30120H.getLayout();
                    if (layout == null) {
                        return;
                    }
                    if ((f8 / layout.getPaint().getTextSize()) * layout.getLineWidth(0) > (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight()) {
                        return;
                    }
                }
                this.f30120H.setTextSize(0, f8);
                this.f30120H.setMaxLines(i10);
                super.onMeasure(i8, i9);
            }
        }
    }

    @Override // android.view.View
    public final boolean performClick() {
        boolean zPerformClick = super.performClick();
        if (this.f30119G == null) {
            return zPerformClick;
        }
        if (!zPerformClick) {
            playSoundEffect(0);
        }
        f fVar = this.f30119G;
        TabLayout tabLayout = fVar.f30113f;
        if (tabLayout == null) {
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }
        tabLayout.g(fVar, true);
        return true;
    }

    @Override // android.view.View
    public final void setSelected(boolean z7) {
        isSelected();
        super.setSelected(z7);
        TextView textView = this.f30120H;
        if (textView != null) {
            textView.setSelected(z7);
        }
        ImageView imageView = this.f30121I;
        if (imageView != null) {
            imageView.setSelected(z7);
        }
        View view = this.f30122J;
        if (view != null) {
            view.setSelected(z7);
        }
    }
}
