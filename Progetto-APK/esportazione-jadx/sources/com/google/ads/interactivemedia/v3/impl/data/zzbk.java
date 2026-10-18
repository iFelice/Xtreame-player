package com.google.ads.interactivemedia.v3.impl.data;

import A0.O;
import com.google.ads.interactivemedia.v3.internal.zzps;
import p000a.r;
import p148t.a;

/* JADX INFO: loaded from: classes.dex */
@zzps(zza = zzz.class)
public abstract class zzbk {
    public static zzbk create(int i8, int i9, String str, String str2, String str3) {
        return new zzz(i8, i9, str, str2, str3);
    }

    public abstract String alternateText();

    public abstract String creativeType();

    public String getAlternateText() {
        return alternateText();
    }

    public String getCreativeType() {
        return creativeType();
    }

    public int getHeight() {
        return height();
    }

    public String getResourceUri() {
        return imageUrl();
    }

    public int getWidth() {
        return width();
    }

    public abstract int height();

    public abstract String imageUrl();

    public final String toString() {
        int iWidth = width();
        int iHeight = height();
        String strImageUrl = imageUrl();
        String strAlternateText = alternateText();
        String strCreativeType = creativeType();
        StringBuilder sbD = O.D("IconClickFallbackImageMsgData [width=", iWidth, ", height=", iHeight, ", imageUrl=");
        a.h(sbD, strImageUrl, ", alternateText=", strAlternateText, ", creativeType=");
        return r.j(sbD, strCreativeType, "]");
    }

    public abstract int width();
}
