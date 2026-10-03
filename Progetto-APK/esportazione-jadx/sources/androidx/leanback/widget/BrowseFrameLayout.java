package androidx.leanback.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes.dex */
public class BrowseFrameLayout extends FrameLayout {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public View.OnKeyListener f9094G;

    public BrowseFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean zDispatchKeyEvent = super.dispatchKeyEvent(keyEvent);
        View.OnKeyListener onKeyListener = this.f9094G;
        return (onKeyListener == null || zDispatchKeyEvent) ? zDispatchKeyEvent : onKeyListener.onKey(getRootView(), keyEvent.getKeyCode(), keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final View focusSearch(View view, int i8) {
        return super.focusSearch(view, i8);
    }

    public InterfaceC0481g getOnChildFocusListener() {
        return null;
    }

    public InterfaceC0482h getOnFocusSearchListener() {
        return null;
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i8, Rect rect) {
        return super.onRequestFocusInDescendants(i8, rect);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
    }

    public void setOnChildFocusListener(InterfaceC0481g interfaceC0481g) {
    }

    public void setOnDispatchKeyListener(View.OnKeyListener onKeyListener) {
        this.f9094G = onKeyListener;
    }

    public void setOnFocusSearchListener(InterfaceC0482h interfaceC0482h) {
    }
}
