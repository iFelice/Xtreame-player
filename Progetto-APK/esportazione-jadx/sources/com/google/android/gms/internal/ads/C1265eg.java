package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.MutableContextWrapper;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.eg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1265eg extends MutableContextWrapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Activity f18540a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Context f18541b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Context f18542c;

    @Override // android.content.ContextWrapper, android.content.Context
    public final Object getSystemService(String str) {
        return this.f18542c.getSystemService(str);
    }

    @Override // android.content.MutableContextWrapper
    public final void setBaseContext(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f18541b = applicationContext;
        this.f18540a = context instanceof Activity ? (Activity) context : null;
        this.f18542c = context;
        super.setBaseContext(applicationContext);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void startActivity(Intent intent) {
        Activity activity = this.f18540a;
        if (activity != null) {
            activity.startActivity(intent);
        } else {
            intent.setFlags(268435456);
            this.f18541b.startActivity(intent);
        }
    }
}
