package com.google.android.gms.internal.ads;

import android.hardware.display.DisplayManager;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.q, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1855q implements DisplayManager.DisplayListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DisplayManager f20518a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ U0.I f20519b;

    public C1855q(U0.I i8, DisplayManager displayManager) {
        this.f20519b = i8;
        this.f20518a = displayManager;
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayAdded(int i8) {
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayChanged(int i8) {
        if (i8 == 0) {
            U0.I.e(this.f20519b, this.f20518a.getDisplay(0));
        }
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayRemoved(int i8) {
    }
}
