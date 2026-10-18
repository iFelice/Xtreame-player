package com.google.android.gms.internal.ads;

import android.os.AsyncTask;
import java.util.ArrayDeque;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes.dex */
public abstract class Xx extends AsyncTask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public C2246xc f17551a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C0871Om f17552b;

    public Xx(C0871Om c0871Om) {
        this.f17552b = c0871Om;
    }

    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(String str) {
        C2246xc c2246xc = this.f17551a;
        if (c2246xc != null) {
            c2246xc.f21885K = null;
            Xx xx = (Xx) ((ArrayDeque) c2246xc.f21884J).poll();
            c2246xc.f21885K = xx;
            if (xx != null) {
                xx.executeOnExecutor((ThreadPoolExecutor) c2246xc.f21883I, new Object[0]);
            }
        }
    }
}
