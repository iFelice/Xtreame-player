package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import java.util.ArrayList;
import p113o3.C3151i;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.kn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1582kn extends FrameLayout {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C3151i f19635G;

    public C1582kn(Context context, View view, C3151i c3151i) {
        super(context);
        setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(view);
        this.f19635G = c3151i;
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.f19635G.a(motionEvent);
        return false;
    }

    @Override // android.view.ViewGroup
    public final void removeAllViews() {
        ArrayList arrayList = new ArrayList();
        for (int i8 = 0; i8 < getChildCount(); i8++) {
            KeyEvent.Callback childAt = getChildAt(i8);
            if (childAt != null && (childAt instanceof InterfaceC0715Ef)) {
                arrayList.add((InterfaceC0715Ef) childAt);
            }
        }
        super.removeAllViews();
        int size = arrayList.size();
        for (int i9 = 0; i9 < size; i9++) {
            ((InterfaceC0715Ef) arrayList.get(i9)).destroy();
        }
    }
}
