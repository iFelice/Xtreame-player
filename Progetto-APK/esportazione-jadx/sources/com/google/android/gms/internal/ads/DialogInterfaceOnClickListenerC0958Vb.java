package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Vb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class DialogInterfaceOnClickListenerC0958Vb implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f17067G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f17068H;

    public /* synthetic */ DialogInterfaceOnClickListenerC0958Vb(Object obj, int i8) {
        this.f17067G = i8;
        this.f17068H = obj;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i8) {
        int i9 = this.f17067G;
        Object obj = this.f17068H;
        switch (i9) {
            case 0:
                ((C0972Wb) obj).l("User canceled the download.");
                break;
            default:
                ((JsPromptResult) obj).cancel();
                break;
        }
    }
}
