package com.google.android.gms.common.internal;

import android.app.Activity;
import android.content.Intent;

/* JADX INFO: renamed from: com.google.android.gms.common.internal.x, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0647x extends AbstractDialogInterfaceOnClickListenerC0649z {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ Intent f11904G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Activity f11905H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ int f11906I = 2;

    public C0647x(Activity activity, Intent intent) {
        this.f11904G = intent;
        this.f11905H = activity;
    }

    @Override // com.google.android.gms.common.internal.AbstractDialogInterfaceOnClickListenerC0649z
    public final void a() {
        Intent intent = this.f11904G;
        if (intent != null) {
            this.f11905H.startActivityForResult(intent, this.f11906I);
        }
    }
}
