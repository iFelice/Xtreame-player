package com.google.ads.interactivemedia.v3.impl.data;

import com.google.ads.interactivemedia.v3.internal.zzps;

/* JADX INFO: loaded from: classes.dex */
@zzps(zza = zzan.class)
public abstract class zzce {
    public static zzce create(Integer num, Integer num2, Integer num3, Integer num4) {
        return new zzan(num, num2, num3, num4);
    }

    public abstract Integer height();

    public final String toString() {
        return "ResizeAndPositionVideoMsgData [x=" + x() + ", y=" + y() + ", width=" + width() + ", height=" + height() + "]";
    }

    public abstract Integer width();

    public abstract Integer x();

    public abstract Integer y();
}
