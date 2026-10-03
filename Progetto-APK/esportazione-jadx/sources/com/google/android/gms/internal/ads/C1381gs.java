package com.google.android.gms.internal.ads;

import android.os.Message;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.gs, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1381gs {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Message f19016a;

    public final void a() {
        Message message = this.f19016a;
        message.getClass();
        message.sendToTarget();
        this.f19016a = null;
        C2054ts.d(this);
    }
}
