package com.google.firebase.inappmessaging.display.internal.layout;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import androidx.cardview.widget.CardView;
import com.google.android.gms.internal.atv_ads_framework.x0;

/* JADX INFO: loaded from: classes.dex */
public class FiamCardView extends CardView {

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public x0 f24221N;

    public FiamCardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        Boolean boolK = this.f24221N.k(keyEvent);
        return boolK != null ? boolK.booleanValue() : super.dispatchKeyEvent(keyEvent);
    }

    public void setDismissListener(View.OnClickListener onClickListener) {
        this.f24221N = new x0(20, this, onClickListener);
    }
}
