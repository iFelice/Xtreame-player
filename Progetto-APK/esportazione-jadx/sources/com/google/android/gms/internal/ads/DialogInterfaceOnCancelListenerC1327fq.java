package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import java.util.HashMap;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.fq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class DialogInterfaceOnCancelListenerC1327fq implements DialogInterface.OnCancelListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f18809G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ BinderC1431hq f18810H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ p105n3.k f18811I;

    public /* synthetic */ DialogInterfaceOnCancelListenerC1327fq(BinderC1431hq binderC1431hq, p105n3.k kVar, int i8) {
        this.f18809G = i8;
        this.f18810H = binderC1431hq;
        this.f18811I = kVar;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        int i8 = this.f18809G;
        p105n3.k kVar = this.f18811I;
        BinderC1431hq binderC1431hq = this.f18810H;
        switch (i8) {
            case 0:
                binderC1431hq.f19151K.k(binderC1431hq.f19152L);
                HashMap map = new HashMap();
                map.put("dialog_action", "dismiss");
                binderC1431hq.D3(binderC1431hq.f19152L, "rtsdc", map);
                if (kVar != null) {
                    kVar.zzb();
                }
                break;
            default:
                binderC1431hq.f19151K.k(binderC1431hq.f19152L);
                HashMap map2 = new HashMap();
                map2.put("dialog_action", "dismiss");
                binderC1431hq.D3(binderC1431hq.f19152L, "dialog_click", map2);
                if (kVar != null) {
                    kVar.zzb();
                }
                break;
        }
    }
}
