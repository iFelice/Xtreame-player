package com.google.ads.interactivemedia.v3.internal;

import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class zzek implements View.OnTouchListener {
    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() != 1) {
            return false;
        }
        zzqf.zzh(motionEvent);
        return false;
    }
}
