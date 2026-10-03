package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.DialogInterface;
import java.util.HashMap;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.dq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class DialogInterfaceOnClickListenerC1223dq implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f18361G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ BinderC1431hq f18362H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Activity f18363I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ p105n3.k f18364J;

    public /* synthetic */ DialogInterfaceOnClickListenerC1223dq(BinderC1431hq binderC1431hq, Activity activity, p105n3.k kVar, int i8) {
        this.f18361G = i8;
        this.f18362H = binderC1431hq;
        this.f18363I = activity;
        this.f18364J = kVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i8) {
        int i9 = this.f18361G;
        p105n3.k kVar = this.f18364J;
        Activity activity = this.f18363I;
        BinderC1431hq binderC1431hq = this.f18362H;
        switch (i9) {
            case 0:
                binderC1431hq.getClass();
                HashMap map = new HashMap();
                map.put("dialog_action", "confirm");
                binderC1431hq.D3(binderC1431hq.f19152L, "rtsdc", map);
                activity.startActivity(p083k3.l.f25980A.f25985e.R(activity));
                binderC1431hq.E3();
                if (kVar != null) {
                    kVar.zzb();
                }
                break;
            default:
                binderC1431hq.getClass();
                HashMap map2 = new HashMap();
                map2.put("dialog_action", "confirm");
                binderC1431hq.D3(binderC1431hq.f19152L, "dialog_click", map2);
                binderC1431hq.F3(activity, kVar);
                break;
        }
    }
}
