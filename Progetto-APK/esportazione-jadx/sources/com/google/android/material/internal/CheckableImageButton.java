package com.google.android.material.internal;

import N.N;
import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Checkable;
import p003a2.e;
import p086l.C;

/* JADX INFO: loaded from: classes.dex */
public class CheckableImageButton extends C implements Checkable {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final int[] f24138K = {R.attr.state_checked};

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public boolean f24139J;

    public CheckableImageButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, pe.hf.black20.R.attr.imageButtonStyle);
        N.m(this, new e(this, 1));
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.f24139J;
    }

    @Override // android.widget.ImageView, android.view.View
    public final int[] onCreateDrawableState(int i8) {
        return this.f24139J ? View.mergeDrawableStates(super.onCreateDrawableState(i8 + 1), f24138K) : super.onCreateDrawableState(i8);
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z7) {
        if (this.f24139J != z7) {
            this.f24139J = z7;
            refreshDrawableState();
            sendAccessibilityEvent(2048);
        }
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        setChecked(!this.f24139J);
    }
}
