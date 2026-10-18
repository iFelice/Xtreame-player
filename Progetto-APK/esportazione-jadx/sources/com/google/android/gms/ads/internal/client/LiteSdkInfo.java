package com.google.android.gms.ads.internal.client;

import android.content.Context;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.BinderC1054ab;
import com.google.android.gms.internal.ads.InterfaceC1157cb;
import p090l3.AbstractBinderC3072c0;
import p090l3.L0;

/* JADX INFO: loaded from: classes.dex */
public class LiteSdkInfo extends AbstractBinderC3072c0 {
    public LiteSdkInfo(Context context) {
        super("com.google.android.gms.ads.internal.client.ILiteSdkInfo");
    }

    @Override // p090l3.InterfaceC3074d0
    public InterfaceC1157cb getAdapterCreator() {
        return new BinderC1054ab();
    }

    @Override // p090l3.InterfaceC3074d0
    public L0 getLiteSdkVersion() {
        return new L0(ModuleDescriptor.MODULE_VERSION, 243220000, "23.4.0");
    }
}
