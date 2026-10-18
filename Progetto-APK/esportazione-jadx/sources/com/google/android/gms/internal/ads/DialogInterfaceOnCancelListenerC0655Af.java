package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Af, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class DialogInterfaceOnCancelListenerC0655Af implements DialogInterface.OnCancelListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f12017G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f12018H;

    public /* synthetic */ DialogInterfaceOnCancelListenerC0655Af(Object obj, int i8) {
        this.f12017G = i8;
        this.f12018H = obj;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        int i8 = this.f12017G;
        Object obj = this.f12018H;
        switch (i8) {
            case 0:
                ((JsResult) obj).cancel();
                break;
            case 1:
                ((JsPromptResult) obj).cancel();
                break;
            default:
                p105n3.k kVar = (p105n3.k) obj;
                if (kVar != null) {
                    kVar.zzb();
                }
                break;
        }
    }
}
