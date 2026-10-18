package com.google.android.gms.common.api;

import K3.InterfaceC0232e;
import K3.InterfaceC0239l;
import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.internal.C0633i;

/* JADX INFO: loaded from: classes.dex */
public abstract class a extends d {
    public e buildClient(Context context, Looper looper, C0633i c0633i, Object obj, InterfaceC0232e interfaceC0232e, InterfaceC0239l interfaceC0239l) {
        throw new UnsupportedOperationException("buildClient must be implemented");
    }

    public abstract e buildClient(Context context, Looper looper, C0633i c0633i, Object obj, k kVar, l lVar);
}
