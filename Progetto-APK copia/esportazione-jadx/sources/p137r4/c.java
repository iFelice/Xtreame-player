package p137r4;

import N.C;
import N.E;
import N.N;
import O.b;
import Z3.C0433o;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.accessibility.AccessibilityManager;
import android.widget.FrameLayout;
import java.util.WeakHashMap;
import p060h4.a;

/* JADX INFO: loaded from: classes.dex */
public abstract class c extends FrameLayout {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final AccessibilityManager f29850G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C0433o f29851H;

    public c(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.f25413f);
        if (typedArrayObtainStyledAttributes.hasValue(1)) {
            float dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
            WeakHashMap weakHashMap = N.f4843a;
            E.k(this, dimensionPixelSize);
        }
        typedArrayObtainStyledAttributes.recycle();
        AccessibilityManager accessibilityManager = (AccessibilityManager) context.getSystemService("accessibility");
        this.f29850G = accessibilityManager;
        C0433o c0433o = new C0433o(this, 10);
        this.f29851H = c0433o;
        accessibilityManager.addTouchExplorationStateChangeListener(new b(c0433o));
        setClickableOrFocusableBasedOnAccessibility(accessibilityManager.isTouchExplorationEnabled());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setClickableOrFocusableBasedOnAccessibility(boolean z7) {
        setClickable(!z7);
        setFocusable(z7);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        WeakHashMap weakHashMap = N.f4843a;
        C.c(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f29850G.removeTouchExplorationStateChangeListener(new b(this.f29851H));
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i8, int i9, int i10, int i11) {
        super.onLayout(z7, i8, i9, i10, i11);
    }

    public void setOnAttachStateChangeListener(a aVar) {
    }

    public void setOnLayoutChangeListener(b bVar) {
    }
}
