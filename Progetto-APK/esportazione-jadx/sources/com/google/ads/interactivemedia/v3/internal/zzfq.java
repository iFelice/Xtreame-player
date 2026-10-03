package com.google.ads.interactivemedia.v3.internal;

import com.google.ads.interactivemedia.v3.api.BaseDisplayContainer;

/* JADX INFO: loaded from: classes.dex */
public final class zzfq {
    public static boolean zza(BaseDisplayContainer baseDisplayContainer, com.google.ads.interactivemedia.v3.impl.data.zzce zzceVar) {
        int width = baseDisplayContainer.getAdContainer().getWidth();
        int height = baseDisplayContainer.getAdContainer().getHeight();
        if (zzceVar.x().intValue() < 0 || zzceVar.width().intValue() < 0) {
            return false;
        }
        if (zzceVar.width().intValue() + zzceVar.x().intValue() > width || zzceVar.y().intValue() < 0 || zzceVar.height().intValue() < 0) {
            return false;
        }
        return zzceVar.height().intValue() + zzceVar.y().intValue() <= height;
    }
}
