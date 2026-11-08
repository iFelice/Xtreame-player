package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsResult;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Bf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class DialogInterfaceOnClickListenerC0670Bf implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f12401G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ JsResult f12402H;

    public /* synthetic */ DialogInterfaceOnClickListenerC0670Bf(JsResult jsResult, int i8) {
        this.f12401G = i8;
        this.f12402H = jsResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i8) {
        int i9 = this.f12401G;
        JsResult jsResult = this.f12402H;
        switch (i9) {
            case 0:
                jsResult.cancel();
                break;
            default:
                jsResult.confirm();
                break;
        }
    }
}
