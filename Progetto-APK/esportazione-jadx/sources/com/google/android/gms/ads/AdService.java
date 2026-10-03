package com.google.android.gms.ads;

import android.app.IntentService;
import android.content.Intent;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.BinderC1054ab;
import com.google.android.gms.internal.ads.InterfaceC1210dc;
import p090l3.C3077f;
import p090l3.C3093n;
import p090l3.C3097p;
import p120p3.h;

/* JADX INFO: loaded from: classes.dex */
public class AdService extends IntentService {
    public AdService() {
        super("AdService");
    }

    @Override // android.app.IntentService
    public final void onHandleIntent(Intent intent) {
        try {
            C3093n c3093n = C3097p.f26618f.f26620b;
            BinderC1054ab binderC1054ab = new BinderC1054ab();
            c3093n.getClass();
            ((InterfaceC1210dc) new C3077f(this, binderC1054ab).d(this, false)).V(intent);
        } catch (RemoteException e8) {
            h.d("RemoteException calling handleNotificationIntent: ".concat(e8.toString()));
        }
    }
}
