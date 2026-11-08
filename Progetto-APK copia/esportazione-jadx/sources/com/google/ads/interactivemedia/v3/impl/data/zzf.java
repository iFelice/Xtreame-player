package com.google.ads.interactivemedia.v3.impl.data;

import com.google.ads.interactivemedia.v3.api.UiElement;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzf {
    public abstract zzg build();

    public abstract zzf setBitrate(int i8);

    public abstract zzf setDisableUi(boolean z7);

    public abstract zzf setEnableFocusSkipButton(boolean z7);

    public abstract zzf setEnablePreloading(boolean z7);

    public abstract zzf setLoadVideoTimeout(int i8);

    public abstract zzf setMimeTypes(List<String> list);

    public abstract zzf setPlayAdsAfterTime(double d6);

    public abstract zzf setUiElements(Set<UiElement> set);
}
