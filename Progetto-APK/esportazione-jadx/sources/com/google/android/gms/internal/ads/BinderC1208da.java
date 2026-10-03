package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.da, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC1208da extends AbstractBinderC2328z5 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ C2040te f18336G;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BinderC1208da(C2040te c2040te) {
        super("com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheCallback");
        this.f18336G = c2040te;
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        if (i8 != 1) {
            return false;
        }
        ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) A5.a(parcel, ParcelFileDescriptor.CREATOR);
        A5.b(parcel);
        this.f18336G.b(parcelFileDescriptor);
        return true;
    }
}
