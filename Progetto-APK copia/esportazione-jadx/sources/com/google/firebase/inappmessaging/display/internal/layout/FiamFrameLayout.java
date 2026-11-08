package com.google.firebase.inappmessaging.display.internal.layout;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.internal.atv_ads_framework.x0;

/* JADX INFO: loaded from: classes.dex */
public class FiamFrameLayout extends FrameLayout {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public x0 f24222G;

    public FiamFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        Boolean boolK = this.f24222G.k(keyEvent);
        return boolK != null ? boolK.booleanValue() : super.dispatchKeyEvent(keyEvent);
    }

    public void setDismissListener(View.OnClickListener onClickListener) {
        this.f24222G = new x0(20, this, onClickListener);
    }
}
