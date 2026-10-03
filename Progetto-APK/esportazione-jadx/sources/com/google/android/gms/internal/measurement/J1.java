package com.google.android.gms.internal.measurement;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public final class J1 extends Exception {
    public J1(RemoteException remoteException) {
        super("ContentProvider query failed", remoteException);
    }
}
