package org.videolan.libvlc.util;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes2.dex */
public class VLCVideoLayout extends FrameLayout {
    public VLCVideoLayout(Context context) {
        super(context);
        setupLayout(context);
    }

    private void setupLayout(Context context) {
        View.inflate(context, R.layout.vlc_video_layout, this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        setBackgroundResource(R.color.black);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.height = -1;
        layoutParams.width = -1;
        setLayoutParams(layoutParams);
    }

    public VLCVideoLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setupLayout(context);
    }

    public VLCVideoLayout(Context context, AttributeSet attributeSet, int i8) {
        super(context, attributeSet, i8);
        setupLayout(context);
    }

    public VLCVideoLayout(Context context, AttributeSet attributeSet, int i8, int i9) {
        super(context, attributeSet, i8, i9);
        setupLayout(context);
    }
}
