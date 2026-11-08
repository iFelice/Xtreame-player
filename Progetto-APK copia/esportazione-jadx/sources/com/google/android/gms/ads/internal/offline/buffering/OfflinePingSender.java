package com.google.android.gms.ads.internal.offline.buffering;

import android.content.Context;
import android.os.RemoteException;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.google.android.gms.internal.ads.BinderC1054ab;
import com.google.android.gms.internal.ads.InterfaceC1210dc;
import p027d2.e;
import p027d2.i;
import p027d2.k;
import p027d2.l;
import p090l3.C3077f;
import p090l3.C3093n;
import p090l3.C3097p;

/* JADX INFO: loaded from: classes.dex */
public class OfflinePingSender extends Worker {

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final InterfaceC1210dc f11634L;

    public OfflinePingSender(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        C3093n c3093n = C3097p.f26618f.f26620b;
        BinderC1054ab binderC1054ab = new BinderC1054ab();
        c3093n.getClass();
        this.f11634L = (InterfaceC1210dc) new C3077f(context, binderC1054ab).d(context, false);
    }

    @Override // androidx.work.Worker
    public final l doWork() {
        try {
            this.f11634L.zzh();
            return new k(e.f24629c);
        } catch (RemoteException unused) {
            return new i();
        }
    }
}
