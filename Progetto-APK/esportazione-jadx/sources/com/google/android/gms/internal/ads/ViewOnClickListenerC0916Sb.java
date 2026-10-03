package com.google.android.gms.internal.ads;

import android.view.View;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Sb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class ViewOnClickListenerC0916Sb implements View.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f16436G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f16437H;

    public /* synthetic */ ViewOnClickListenerC0916Sb(Object obj, int i8) {
        this.f16436G = i8;
        this.f16437H = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i8 = this.f16436G;
        Object obj = this.f16437H;
        switch (i8) {
            case 0:
                ((C0930Tb) obj).q(true);
                break;
            default:
                ((C1376gn) obj).f18986j.f25936b = true;
                break;
        }
    }
}
