package com.google.android.gms.common.api;

import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public class h extends Exception {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Status f11763G;

    /* JADX WARN: Illegal instructions before constructor call */
    public h(Status status) {
        int i8 = status.f11756G;
        String str = status.f11757H;
        super(i8 + ": " + (str == null ? HttpUrl.FRAGMENT_ENCODE_SET : str));
        this.f11763G = status;
    }
}
